.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IntLibTypeProvider;
.source "PhoneStateMonitorRunner.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/ICoverStatusChangeObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;
    }
.end annotation


# static fields
.field private static final COVER_CLOSE:I = 0x0

.field private static final COVER_OPEN:I = 0x1

.field private static final COVER_TYPE_FLIP:I = 0x1

.field private static final COVER_TYPE_NONE:I = 0x0

.field private static final COVER_TYPE_VIEW:I = 0x2

.field private static final GET_PHONE_STATE_ACTION:Ljava/lang/String; = "com.samsung.android.contextaware.GET_PHONE_STATE"

.field private static final LOG_FILE:Ljava/lang/String; = "/data/log/CAE/phone_state.txt"

.field private static final LOG_FILE_DIR:Ljava/lang/String; = "/data/log/CAE"

.field private static final MSG_COVER_STATE:I = 0xfeed

.field private static final MSG_TIMER_EXPIRED:I = 0xfeef

.field private static final TURN_OVER_LIGHTING_DISABLED:I = 0x0

.field private static final TURN_OVER_LIGHTING_ENABLED:I = 0x1

.field private static final WAIT_RESPONSE_TIME:J = 0xc8L


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mLooper:Landroid/os/Looper;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .registers 6
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 168
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IntLibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 604
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$2;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;)V

    iput-object v0, p0, mReceiver:Landroid/content/BroadcastReceiver;

    .line 170
    iput-object p2, p0, mContext:Landroid/content/Context;

    .line 171
    iput-object p3, p0, mLooper:Landroid/os/Looper;

    .line 173
    invoke-direct {p0}, createHandler()V

    .line 174
    return-void
.end method

