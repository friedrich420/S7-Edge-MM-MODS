.class public Lcom/samsung/android/smartface/SmartFaceManager;
.super Ljava/lang/Object;
.source "SmartFaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener2;,
        Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;,
        Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;,
        Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;
    }
.end annotation


# static fields
.field public static final FALSE:Ljava/lang/String; = "false"

.field public static final FEATURE_SMART_PAUSE:Ljava/lang/String; = "com.sec.android.smartface.smart_pause"

.field public static final FEATURE_SMART_ROTATION:Ljava/lang/String; = "com.sec.android.smartface.smart_rotation"

.field public static final FEATURE_SMART_SCROLL:Ljava/lang/String; = "com.sec.android.smartface.smart_scroll"

.field public static final FEATURE_SMART_STAY:Ljava/lang/String; = "com.sec.android.smartface.smart_stay"

.field public static final MSG_FACEINFO:I = 0x0

.field public static final MSG_REGISTERED:I = 0x1

.field public static final MSG_UNREGISTERED:I = 0x2

.field private static final NULL_VALUE:Ljava/lang/String; = ""

.field public static final PAGE_BOTTOM:Ljava/lang/String; = "1"

.field public static final PAGE_MIDDLE:Ljava/lang/String; = "0"

.field public static final PAGE_TOP:Ljava/lang/String; = "-1"

.field public static final PAUSE_THIS_CLIENT:Ljava/lang/String; = "paused-state"

.field public static final SERVICETYPE_HYBRID:I = 0x20

.field public static final SERVICETYPE_MOTION:I = 0x10

.field public static final SERVICETYPE_PAUSE:I = 0x2

.field public static final SERVICETYPE_ROTATION:I = 0x8

.field public static final SERVICETYPE_SCROLL:I = 0x1

.field public static final SERVICETYPE_STAY:I = 0x4

.field public static final SMARTFACE_SERVICE:Ljava/lang/String; = "samsung.smartfaceservice"

.field public static final SMART_ROTATION_UI_ORIENTATION:Ljava/lang/String; = "smart-rotation-ui-orientation"

.field public static final SMART_SCREEN_DUMP_PREVIEW:Ljava/lang/String; = "smart-screen-dump"

.field public static final SMART_SCROLL_PAGE_STATUS:Ljava/lang/String; = "smart-scroll-page-status"

.field public static final SMART_STAY_FRAMECOUNT_RESET:Ljava/lang/String; = "smart-stay-framecount-reset"

.field private static final TAG:Ljava/lang/String; = "SmartFaceManager"

.field public static final TRUE:Ljava/lang/String; = "true"


# instance fields
.field private final complete:Ljava/util/concurrent/locks/Condition;

.field private final lock:Ljava/util/concurrent/locks/Lock;

.field private mCallbackData:I

.field private mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

.field private mContext:Landroid/content/Context;

.field private mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

.field private mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

.field private mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

.field private mService:Lcom/samsung/android/smartface/ISmartFaceService;

.field private mSmartStayDelay:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput-object v2, p0, mService:Lcom/samsung/android/smartface/ISmartFaceService;

    .line 151
    iput-object v2, p0, mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    .line 152
    iput-object v2, p0, mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    .line 153
    iput-object v2, p0, mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    .line 154
    iput-object v2, p0, mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    .line 155
    iput-object v2, p0, mContext:Landroid/content/Context;

    .line 157
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, lock:Ljava/util/concurrent/locks/Lock;

    .line 158
    iget-object v1, p0, lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, p0, complete:Ljava/util/concurrent/locks/Condition;

    .line 161
    const-string v1, "2950"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, mSmartStayDelay:I

    .line 247
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 248
    new-instance v1, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-direct {v1, p0}, Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;)V

    iput-object v1, p0, mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    .line 251
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_3e

    .line 252
    new-instance v1, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;Lcom/samsung/android/smartface/SmartFaceManager;Landroid/os/Looper;)V

    iput-object v1, p0, mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    .line 258
    :goto_3d
    return-void

    .line 253
    :cond_3e
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 254
    new-instance v1, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;Lcom/samsung/android/smartface/SmartFaceManager;Landroid/os/Looper;)V

    iput-object v1, p0, mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    goto :goto_3d

    .line 256
    :cond_4c
    iput-object v2, p0, mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    goto :goto_3d
