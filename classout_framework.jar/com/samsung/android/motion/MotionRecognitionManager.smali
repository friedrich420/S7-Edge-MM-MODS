.class public Lcom/samsung/android/motion/MotionRecognitionManager;
.super Ljava/lang/Object;
.source "MotionRecognitionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    }
.end annotation


# static fields
.field public static final ACTION_MOTION_RECOGNITION_EVENT:Ljava/lang/String; = "com.samsung.android.motion.MOTION_RECOGNITION_EVENT"

.field private static final DEBUG_LEVEL_HIGH:I = 0x4948

.field private static final DEBUG_LEVEL_LOW:I = 0x4f4c

.field private static final DEBUG_LEVEL_MID:I = 0x494d

.field public static final EVENT_ALL:I = 0x1fffff

.field public static final EVENT_CALL_POSE:I = 0x40000

.field public static final EVENT_DIRECT_CALLING:I = 0x400

.field public static final EVENT_DOUBLE_TAP:I = 0x8

.field public static final EVENT_FLAT:I = 0x2000

.field public static final EVENT_LCD_UP_STEADY:I = 0x10000

.field public static final EVENT_LOCK_EXECUTE_L:I = 0x80

.field public static final EVENT_LOCK_EXECUTE_R:I = 0x100

.field public static final EVENT_NUM:I = 0x15

.field public static final EVENT_OVER_TURN:I = 0x1

.field public static final EVENT_OVER_TURN_LOW_POWER:I = 0x20000

.field public static final EVENT_PALM_SWIPE:I = 0x400000

.field public static final EVENT_PALM_TOUCH:I = 0x200000

.field public static final EVENT_PANNING_GALLERY:I = 0x20

.field public static final EVENT_PANNING_HOME:I = 0x40

.field public static final EVENT_REACTIVE_ALERT:I = 0x4

.field public static final EVENT_SHAKE:I = 0x2

.field public static final EVENT_SMART_ALERT_SETTING:I = 0x8000

.field public static final EVENT_SMART_RELAY:I = 0x100000

.field public static final EVENT_SMART_SCROLL:I = 0x80000

.field public static final EVENT_TILT:I = 0x10

.field public static final EVENT_TILT_LEVEL_ZERO:I = 0x1000

.field public static final EVENT_TILT_LEVEL_ZERO_LAND:I = 0x4000

.field public static final EVENT_TILT_TO_UNLOCK:I = 0x800

.field public static final EVENT_VOLUME_DOWN:I = 0x200

.field public static final MOTION_SENSOR_NUM:I = 0x4

.field public static final MOTION_USE_ACC:I = 0x1

.field public static final MOTION_USE_ALL:I = 0xf

.field public static final MOTION_USE_ALWAYS:I = 0x40000000

.field public static final MOTION_USE_GYRO:I = 0x2

.field public static final MOTION_USE_LIGHT:I = 0x8

.field public static final MOTION_USE_PROX:I = 0x4

.field protected static final TAG:Ljava/lang/String; = "MotionRecognitionManager"

.field private static final localLOGV:Z = false

.field private static final mMotionVersion:I = 0x1


# instance fields
.field private mMainLooper:Landroid/os/Looper;

.field private mMovementCnt:I

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mSContextService:Landroid/hardware/scontext/ISContextService;

.field private mSSPEnabled:Z

.field private motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

.field private final mySContextMotionListener:Landroid/hardware/scontext/SContextListener;