.method static synthetic access$101(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;

    .prologue
    .line 59
    invoke-super {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->isDisable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$201(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;

    .prologue
    .line 59
    invoke-super {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->isDisable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;

    .prologue
    .line 59
    invoke-virtual {p0}, getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;

    .prologue
    .line 59
    invoke-virtual {p0}, getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;

    .prologue
    .line 59
    invoke-virtual {p0}, getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;

    .prologue
    .line 59
    invoke-virtual {p0}, getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;)Lcom/samsung/android/contextaware/manager/ContextBean;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;

    .prologue
    .line 59
    invoke-virtual {p0}, getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;

    .prologue
    .line 59
    invoke-direct {p0}, getState()V

    return-void
.end method

.method private createHandler()V
    .registers 3

    .prologue
    .line 577
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$1;

    iget-object v1, p0, mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$1;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 602
    return-void
.end method

.method private getDate(J)Ljava/lang/String;
    .registers 6
    .param p1, "time"    # J

    .prologue
    .line 361
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 362
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getState()V
    .registers 8

    .prologue
    const v6, 0xfeef

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 479
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IntLibTypeProvider;->isDisable()Z

    move-result v3

    if-nez v3, :cond_45

    .line 481
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 482
    .local v0, "packet":[B
    aput-byte v2, v0, v2

    .line 483
    aput-byte v5, v0, v1

    .line 484
    const/4 v3, 0x2

    iget-object v4, p0, mLooper:Landroid/os/Looper;

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->getInstance(Landroid/os/Looper;)Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->getCoverState()Z

    move-result v4

    if-ne v4, v1, :cond_46

    :goto_20
    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 485
    iget-object v1, p0, mLooper:Landroid/os/Looper;

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->getInstance(Landroid/os/Looper;)Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->getCoverType()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    .line 487
    const/16 v1, -0x48

    invoke-virtual {p0}, getInstLibType()B

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, sendCmdToSensorHub(BB[B)V

    .line 491
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 493
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 496
    .end local v0    # "packet":[B
    :cond_45
    return-void

    .restart local v0    # "packet":[B
    :cond_46
    move v1, v2

    .line 484
    goto :goto_20
.end method

.method private isTurnOverLighting()I
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 562
    const/4 v0, 0x0

    .line 565
    .local v0, "enable":Z
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "turn_over_lighting"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_16

    move v0, v1

    .line 568
    :goto_13
    if-ne v0, v1, :cond_18

    .line 572
    :goto_15
    return v1

    :cond_16
    move v0, v2

    .line 565
    goto :goto_13

    :cond_18
    move v1, v2

    .line 572
    goto :goto_15
.end method

.method private recordPhoneDrop()V
    .registers 11

    .prologue
    .line 332
    new-instance v4, Ljava/io/File;

    const-string v6, "/data/log/CAE"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 333
    .local v4, "folder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_10

    .line 334
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 337
    :cond_10
    new-instance v3, Ljava/io/File;

    const-string v6, "/data/log/CAE/phone_state.txt"

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 338
    .local v3, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 340
    .local v1, "fOutStream":Ljava/io/FileOutputStream;
    :try_start_18
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v6, 0x1

    invoke-direct {v2, v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1e} :catch_4f
    .catchall {:try_start_18 .. :try_end_1e} :catchall_62

    .line 341
    .end local v1    # "fOutStream":Ljava/io/FileOutputStream;
    .local v2, "fOutStream":Ljava/io/FileOutputStream;
    if-eqz v2, :cond_42

    .line 342
    :try_start_20
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, getDate(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - PHONE DROP DETECTED\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 343
    .local v5, "out":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_42} :catch_71
    .catchall {:try_start_20 .. :try_end_42} :catchall_6e

    .line 349
    .end local v5    # "out":Ljava/lang/String;
    :cond_42
    if-eqz v2, :cond_74

    .line 351
    :try_start_44
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_49

    move-object v1, v2

    .line 357
    .end local v2    # "fOutStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fOutStream":Ljava/io/FileOutputStream;
    :cond_48
    :goto_48
    return-void

    .line 352
    .end local v1    # "fOutStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fOutStream":Ljava/io/FileOutputStream;
    :catch_49
    move-exception v0

    .line 353
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 354
    .end local v2    # "fOutStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fOutStream":Ljava/io/FileOutputStream;
    goto :goto_48

    .line 346
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4f
    move-exception v0

    .line 347
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_50
    :try_start_50
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_50 .. :try_end_57} :catchall_62

    .line 349
    if-eqz v1, :cond_48

    .line 351
    :try_start_59
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_48

    .line 352
    :catch_5d
    move-exception v0

    .line 353
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_48

    .line 349
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_62
    move-exception v6

    :goto_63
    if-eqz v1, :cond_68

    .line 351
    :try_start_65
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    .line 354
    :cond_68
    :goto_68
    throw v6

    .line 352
    :catch_69
    move-exception v0

    .line 353
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_68

    .line 349
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fOutStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fOutStream":Ljava/io/FileOutputStream;
    :catchall_6e
    move-exception v6

    move-object v1, v2

    .end local v2    # "fOutStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fOutStream":Ljava/io/FileOutputStream;
    goto :goto_63

    .line 346
    .end local v1    # "fOutStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fOutStream":Ljava/io/FileOutputStream;
    :catch_71
    move-exception v0

    move-object v1, v2

    .end local v2    # "fOutStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fOutStream":Ljava/io/FileOutputStream;
    goto :goto_50

    .end local v1    # "fOutStream":Ljava/io/FileOutputStream;
    .restart local v2    # "fOutStream":Ljava/io/FileOutputStream;
    :cond_74
    move-object v1, v2

    .end local v2    # "fOutStream":Ljava/io/FileOutputStream;
    .restart local v1    # "fOutStream":Ljava/io/FileOutputStream;
    goto :goto_48
.end method


# virtual methods
.method public final clear()V
    .registers 1

    .prologue
    .line 373
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 377
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IntLibTypeProvider;->clear()V

    .line 378
    return-void
.end method

.method public final disable()V
    .registers 2

    .prologue
    .line 507
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 511
    iget-object v0, p0, mLooper:Landroid/os/Looper;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->getInstance(Landroid/os/Looper;)Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->unregisterObserver(Lcom/samsung/android/contextaware/utilbundle/ICoverStatusChangeObserver;)V

    .line 513
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IntLibTypeProvider;->disable()V

    .line 514
    return-void
.end method

.method public final enable()V
    .registers 3

    .prologue
    .line 466
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 469
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.contextaware.GET_PHONE_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 472
    .local v0, "phoneState":Landroid/content/IntentFilter;
    iget-object v1, p0, mLooper:Landroid/os/Looper;

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->getInstance(Landroid/os/Looper;)Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->registerObserver(Lcom/samsung/android/contextaware/utilbundle/ICoverStatusChangeObserver;)V

    .line 474
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IntLibTypeProvider;->enable()V

    .line 475
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 184
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PHONE_STATE_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .registers 4

    .prologue
    .line 209
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "movement"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "lcddirect"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "embower"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "finalLcdOff"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "lcdOffInference"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "lcdOffRecommend"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "timestamp"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 388
    const/4 v3, 0x5

    new-array v0, v3, [B

    .line 390
    .local v0, "packet":[B
    aput-byte v2, v0, v2

    .line 391
    aput-byte v1, v0, v1

    .line 392
    const/4 v3, 0x2

    invoke-direct {p0}, isTurnOverLighting()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 393
    const/4 v3, 0x3

    iget-object v4, p0, mLooper:Landroid/os/Looper;

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->getInstance(Landroid/os/Looper;)Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->getCoverType()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 394
    const/4 v3, 0x4

    iget-object v4, p0, mLooper:Landroid/os/Looper;

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->getInstance(Landroid/os/Looper;)Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;->getCoverState()Z

    move-result v4

    if-ne v4, v1, :cond_30

    :goto_2c
    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 396
    return-object v0

    :cond_30
    move v1, v2

    .line 394
    goto :goto_2c
.end method

.method protected final getDataPacketToUnregisterLib()[B
    .registers 4

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 407
    new-array v0, v2, [B

    .line 410
    .local v0, "packet":[B
    aput-byte v1, v0, v1

    .line 411
    const/4 v1, 0x1

    aput-byte v2, v0, v1

    .line 413
    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 539
    invoke-virtual {p0}, checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 540
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IntLibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .registers 2

    .prologue
    .line 195
    const/16 v0, 0x2f

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .registers 1

    .prologue
    .line 442
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .registers 1

    .prologue
    .line 454
    return-object p0
.end method

.method protected final notifyInitContext()V
    .registers 3

    .prologue
    .line 524
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getInstance()Lcom/samsung/android/contextaware/manager/ListenerListManager;

    move-result-object v0

    invoke-virtual {p0}, getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/manager/ListenerListManager;->getUsedTotalCount(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 526
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IntLibTypeProvider;->notifyInitContext()V

    .line 528
    :cond_12
    return-void
.end method

.method public onCoverStatusChanged(Lcom/samsung/android/cover/CoverState;)V
    .registers 6
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v1, 0x1

    .line 546
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    if-ne v2, v1, :cond_2e

    move v0, v1

    .line 547
    .local v0, "status":I
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cover status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 550
    # invokes: Lcom/samsung/android/contextaware/manager/ContextProvider;->isDisable()Z
    invoke-static {p0}, access$101(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 551
    const/16 v2, 0x2f

    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    invoke-virtual {p0, v2, v1, v3}, sendPropertyValueToSensorHub(BB[B)Z

    .line 557
    :goto_2d
    return-void

    .line 546
    .end local v0    # "status":I
    :cond_2e
    const/4 v0, 0x0

    goto :goto_8

    .line 555
    .restart local v0    # "status":I
    :cond_30
    const-string/jumbo v1, "runner disabled"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    goto :goto_2d
.end method

.method public parse([BI)I
    .registers 13
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 229
    move v4, p2

    .line 231
    .local v4, "tmpNext":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "parse start:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, getContextValueNames()[Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, "names":[Ljava/lang/String;
    array-length v6, p1

    sub-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x6

    if-gez v6, :cond_2d

    .line 236
    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 237
    const/4 v5, -0x1

    .line 325
    :goto_2c
    return v5

    .line 240
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    .line 241
    add-int/lit8 v4, v4, 0x1

    .line 242
    add-int/lit8 v4, v4, 0x1

    .line 246
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "tmpNext":I
    .local v5, "tmpNext":I
    aget-byte v6, p1, v4

    if-nez v6, :cond_87

    const/4 v2, 0x0

    .line 247
    .local v2, "lcdOff":Z
    :goto_3a
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    aget-byte v1, p1, v5

    .line 248
    .local v1, "lcdDirectEvent":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    aget-byte v0, p1, v4

    .line 311
    .local v0, "embowerEvent":I
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IntLibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->LcdDirect:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->val:I
    invoke-static {v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;)I

    move-result v7

    aget-object v7, v3, v7

    invoke-virtual {v6, v7, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 312
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IntLibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->Embower:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->val:I
    invoke-static {v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;)I

    move-result v7

    aget-object v7, v3, v7

    invoke-virtual {v6, v7, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 317
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IntLibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->LcdOffRecommend:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->val:I
    invoke-static {v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;)I

    move-result v7

    aget-object v7, v3, v7

    invoke-virtual {v6, v7, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Z)V

    .line 318
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IntLibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->TimeStamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->val:I
    invoke-static {v7}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/internal/PhoneStateMonitorRunner$ContextName;)I

    move-result v7

    aget-object v7, v3, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 320
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IntLibTypeProvider;->notifyObserver()V

    move v4, v5

    .line 325
    .end local v5    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    goto :goto_2c

    .line 246
    .end local v0    # "embowerEvent":I
    .end local v1    # "lcdDirectEvent":I
    .end local v2    # "lcdOff":Z
    .end local v4    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    :cond_87
    const/4 v2, 0x1

    goto :goto_3a
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .registers 5
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .line 425
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    .line 427
    .local v0, "result":Z
    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    .line 428
    invoke-direct {p0}, getState()V

    .line 431
    :cond_7
    return v0
.end method