.end method

.method static synthetic access$000(Lcom/samsung/android/smartface/SmartFaceManager;)Ljava/util/concurrent/locks/Lock;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/smartface/SmartFaceManager;

    .prologue
    .line 26
    iget-object v0, p0, lock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/smartface/SmartFaceManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/smartface/SmartFaceManager;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, mCallbackData:I

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/smartface/SmartFaceManager;)Ljava/util/concurrent/locks/Condition;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/smartface/SmartFaceManager;

    .prologue
    .line 26
    iget-object v0, p0, complete:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/smartface/SmartFaceManager;

    .prologue
    .line 26
    iget-object v0, p0, mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/smartface/SmartFaceManager;

    .prologue
    .line 26
    iget-object v0, p0, mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/smartface/SmartFaceManager;)Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/smartface/SmartFaceManager;

    .prologue
    .line 26
    iget-object v0, p0, mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    return-object v0
.end method

.method private declared-synchronized ensureServiceConnected()Z
    .registers 6

    .prologue
    .line 191
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, mService:Lcom/samsung/android/smartface/ISmartFaceService;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2a

    if-eqz v1, :cond_10

    .line 195
    :try_start_5
    iget-object v1, p0, mService:Lcom/samsung/android/smartface/ISmartFaceService;

    iget-object v2, p0, mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    const-string v3, "empty key for ping"

    const-string v4, "empty value"

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/smartface/ISmartFaceService;->setValue(Lcom/samsung/android/smartface/ISmartFaceClient;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_21
    .catchall {:try_start_5 .. :try_end_10} :catchall_2a

    .line 203
    :cond_10
    :goto_10
    :try_start_10
    iget-object v1, p0, mService:Lcom/samsung/android/smartface/ISmartFaceService;

    if-nez v1, :cond_1a

    .line 204
    invoke-direct {p0}, startSmartFaceService()V

    .line 205
    invoke-direct {p0}, waitForService()V

    .line 210
    :cond_1a
    iget-object v1, p0, mService:Lcom/samsung/android/smartface/ISmartFaceService;
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_2a

    if-eqz v1, :cond_2d

    const/4 v1, 0x1

    :goto_1f
    monitor-exit p0

    return v1

    .line 196
    :catch_21
    move-exception v0

    .line 197
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_22
    instance-of v1, v0, Landroid/os/DeadObjectException;

    if-eqz v1, :cond_10

    .line 198
    const/4 v1, 0x0

    iput-object v1, p0, mService:Lcom/samsung/android/smartface/ISmartFaceService;
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_2a

    goto :goto_10

    .line 191
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_2a
    move-exception v1

    monitor-exit p0

    throw v1

    .line 210
    :cond_2d
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method public static getSmartFaceManager()Lcom/samsung/android/smartface/SmartFaceManager;
    .registers 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSmartFaceManager(Landroid/content/Context;)Lcom/samsung/android/smartface/SmartFaceManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 184
    new-instance v0, Lcom/samsung/android/smartface/SmartFaceManager;

    invoke-direct {v0, p0}, <init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private startSmartFaceService()V
    .registers 5

    .prologue
    .line 236
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 237
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.smartface"

    const-string v3, "com.samsung.android.smartface.SmartFaceServiceStarter"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 238
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 239
    return-void
.end method

.method private waitForCallback(I)J
    .registers 10
    .param p1, "wait_milli"    # I

    .prologue
    .line 577
    const-wide/16 v0, -0x1

    .line 580
    .local v0, "ret":J
    :try_start_2
    iget-object v2, p0, complete:Ljava/util/concurrent/locks/Condition;

    mul-int/lit16 v3, p1, 0x3e8

    int-to-long v4, v3

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-interface {v2, v4, v5}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1b

    const-string v2, "SmartFaceManager"

    const-string v3, "No Callback!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1b} :catch_1c

    .line 586
    :cond_1b
    :goto_1b
    return-wide v0

    .line 582
    :catch_1c
    move-exception v2

    goto :goto_1b
.end method

.method private waitForService()V
    .registers 5

    .prologue
    .line 218
    const/4 v0, 0x1

    .local v0, "count":I
    :goto_1
    const/4 v1, 0x3

    if-gt v0, v1, :cond_1c

    .line 219
    const-string/jumbo v1, "samsung.smartfaceservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/smartface/ISmartFaceService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartface/ISmartFaceService;

    move-result-object v1

    iput-object v1, p0, mService:Lcom/samsung/android/smartface/ISmartFaceService;

    .line 221
    iget-object v1, p0, mService:Lcom/samsung/android/smartface/ISmartFaceService;

    if-eqz v1, :cond_1d

    .line 222
    const-string v1, "SmartFaceManager"

    const-string v2, "Service connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_1c
    return-void

    .line 226
    :cond_1d
    const-wide/16 v2, 0x12c

    :try_start_1f
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 227
    const-string v1, "SmartFaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wait for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit16 v3, v0, 0x12c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_43} :catch_46

    .line 218
    :goto_43
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 228
    :catch_46
    move-exception v1

    goto :goto_43
.end method


# virtual methods
.method public declared-synchronized checkForSmartRotation(I)Z
    .registers 8
    .param p1, "orientation"    # I

    .prologue
    .line 456
    monitor-enter p0

    :try_start_1
    const-string v3, "SmartFaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkForSmartRotation S: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v1, 0x0

    .line 459
    .local v1, "ret":Z
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "Smart Rotation Wait Thread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 460
    .local v2, "thread1":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 462
    new-instance v3, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, p0, v4}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;Lcom/samsung/android/smartface/SmartFaceManager;Landroid/os/Looper;)V

    iput-object v3, p0, mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    .line 464
    iget-object v0, p0, mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    .line 466
    .local v0, "listener":Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    new-instance v3, Lcom/samsung/android/smartface/SmartFaceManager$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/smartface/SmartFaceManager$2;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;)V

    invoke-virtual {p0, v3}, setListener(Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;)V

    .line 482
    iget-object v3, p0, lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_98

    .line 486
    :try_start_3e
    const-string/jumbo v3, "smart-rotation-ui-orientation"

    invoke-virtual {p0, v3, p1}, setValue(Ljava/lang/String;I)V

    .line 487
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, start(I)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 489
    const/4 v3, -0x1

    iput v3, p0, mCallbackData:I

    .line 490
    const/16 v3, 0x1f4

    invoke-direct {p0, v3}, waitForCallback(I)J

    .line 491
    iget v3, p0, mCallbackData:I

    if-lez v3, :cond_59

    const/4 v1, 0x1

    .line 494
    :cond_59
    const/4 v3, -0x1

    iput v3, p0, mCallbackData:I

    .line 495
    const/16 v3, 0x1f4

    invoke-direct {p0, v3}, waitForCallback(I)J

    .line 496
    iget v3, p0, mCallbackData:I
    :try_end_63
    .catchall {:try_start_3e .. :try_end_63} :catchall_91

    if-lez v3, :cond_66

    const/4 v1, 0x1

    .line 501
    :cond_66
    :try_start_66
    iget-object v3, p0, lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 504
    invoke-virtual {p0}, stop()V

    .line 506
    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 507
    const/4 v3, 0x0

    iput-object v3, p0, mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    .line 508
    invoke-virtual {p0, v0}, setListener(Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;)V

    .line 510
    const-string v3, "SmartFaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkForSmartRotation E: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8f
    .catchall {:try_start_66 .. :try_end_8f} :catchall_98

    .line 511
    monitor-exit p0

    return v1

    .line 501
    :catchall_91
    move-exception v3

    :try_start_92
    iget-object v4, p0, lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
    :try_end_98
    .catchall {:try_start_92 .. :try_end_98} :catchall_98

    .line 456
    .end local v0    # "listener":Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    .end local v1    # "ret":Z
    .end local v2    # "thread1":Landroid/os/HandlerThread;
    :catchall_98
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized checkForSmartStay()Z
    .registers 7

    .prologue
    .line 389
    monitor-enter p0

    :try_start_1
    const-string v3, "SmartFaceManager"

    const-string v4, "checkForSmartStay S"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v1, 0x0

    .line 392
    .local v1, "ret":Z
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "Smart Stay Wait Thread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 393
    .local v2, "thread1":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 395
    new-instance v3, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, p0, v4}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;Lcom/samsung/android/smartface/SmartFaceManager;Landroid/os/Looper;)V

    iput-object v3, p0, mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    .line 397
    iget-object v0, p0, mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    .line 399
    .local v0, "listener":Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    new-instance v3, Lcom/samsung/android/smartface/SmartFaceManager$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/smartface/SmartFaceManager$1;-><init>(Lcom/samsung/android/smartface/SmartFaceManager;)V

    invoke-virtual {p0, v3}, setListener(Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;)V

    .line 415
    iget-object v3, p0, lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_94

    .line 419
    :try_start_2d
    const-string/jumbo v3, "smart-stay-framecount-reset"

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, start(I)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 422
    const/4 v3, -0x1

    iput v3, p0, mCallbackData:I

    .line 423
    const v3, 0x3edc28f6    # 0.43f

    iget v4, p0, mSmartStayDelay:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {p0, v3}, waitForCallback(I)J

    .line 424
    iget v3, p0, mCallbackData:I

    if-lez v3, :cond_4f

    const/4 v1, 0x1

    .line 427
    :cond_4f
    const/4 v3, -0x1

    iput v3, p0, mCallbackData:I

    .line 428
    const v3, 0x3ebd70a4    # 0.37f

    iget v4, p0, mSmartStayDelay:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {p0, v3}, waitForCallback(I)J

    .line 429
    iget v3, p0, mCallbackData:I
    :try_end_5f
    .catchall {:try_start_2d .. :try_end_5f} :catchall_8d

    if-lez v3, :cond_62

    const/4 v1, 0x1

    .line 434
    :cond_62
    :try_start_62
    iget-object v3, p0, lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 437
    invoke-virtual {p0}, stop()V

    .line 439
    invoke-virtual {v2}, Landroid/os/HandlerThread;->quit()Z

    .line 440
    const/4 v3, 0x0

    iput-object v3, p0, mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    .line 441
    invoke-virtual {p0, v0}, setListener(Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;)V

    .line 443
    const-string v3, "SmartFaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkForSmartStay X: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8b
    .catchall {:try_start_62 .. :try_end_8b} :catchall_94

    .line 444
    monitor-exit p0

    return v1

    .line 434
    :catchall_8d
    move-exception v3

    :try_start_8e
    iget-object v4, p0, lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3
    :try_end_94
    .catchall {:try_start_8e .. :try_end_94} :catchall_94

    .line 389
    .end local v0    # "listener":Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;
    .end local v1    # "ret":Z
    .end local v2    # "thread1":Landroid/os/HandlerThread;
    :catchall_94
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getSupportedServices()I
    .registers 4

    .prologue
    .line 521
    invoke-direct {p0}, ensureServiceConnected()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v1, 0x0

    .line 531
    :goto_7
    return v1

    .line 523
    :cond_8
    const/4 v1, 0x0

    .line 525
    .local v1, "ret":I
    :try_start_9
    iget-object v2, p0, mService:Lcom/samsung/android/smartface/ISmartFaceService;

    invoke-interface {v2}, Lcom/samsung/android/smartface/ISmartFaceService;->getSupportedServices()I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_10

    move-result v1

    goto :goto_7

    .line 526
    :catch_10
    move-exception v0

    .line 527
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 528
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public pause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 343
    const-string/jumbo v0, "paused-state"

    const-string/jumbo v1, "true"

    invoke-virtual {p0, v0, v1}, setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    if-eqz v0, :cond_13

    iget-object v0, p0, mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 345
    :cond_13
    iget-object v0, p0, mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    if-eqz v0, :cond_1c

    iget-object v0, p0, mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 346
    :cond_1c
    return-void