.field private final sListenerDelegates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final sListenerwithSSP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 8
    .param p1, "mainLooper"    # Landroid/os/Looper;

    .prologue
    const/4 v5, 0x0

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, sListenerDelegates:Ljava/util/ArrayList;

    .line 235
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, sListenerwithSSP:Ljava/util/ArrayList;

    .line 702
    new-instance v2, Lcom/samsung/android/motion/MotionRecognitionManager$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/motion/MotionRecognitionManager$1;-><init>(Lcom/samsung/android/motion/MotionRecognitionManager;)V

    iput-object v2, p0, mySContextMotionListener:Landroid/hardware/scontext/SContextListener;

    .line 251
    const-string/jumbo v2, "scontext"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/scontext/ISContextService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/scontext/ISContextService;

    move-result-object v2

    iput-object v2, p0, mSContextService:Landroid/hardware/scontext/ISContextService;

    .line 254
    const-string v2, "MotionRecognitionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mSContextService = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iput-object p1, p0, mMainLooper:Landroid/os/Looper;

    .line 256
    new-instance v2, Landroid/hardware/scontext/SContextManager;

    iget-object v3, p0, mMainLooper:Landroid/os/Looper;

    invoke-direct {v2, v3}, Landroid/hardware/scontext/SContextManager;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 257
    iput v5, p0, mMovementCnt:I

    .line 258
    iget-object v2, p0, mSContextService:Landroid/hardware/scontext/ISContextService;

    if-eqz v2, :cond_e4

    .line 260
    :try_start_52
    iget-object v2, p0, mSContextService:Landroid/hardware/scontext/ISContextService;

    invoke-interface {v2}, Landroid/hardware/scontext/ISContextService;->getMotionRecognitionService()Landroid/os/IBinder;

    move-result-object v1

    .line 261
    .local v1, "service":Landroid/os/IBinder;
    invoke-static {v1}, Lcom/samsung/android/motion/IMotionRecognitionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/motion/IMotionRecognitionService;

    move-result-object v2

    iput-object v2, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_5e} :catch_a3
    .catchall {:try_start_52 .. :try_end_5e} :catchall_c7

    .line 265
    const-string v2, "MotionRecognitionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "motionService = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .end local v1    # "service":Landroid/os/IBinder;
    :goto_79
    const-string v2, "MotionRecognitionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "motionService = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iput v5, p0, mMovementCnt:I

    .line 275
    :try_start_96
    iget-object v2, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    if-eqz v2, :cond_a2

    .line 276
    iget-object v2, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    invoke-interface {v2}, Lcom/samsung/android/motion/IMotionRecognitionService;->getSSPstatus()Z

    move-result v2

    iput-boolean v2, p0, mSSPEnabled:Z
    :try_end_a2
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_a2} :catch_f2

    .line 280
    :cond_a2
    :goto_a2
    return-void

    .line 262
    :catch_a3
    move-exception v0

    .line 263
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_a4
    const-string v2, "MotionRecognitionManager"

    const-string v3, "RemoteException in motionService: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ab
    .catchall {:try_start_a4 .. :try_end_ab} :catchall_c7

    .line 265
    const-string v2, "MotionRecognitionManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "motionService = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_c7
    move-exception v2

    const-string v3, "MotionRecognitionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "motionService = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v2

    .line 268
    :cond_e4
    const-string/jumbo v2, "motion_recognition"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/motion/IMotionRecognitionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/motion/IMotionRecognitionService;

    move-result-object v2

    iput-object v2, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    goto :goto_79

    .line 277
    :catch_f2
    move-exception v0

    .line 278
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v2, "MotionRecognitionManager"

    const-string v3, "RemoteException in getSSPstatus: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a2
.end method

.method private static EncodeLog(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 677
    const-string/jumbo v3, "ro.debug_level"

    const-string v4, "Unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 678
    .local v2, "state":Ljava/lang/String;
    const/4 v0, -0x1

    .line 680
    .local v0, "debugLevel":I
    const-string v3, "Unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 681
    const-string p0, " "

    .line 695
    .end local p0    # "path":Ljava/lang/String;
    :cond_14
    :goto_14
    return-object p0

    .line 685
    .restart local p0    # "path":Ljava/lang/String;
    :cond_15
    const/4 v3, 0x2

    :try_start_16
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_1f} :catch_27

    move-result v0

    .line 690
    const/16 v3, 0x4f4c

    if-ne v0, v3, :cond_2b

    .line 691
    const-string p0, " "

    goto :goto_14

    .line 686
    :catch_27
    move-exception v1

    .line 687
    .local v1, "ne":Ljava/lang/NumberFormatException;
    const-string p0, " "

    goto :goto_14

    .line 692
    .end local v1    # "ne":Ljava/lang/NumberFormatException;
    :cond_2b
    const/16 v3, 0x494d

    if-eq v0, v3, :cond_14

    const/16 v3, 0x4948

    if-eq v0, v3, :cond_14

    .line 695
    const-string p0, " "

    goto :goto_14