.end method

.method public resume()V
    .registers 3

    .prologue
    .line 353
    const-string/jumbo v0, "paused-state"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public setListener(Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    .prologue
    .line 543
    iput-object p1, p0, mListener:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    .line 544
    return-void
.end method

.method public setValue(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 361
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, setValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 369
    invoke-direct {p0}, ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_7

    .line 378
    :goto_6
    return-void

    .line 371
    :cond_7
    const-string v1, "SmartFaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :try_start_2f
    iget-object v1, p0, mService:Lcom/samsung/android/smartface/ISmartFaceService;

    iget-object v2, p0, mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/smartface/ISmartFaceService;->setValue(Lcom/samsung/android/smartface/ISmartFaceClient;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_36} :catch_37

    goto :goto_6

    .line 375
    :catch_37
    move-exception v0

    .line 376
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6
.end method

.method public start(I)Z
    .registers 6
    .param p1, "service_type"    # I

    .prologue
    .line 272
    invoke-direct {p0}, ensureServiceConnected()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v1, 0x0

    .line 281
    :goto_7
    return v1

    .line 274
    :cond_8
    const/4 v1, 0x0

    .line 276
    .local v1, "ret":Z
    :try_start_9
    iget-object v2, p0, mService:Lcom/samsung/android/smartface/ISmartFaceService;

    iget-object v3, p0, mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/smartface/ISmartFaceService;->register(Lcom/samsung/android/smartface/ISmartFaceClient;I)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_12

    move-result v1

    goto :goto_7

    .line 277
    :catch_12
    move-exception v0

    .line 278
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7
.end method

.method public startAsync(I)V
    .registers 5
    .param p1, "service_type"    # I

    .prologue
    .line 293
    invoke-direct {p0}, ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_7

    .line 300
    :goto_6
    return-void

    .line 296
    :cond_7
    :try_start_7
    iget-object v1, p0, mService:Lcom/samsung/android/smartface/ISmartFaceService;

    iget-object v2, p0, mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/smartface/ISmartFaceService;->registerAsync(Lcom/samsung/android/smartface/ISmartFaceClient;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_e} :catch_f

    goto :goto_6

    .line 297
    :catch_f
    move-exception v0

    .line 298
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_6
.end method

.method public stop()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 308
    invoke-direct {p0}, ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_8

    .line 318
    :cond_7
    :goto_7
    return-void

    .line 311
    :cond_8
    :try_start_8
    iget-object v1, p0, mService:Lcom/samsung/android/smartface/ISmartFaceService;

    iget-object v2, p0, mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v1, v2}, Lcom/samsung/android/smartface/ISmartFaceService;->unregister(Lcom/samsung/android/smartface/ISmartFaceClient;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_22

    .line 316
    :goto_f
    iget-object v1, p0, mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    if-eqz v1, :cond_18

    iget-object v1, p0, mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-virtual {v1, v3}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 317
    :cond_18
    iget-object v1, p0, mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    if-eqz v1, :cond_7

    iget-object v1, p0, mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-virtual {v1, v3}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_7

    .line 312
    :catch_22
    move-exception v0

    .line 313
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_f
.end method

.method public stopAsync()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 326
    invoke-direct {p0}, ensureServiceConnected()Z

    move-result v1

    if-nez v1, :cond_8

    .line 336
    :cond_7
    :goto_7
    return-void

    .line 329
    :cond_8
    :try_start_8
    iget-object v1, p0, mService:Lcom/samsung/android/smartface/ISmartFaceService;

    iget-object v2, p0, mClient:Lcom/samsung/android/smartface/SmartFaceManager$SmartFaceClient;

    invoke-interface {v1, v2}, Lcom/samsung/android/smartface/ISmartFaceService;->unregisterAsync(Lcom/samsung/android/smartface/ISmartFaceClient;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_22

    .line 334
    :goto_f
    iget-object v1, p0, mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    if-eqz v1, :cond_18

    iget-object v1, p0, mEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-virtual {v1, v3}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 335
    :cond_18
    iget-object v1, p0, mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    if-eqz v1, :cond_7

    iget-object v1, p0, mInternalEventHandler:Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;

    invoke-virtual {v1, v3}, Lcom/samsung/android/smartface/SmartFaceManager$EventHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_7

    .line 330
    :catch_22
    move-exception v0

    .line 331
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_f
.end method