.end method

.method static synthetic access$000(Lcom/samsung/android/motion/MotionRecognitionManager;)Lcom/samsung/android/motion/IMotionRecognitionService;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/motion/MotionRecognitionManager;

    .prologue
    .line 96
    iget-object v0, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/motion/MotionRecognitionManager;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/motion/MotionRecognitionManager;

    .prologue
    .line 96
    iget-object v0, p0, sListenerDelegates:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/motion/MotionRecognitionManager;)Landroid/os/Looper;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/motion/MotionRecognitionManager;

    .prologue
    .line 96
    iget-object v0, p0, mMainLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public static getMotionVersion()I
    .registers 1

    .prologue
    .line 669
    const/4 v0, 0x1

    return v0
.end method

.method public static isValidMotionSensor(I)Z
    .registers 3
    .param p0, "motion_sensor"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 654
    if-eq p0, v0, :cond_d

    const/4 v1, 0x2

    if-eq p0, v1, :cond_d

    const/4 v1, 0x4

    if-eq p0, v1, :cond_d

    const/16 v1, 0x8

    if-ne p0, v1, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public isAvailable(I)Z
    .registers 7
    .param p1, "type"    # I

    .prologue
    .line 741
    const/4 v1, 0x0

    .line 742
    .local v1, "ret":Z
    iget-object v3, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    if-nez v3, :cond_7

    move v2, v1

    .line 760
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_6
    return v2

    .line 744
    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :cond_7
    sparse-switch p1, :sswitch_data_1e

    .line 757
    const/4 v1, 0x0

    :goto_b
    move v2, v1

    .line 760
    .restart local v2    # "ret":I
    goto :goto_6

    .line 751
    .end local v2    # "ret":I
    :sswitch_d
    :try_start_d
    iget-object v3, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    invoke-interface {v3, p1}, Lcom/samsung/android/motion/IMotionRecognitionService;->isAvailable(I)Z
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_14

    move-result v1

    goto :goto_b

    .line 752
    :catch_14
    move-exception v0

    .line 753
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MotionRecognitionManager"

    const-string v4, "RemoteException in getSSPstatus: "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 744
    nop

    :sswitch_data_1e
    .sparse-switch
        0x1 -> :sswitch_d
        0x4 -> :sswitch_d
        0x400 -> :sswitch_d
        0x200000 -> :sswitch_d
        0x400000 -> :sswitch_d
    .end sparse-switch
.end method

.method public registerListener(Lcom/samsung/android/motion/MRListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 291
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, registerListener(Lcom/samsung/android/motion/MRListener;ILandroid/os/Handler;)V

    .line 292
    return-void
.end method

.method public registerListener(Lcom/samsung/android/motion/MRListener;I)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;
    .param p2, "motion_sensors"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, registerListener(Lcom/samsung/android/motion/MRListener;ILandroid/os/Handler;)V

    .line 314
    return-void
.end method

.method public registerListener(Lcom/samsung/android/motion/MRListener;ILandroid/os/Handler;)V
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;
    .param p2, "motion_sensors"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, "motion_events":I
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_9

    .line 326
    const v1, 0x3a002

    or-int/2addr v0, v1

    .line 328
    :cond_9
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_f

    .line 329
    or-int/lit16 v0, v0, 0x51f9

    .line 332
    :cond_f
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_15

    .line 333
    or-int/lit16 v0, v0, 0xc00

    .line 335
    :cond_15
    invoke-virtual {p0, p1, v0, p3}, registerListenerEvent(Lcom/samsung/android/motion/MRListener;ILandroid/os/Handler;)V

    .line 336
    return-void
.end method

.method public registerListener(Lcom/samsung/android/motion/MRListener;Landroid/os/Handler;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, registerListener(Lcom/samsung/android/motion/MRListener;ILandroid/os/Handler;)V

    .line 303
    return-void
.end method

.method public registerListenerEvent(Lcom/samsung/android/motion/MRListener;I)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;
    .param p2, "motion_events"    # I

    .prologue
    .line 348
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, registerListenerEvent(Lcom/samsung/android/motion/MRListener;ILandroid/os/Handler;)V

    .line 349
    return-void
.end method

.method public registerListenerEvent(Lcom/samsung/android/motion/MRListener;IILandroid/os/Handler;)V
    .registers 19
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;
    .param p2, "motion_sensors"    # I
    .param p3, "motion_events"    # I
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 369
    if-eqz p1, :cond_9e

    iget-object v10, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    if-eqz v10, :cond_9e

    .line 370
    iget-object v11, p0, sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v11

    .line 371
    const/4 v6, 0x0

    .line 372
    .local v6, "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    :try_start_a
    iget-object v10, p0, sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 373
    .local v8, "size":I
    const/4 v2, 0x0

    .line 374
    .local v2, "bregisterd":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_12
    if-ge v4, v8, :cond_9b

    .line 375
    iget-object v10, p0, sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 376
    .local v5, "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v5}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/motion/MRListener;

    move-result-object v10

    if-ne v10, p1, :cond_6b

    .line 377
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "name :"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 378
    .local v9, "strlistener":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->getMotionEvents()I

    move-result v10

    and-int v10, v10, p3

    if-eqz v10, :cond_6e

    .line 379
    const-string v10, "MotionRecognitionManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  .registerListenerEvent : fail. already registered / listener count = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const/4 v2, 0x1

    .line 374
    .end local v9    # "strlistener":Ljava/lang/String;
    :cond_6b
    :goto_6b
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 382
    .restart local v9    # "strlistener":Ljava/lang/String;
    :cond_6e
    move-object v6, v5

    .line 383
    const-string v10, "MotionRecognitionManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  .registerListenerEvent : already registered but need to update motion events / listener count = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6b

    .line 433
    .end local v2    # "bregisterd":Z
    .end local v4    # "i":I
    .end local v5    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v8    # "size":I
    .end local v9    # "strlistener":Ljava/lang/String;
    :catchall_98
    move-exception v10

    :goto_99
    monitor-exit v11
    :try_end_9a
    .catchall {:try_start_a .. :try_end_9a} :catchall_98

    throw v10

    .line 387
    .restart local v2    # "bregisterd":Z
    .restart local v4    # "i":I
    .restart local v8    # "size":I
    :cond_9b
    if-eqz v2, :cond_9f

    :try_start_9d
    monitor-exit v11

    .line 435
    .end local v2    # "bregisterd":Z
    .end local v4    # "i":I
    .end local v6    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v8    # "size":I
    :cond_9e
    :goto_9e
    return-void

    .line 388
    .restart local v2    # "bregisterd":Z
    .restart local v4    # "i":I
    .restart local v6    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v8    # "size":I
    :cond_9f
    if-eqz v6, :cond_ab

    .line 389
    invoke-virtual {v6}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->getMotionEvents()I

    move-result v10

    or-int p3, p3, v10

    .line 390
    const/4 v6, 0x0

    .line 391
    invoke-virtual {p0, p1}, unregisterListener(Lcom/samsung/android/motion/MRListener;)V
    :try_end_ab
    .catchall {:try_start_9d .. :try_end_ab} :catchall_98

    :cond_ab
    move-object v7, v6

    .line 394
    .end local v6    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .local v7, "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    if-nez v7, :cond_18a

    .line 395
    :try_start_ae
    new-instance v6, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;

    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-direct {v6, p0, p1, v0, v1}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;-><init>(Lcom/samsung/android/motion/MotionRecognitionManager;Lcom/samsung/android/motion/MRListener;ILandroid/os/Handler;)V
    :try_end_b7
    .catchall {:try_start_ae .. :try_end_b7} :catchall_186

    .line 398
    .end local v7    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v6    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    :goto_b7
    :try_start_b7
    iget-object v10, p0, sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_bc
    .catchall {:try_start_b7 .. :try_end_bc} :catchall_98

    .line 400
    and-int/lit8 v10, p3, 0x4

    if-eqz v10, :cond_e4

    .line 401
    :try_start_c0
    iget-boolean v10, p0, mSSPEnabled:Z

    const/4 v12, 0x1

    if-ne v10, v12, :cond_159

    .line 402
    iget-object v10, p0, mySContextMotionListener:Landroid/hardware/scontext/SContextListener;

    if-eqz v10, :cond_148

    iget v10, p0, mMovementCnt:I

    if-nez v10, :cond_148

    .line 403
    const-string v10, "MotionRecognitionManager"

    const-string v12, " [MOVEMENT_SERVICE] registerListener "

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v10, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v12, p0, mySContextMotionListener:Landroid/hardware/scontext/SContextListener;

    const/4 v13, 0x5

    invoke-virtual {v10, v12, v13}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    .line 408
    :goto_dc
    iget v10, p0, mMovementCnt:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, mMovementCnt:I

    .line 409
    and-int/lit8 p3, p3, -0x5

    .line 421
    :cond_e4
    :goto_e4
    if-eqz p3, :cond_ef

    .line 422
    iget-object v10, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v10, v6, v0, v1}, Lcom/samsung/android/motion/IMotionRecognitionService;->registerCallback(Landroid/os/IBinder;II)V
    :try_end_ef
    .catch Landroid/os/RemoteException; {:try_start_c0 .. :try_end_ef} :catch_150
    .catchall {:try_start_c0 .. :try_end_ef} :catchall_98

    .line 430
    :cond_ef
    :goto_ef
    :try_start_ef
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "name :"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 431
    .restart local v9    # "strlistener":Ljava/lang/String;
    const-string v10, "MotionRecognitionManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  .registerListenerEvent : success. listener count = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "->"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", motion_events="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    monitor-exit v11
    :try_end_146
    .catchall {:try_start_ef .. :try_end_146} :catchall_98

    goto/16 :goto_9e

    .line 406
    .end local v9    # "strlistener":Ljava/lang/String;
    :cond_148
    :try_start_148
    const-string v10, "MotionRecognitionManager"

    const-string v12, " [MOVEMENT_SERVICE] registerListener : fail. already registered "

    invoke-static {v10, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14f
    .catch Landroid/os/RemoteException; {:try_start_148 .. :try_end_14f} :catch_150
    .catchall {:try_start_148 .. :try_end_14f} :catchall_98

    goto :goto_dc

    .line 424
    :catch_150
    move-exception v3

    .line 425
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_151
    const-string v10, "MotionRecognitionManager"

    const-string v12, "RemoteException in registerListenerEvent : "

    invoke-static {v10, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_158
    .catchall {:try_start_151 .. :try_end_158} :catchall_98

    goto :goto_ef

    .line 413
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_159
    :try_start_159
    iget-object v10, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    invoke-interface {v10}, Lcom/samsung/android/motion/IMotionRecognitionService;->getSSPstatus()Z

    move-result v10

    iput-boolean v10, p0, mSSPEnabled:Z
    :try_end_161
    .catch Landroid/os/RemoteException; {:try_start_159 .. :try_end_161} :catch_17d
    .catchall {:try_start_159 .. :try_end_161} :catchall_98

    .line 417
    :goto_161
    :try_start_161
    const-string v10, "MotionRecognitionManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SSP disabled : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, mSSPEnabled:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e4

    .line 414
    :catch_17d
    move-exception v3

    .line 415
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v10, "MotionRecognitionManager"

    const-string v12, "RemoteException in getSSPstatus: "

    invoke-static {v10, v12, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_185
    .catch Landroid/os/RemoteException; {:try_start_161 .. :try_end_185} :catch_150
    .catchall {:try_start_161 .. :try_end_185} :catchall_98

    goto :goto_161

    .line 433
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local v6    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v7    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    :catchall_186
    move-exception v10

    move-object v6, v7

    .end local v7    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v6    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    goto/16 :goto_99

    .end local v6    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v7    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_18a
    move-object v6, v7

    .end local v7    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v6    # "mrlistener":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    goto/16 :goto_b7
.end method

.method public registerListenerEvent(Lcom/samsung/android/motion/MRListener;ILandroid/os/Handler;)V
    .registers 5
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;
    .param p2, "motion_events"    # I
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 449
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, registerListenerEvent(Lcom/samsung/android/motion/MRListener;IILandroid/os/Handler;)V

    .line 451
    return-void
.end method

.method public resetMotionEngine()I
    .registers 4

    .prologue
    .line 642
    iget-object v1, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    if-nez v1, :cond_6

    .line 643
    const/4 v1, -0x1

    .line 649
    :goto_5
    return v1

    .line 645
    :cond_6
    :try_start_6
    iget-object v1, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    invoke-interface {v1}, Lcom/samsung/android/motion/IMotionRecognitionService;->resetMotionEngine()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 646
    :catch_d
    move-exception v0

    .line 647
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MotionRecognitionManager"

    const-string v2, "RemoteException in resetMotionEngine: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 649
    const/4 v1, 0x0

    goto :goto_5
.end method

.method public setMotionAngle(Lcom/samsung/android/motion/MRListener;I)V
    .registers 3
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;
    .param p2, "status"    # I

    .prologue
    .line 569
    return-void
.end method

.method public setMotionTiltLevel(IIIIII)V
    .registers 15
    .param p1, "stopUp"    # I
    .param p2, "level1Up"    # I
    .param p3, "level2Up"    # I
    .param p4, "stopDown"    # I
    .param p5, "level1Down"    # I
    .param p6, "level2Down"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 625
    iget-object v0, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    if-nez v0, :cond_5

    .line 633
    :goto_4
    return-void

    .line 628
    :cond_5
    :try_start_5
    iget-object v0, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/motion/IMotionRecognitionService;->setMotionTiltLevel(IIIIII)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_10} :catch_18

    .line 632
    :goto_10
    const-string v0, "MotionRecognitionManager"

    const-string v1, "  .setMotionTiltLevel : 1"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 629
    :catch_18
    move-exception v7

    .line 630
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "MotionRecognitionManager"

    const-string v1, "RemoteException in setMotionTiltLevel: "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_10
.end method

.method public setSmartMotionAngle(Lcom/samsung/android/motion/MRListener;I)V
    .registers 10
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;
    .param p2, "status"    # I

    .prologue
    .line 599
    iget-object v4, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    if-nez v4, :cond_5

    .line 616
    :goto_4
    return-void

    .line 601
    :cond_5
    iget-object v5, p0, sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v5

    .line 602
    :try_start_8
    iget-object v4, p0, sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 603
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    if-ge v1, v3, :cond_35

    .line 604
    iget-object v4, p0, sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 605
    .local v2, "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/motion/MRListener;
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_26

    move-result-object v4

    if-ne v4, p1, :cond_32

    .line 607
    :try_start_1f
    iget-object v4, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    invoke-interface {v4, v2, p2}, Lcom/samsung/android/motion/IMotionRecognitionService;->setMotionAngle(Landroid/os/IBinder;I)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_29
    .catchall {:try_start_1f .. :try_end_24} :catchall_26

    .line 611
    :goto_24
    :try_start_24
    monitor-exit v5

    goto :goto_4

    .line 615
    .end local v1    # "i":I
    .end local v2    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v3    # "size":I
    :catchall_26
    move-exception v4

    monitor-exit v5
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_26

    throw v4

    .line 608
    .restart local v1    # "i":I
    .restart local v2    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v3    # "size":I
    :catch_29
    move-exception v0

    .line 609
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2a
    const-string v4, "MotionRecognitionManager"

    const-string v6, "RemoteException in setSmartMotionAngle: "

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 603
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 614
    .end local v2    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_35
    const-string v4, "MotionRecognitionManager"

    const-string v6, "  .setSmartMotionAngle : listener has to be registered first"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    monitor-exit v5
    :try_end_3d
    .catchall {:try_start_2a .. :try_end_3d} :catchall_26

    goto :goto_4
.end method

.method public setTestSensor()Z
    .registers 5

    .prologue
    .line 765
    const/4 v1, 0x0

    .line 768
    .local v1, "ret":Z
    :try_start_1
    iget-object v2, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    invoke-interface {v2}, Lcom/samsung/android/motion/IMotionRecognitionService;->setTestSensor()Z
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_6} :catch_8

    move-result v1

    .line 774
    :goto_7
    return v1

    .line 769
    :catch_8
    move-exception v0

    .line 770
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MotionRecognitionManager"

    const-string v3, "RemoteException in setTestSensor"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    const/4 v1, 0x0

    goto :goto_7
.end method

.method public unregisterListener(Lcom/samsung/android/motion/MRListener;)V
    .registers 13
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;

    .prologue
    .line 502
    iget-object v7, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    if-nez v7, :cond_5

    .line 554
    :goto_4
    return-void

    .line 504
    :cond_5
    iget-object v8, p0, sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v8

    .line 505
    :try_start_8
    iget-object v7, p0, sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 507
    .local v5, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v5, :cond_4a

    .line 508
    iget-object v7, p0, sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 509
    .local v3, "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/motion/MRListener;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 510
    .local v4, "listener_name":Ljava/lang/String;
    const-string v7, "MotionRecognitionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "@ member "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 513
    .end local v3    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v4    # "listener_name":Ljava/lang/String;
    :cond_4a
    const/4 v2, 0x0

    :goto_4b
    if-ge v2, v5, :cond_b4

    .line 514
    iget-object v7, p0, sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 515
    .restart local v3    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v3}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/motion/MRListener;

    move-result-object v7

    if-ne v7, p1, :cond_141

    .line 516
    iget-object v7, p0, sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_60
    .catchall {:try_start_8 .. :try_end_60} :catchall_101

    .line 517
    const/4 v0, 0x0

    .line 519
    .local v0, "bdisable":Z
    :try_start_61
    invoke-virtual {v3}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->getMotionEvents()I

    move-result v7

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_a5

    .line 520
    iget-boolean v7, p0, mSSPEnabled:Z

    const/4 v9, 0x1

    if-ne v7, v9, :cond_104

    .line 521
    iget v7, p0, mMovementCnt:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, mMovementCnt:I

    .line 522
    iget v7, p0, mMovementCnt:I

    if-gtz v7, :cond_8a

    .line 523
    const-string v7, "MotionRecognitionManager"

    const-string v9, " [MOVEMENT_SERVICE] unregisterListener "

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v7, 0x0

    iput v7, p0, mMovementCnt:I

    .line 525
    iget-object v7, p0, mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v9, p0, mySContextMotionListener:Landroid/hardware/scontext/SContextListener;

    const/4 v10, 0x5

    invoke-virtual {v7, v9, v10}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    .line 527
    :cond_8a
    const-string v7, "MotionRecognitionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unregisterListener - mMovementCnt : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, mMovementCnt:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_a5
    :goto_a5
    invoke-virtual {v3}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->getMotionEvents()I

    move-result v7

    and-int/lit8 v7, v7, -0x5

    if-eqz v7, :cond_b4

    if-nez v0, :cond_b4

    .line 540
    iget-object v7, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    invoke-interface {v7, v3}, Lcom/samsung/android/motion/IMotionRecognitionService;->unregisterCallback(Landroid/os/IBinder;)V
    :try_end_b4
    .catch Landroid/os/RemoteException; {:try_start_61 .. :try_end_b4} :catch_137
    .catchall {:try_start_61 .. :try_end_b4} :catchall_101

    .line 550
    .end local v0    # "bdisable":Z
    .end local v3    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    :cond_b4
    :goto_b4
    :try_start_b4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "name :"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 551
    .local v6, "strlistener":Ljava/lang/String;
    const-string v7, "MotionRecognitionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "  .unregisterListener : / listener count = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    monitor-exit v8

    goto/16 :goto_4

    .end local v2    # "i":I
    .end local v5    # "size":I
    .end local v6    # "strlistener":Ljava/lang/String;
    :catchall_101
    move-exception v7

    monitor-exit v8
    :try_end_103
    .catchall {:try_start_b4 .. :try_end_103} :catchall_101

    throw v7

    .line 530
    .restart local v0    # "bdisable":Z
    .restart local v2    # "i":I
    .restart local v3    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v5    # "size":I
    :cond_104
    :try_start_104
    iget-object v7, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    invoke-interface {v7}, Lcom/samsung/android/motion/IMotionRecognitionService;->getSSPstatus()Z

    move-result v7

    iput-boolean v7, p0, mSSPEnabled:Z
    :try_end_10c
    .catch Landroid/os/RemoteException; {:try_start_104 .. :try_end_10c} :catch_12e
    .catchall {:try_start_104 .. :try_end_10c} :catchall_101

    .line 534
    :goto_10c
    :try_start_10c
    const-string v7, "MotionRecognitionManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SSP disabled : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, mSSPEnabled:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    iget-object v7, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    invoke-interface {v7, v3}, Lcom/samsung/android/motion/IMotionRecognitionService;->unregisterCallback(Landroid/os/IBinder;)V

    .line 536
    const/4 v0, 0x1

    goto/16 :goto_a5

    .line 531
    :catch_12e
    move-exception v1

    .line 532
    .local v1, "e":Landroid/os/RemoteException;
    const-string v7, "MotionRecognitionManager"

    const-string v9, "RemoteException in getSSPstatus: "

    invoke-static {v7, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_136
    .catch Landroid/os/RemoteException; {:try_start_10c .. :try_end_136} :catch_137
    .catchall {:try_start_10c .. :try_end_136} :catchall_101

    goto :goto_10c

    .line 542
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_137
    move-exception v1

    .line 543
    .restart local v1    # "e":Landroid/os/RemoteException;
    :try_start_138
    const-string v7, "MotionRecognitionManager"

    const-string v9, "RemoteException in unregisterListener: "

    invoke-static {v7, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13f
    .catchall {:try_start_138 .. :try_end_13f} :catchall_101

    goto/16 :goto_b4

    .line 513
    .end local v0    # "bdisable":Z
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_141
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4b
.end method

.method public unregisterListener(Lcom/samsung/android/motion/MRListener;I)V
    .registers 12
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;
    .param p2, "motion_events"    # I

    .prologue
    .line 467
    iget-object v5, p0, motionService:Lcom/samsung/android/motion/IMotionRecognitionService;

    if-nez v5, :cond_5

    .line 489
    :goto_4
    return-void

    .line 470
    :cond_5
    iget-object v6, p0, sListenerDelegates:Ljava/util/ArrayList;

    monitor-enter v6

    .line 471
    :try_start_8
    iget-object v5, p0, sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 472
    .local v3, "size":I
    const/4 v2, 0x0

    .line 473
    .local v2, "motionevents":I
    const/4 v1, 0x0

    .line 474
    .local v1, "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    if-ge v0, v3, :cond_6e

    .line 475
    iget-object v5, p0, sListenerDelegates:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    check-cast v1, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;

    .line 476
    .restart local v1    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->getListener()Lcom/samsung/android/motion/MRListener;

    move-result-object v5

    if-ne v5, p1, :cond_7b

    .line 477
    invoke-virtual {v1}, Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;->getMotionEvents()I

    move-result v5

    xor-int/lit8 v7, p2, -0x1

    and-int v2, v5, v7

    .line 478
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "name :"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 479
    .local v4, "strlistener":Ljava/lang/String;
    const-string v5, "MotionRecognitionManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update listener "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",  motionevents = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    .end local v4    # "strlistener":Ljava/lang/String;
    :cond_6e
    invoke-virtual {p0, p1}, unregisterListener(Lcom/samsung/android/motion/MRListener;)V

    .line 485
    if-eqz v2, :cond_76

    .line 486
    invoke-virtual {p0, p1, v2}, registerListenerEvent(Lcom/samsung/android/motion/MRListener;I)V

    .line 488
    :cond_76
    monitor-exit v6

    goto :goto_4

    .end local v0    # "i":I
    .end local v1    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .end local v2    # "motionevents":I
    .end local v3    # "size":I
    :catchall_78
    move-exception v5

    monitor-exit v6
    :try_end_7a
    .catchall {:try_start_8 .. :try_end_7a} :catchall_78

    throw v5

    .line 474
    .restart local v0    # "i":I
    .restart local v1    # "l":Lcom/samsung/android/motion/MotionRecognitionManager$MRListenerDelegate;
    .restart local v2    # "motionevents":I
    .restart local v3    # "size":I
    :cond_7b
    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method public useMotionAlways(Lcom/samsung/android/motion/MRListener;Z)V
    .registers 3
    .param p1, "listener"    # Lcom/samsung/android/motion/MRListener;
    .param p2, "bUseAlways"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 560
    return-void
.end method
