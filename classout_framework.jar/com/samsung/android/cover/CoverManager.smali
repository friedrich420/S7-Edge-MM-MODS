.class public Lcom/samsung/android/cover/CoverManager;
.super Ljava/lang/Object;
.source "CoverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;,
        Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;,
        Lcom/samsung/android/cover/CoverManager$CoverStateListener;,
        Lcom/samsung/android/cover/CoverManager$StateListener;,
        Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;,
        Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    }
.end annotation


# static fields
.field public static final COVER_MODE_HIDE_SVIEW_ONCE:I = 0x2

.field public static final COVER_MODE_NONE:I = 0x0

.field public static final COVER_MODE_SVIEW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CoverManager"

.field private static sIsFilpCoverSystemFeatureEnabled:Z

.field private static sIsNfcLedCoverSystemFeatureEnabled:Z

.field private static sIsSViewCoverSystemFeatureEnabled:Z

.field private static sIsSystemFeatureQueried:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/samsung/android/cover/ICoverManager;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 106
    sput-boolean v0, sIsSystemFeatureQueried:Z

    .line 112
    sput-boolean v0, sIsFilpCoverSystemFeatureEnabled:Z

    .line 118
    sput-boolean v0, sIsSViewCoverSystemFeatureEnabled:Z

    .line 124
    sput-boolean v0, sIsNfcLedCoverSystemFeatureEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 72
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 78
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 126
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, mToken:Landroid/os/IBinder;

    .line 134
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 135
    invoke-direct {p0}, initSystemFeature()V

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/cover/CoverManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/cover/CoverManager;

    .prologue
    .line 45
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized getService()Lcom/samsung/android/cover/ICoverManager;
    .registers 3

    .prologue
    .line 209
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mService:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_1d

    .line 210
    const-string v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, mService:Lcom/samsung/android/cover/ICoverManager;

    .line 211
    iget-object v0, p0, mService:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_1d

    .line 212
    const-string v0, "CoverManager"

    const-string/jumbo v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_1d
    iget-object v0, p0, mService:Lcom/samsung/android/cover/ICoverManager;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return-object v0

    .line 209
    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initSystemFeature()V
    .registers 3

    .prologue
    .line 142
    sget-boolean v0, sIsSystemFeatureQueried:Z

    if-nez v0, :cond_31

    .line 143
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.flip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, sIsFilpCoverSystemFeatureEnabled:Z

    .line 145
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.sview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, sIsSViewCoverSystemFeatureEnabled:Z

    .line 147
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.nfcledcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, sIsNfcLedCoverSystemFeatureEnabled:Z

    .line 149
    const/4 v0, 0x1

    sput-boolean v0, sIsSystemFeatureQueried:Z

    .line 151
    :cond_31
    return-void
.end method


# virtual methods
.method public disableCoverManager(Z)V
    .registers 6
    .param p1, "disable"    # Z

    .prologue
    .line 521
    :try_start_0
    invoke-direct {p0}, getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v1

    .line 522
    .local v1, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v1, :cond_11

    .line 523
    iget-object v2, p0, mToken:Landroid/os/IBinder;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/samsung/android/cover/ICoverManager;->disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12

    .line 528
    .end local v1    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :cond_11
    :goto_11
    return-void

    .line 525
    :catch_12
    move-exception v0

    .line 526
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager"

    const-string v3, "RemoteException in disalbeCoverManager : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_11
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 453
    invoke-virtual {p0}, isSupportCover()Z

    move-result v4

    if-nez v4, :cond_10

    .line 454
    const-string v4, "CoverManager"

    const-string v5, "getCoverState : This device is not supported cover"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 473
    :cond_f
    :goto_f
    return-object v0

    .line 457
    :cond_10
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_20

    .line 458
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "CoverManager only available from system UID."

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 461
    :cond_20
    :try_start_20
    invoke-direct {p0}, getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v2

    .line 462
    .local v2, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v2, :cond_33

    .line 463
    invoke-interface {v2}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 464
    .local v0, "coverState":Lcom/samsung/android/cover/CoverState;
    if-nez v0, :cond_f

    .line 467
    const-string v4, "CoverManager"

    const-string v5, "getCoverState : coverState is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_33} :catch_35

    .end local v0    # "coverState":Lcom/samsung/android/cover/CoverState;
    .end local v2    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :cond_33
    :goto_33
    move-object v0, v3

    .line 473
    goto :goto_f

    .line 470
    :catch_35
    move-exception v1

    .line 471
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "CoverManager"

    const-string v5, "RemoteException in getCoverState: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_33
.end method

.method public isCoverManagerDisabled()Z
    .registers 6

    .prologue
    .line 507
    const/4 v0, 0x0

    .line 509
    .local v0, "disabled":Z
    :try_start_1
    invoke-direct {p0}, getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v2

    .line 510
    .local v2, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v2, :cond_b

    .line 511
    invoke-interface {v2}, Lcom/samsung/android/cover/ICoverManager;->isCoverManagerDisabled()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_c

    move-result v0

    .line 516
    .end local v2    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :cond_b
    :goto_b
    return v0

    .line 513
    :catch_c
    move-exception v1

    .line 514
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "CoverManager"

    const-string v4, "RemoteException in isCoverManagerDisabled : "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b
.end method

.method isSupportCover()Z
    .registers 2

    .prologue
    .line 160
    sget-boolean v0, sIsFilpCoverSystemFeatureEnabled:Z

    if-nez v0, :cond_c

    sget-boolean v0, sIsSViewCoverSystemFeatureEnabled:Z

    if-nez v0, :cond_c

    sget-boolean v0, sIsNfcLedCoverSystemFeatureEnabled:Z

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isSupportNfcLedCover()Z
    .registers 2

    .prologue
    .line 170
    sget-boolean v0, sIsNfcLedCoverSystemFeatureEnabled:Z

    return v0
.end method

.method isSupportSViewCover()Z
    .registers 2

    .prologue
    .line 180
    sget-boolean v0, sIsSViewCoverSystemFeatureEnabled:Z

    return v0
.end method

.method isSupportTypeOfCover(I)Z
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 191
    packed-switch p1, :pswitch_data_c

    .line 199
    :pswitch_3
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 193
    :pswitch_5
    sget-boolean v0, sIsFilpCoverSystemFeatureEnabled:Z

    goto :goto_4

    .line 197
    :pswitch_8
    sget-boolean v0, sIsSViewCoverSystemFeatureEnabled:Z

    goto :goto_4

    .line 191
    nop

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_3
        :pswitch_8
        :pswitch_3
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method

.method public registerListener(Lcom/samsung/android/cover/CoverManager$CoverStateListener;)V
    .registers 10
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    .prologue
    .line 302
    const-string v6, "CoverManager"

    const-string/jumbo v7, "registerListener"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {p0}, isSupportCover()Z

    move-result v6

    if-nez v6, :cond_17

    .line 304
    const-string v6, "CoverManager"

    const-string/jumbo v7, "registerListener : This device is not supported cover"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_16
    :goto_16
    return-void

    .line 308
    :cond_17
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_27

    .line 309
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "CoverManager only available from system UID."

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 312
    :cond_27
    if-nez p1, :cond_32

    .line 313
    const-string v6, "CoverManager"

    const-string/jumbo v7, "registerListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 317
    :cond_32
    const/4 v1, 0x0

    .line 319
    .local v1, "coverListener":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    iget-object v6, p0, mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 320
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;>;"
    :cond_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_50

    .line 321
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;

    .line 322
    .local v2, "delegate":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;->getListener()Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 323
    move-object v1, v2

    .line 328
    .end local v2    # "delegate":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    :cond_50
    if-nez v1, :cond_5d

    .line 329
    new-instance v1, Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;

    .end local v1    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    const/4 v6, 0x0

    invoke-direct {v1, p0, p1, v6}, Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;-><init>(Lcom/samsung/android/cover/CoverManager;Lcom/samsung/android/cover/CoverManager$CoverStateListener;Landroid/os/Handler;)V

    .line 330
    .restart local v1    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    iget-object v6, p0, mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_5d
    :try_start_5d
    invoke-direct {p0}, getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v5

    .line 335
    .local v5, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v5, :cond_16

    .line 336
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    .local v0, "cm":Landroid/content/ComponentName;
    if-eqz v1, :cond_16

    if-eqz v0, :cond_16

    .line 339
    const/4 v6, 0x2

    invoke-interface {v5, v1, v0, v6}, Lcom/samsung/android/cover/ICoverManager;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_7e} :catch_7f

    goto :goto_16

    .line 343
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v5    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_7f
    move-exception v3

    .line 344
    .local v3, "e":Landroid/os/RemoteException;
    const-string v6, "CoverManager"

    const-string v7, "RemoteException in registerListener: "

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method public registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V
    .registers 10
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$StateListener;

    .prologue
    .line 250
    const-string v6, "CoverManager"

    const-string/jumbo v7, "registerListener"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {p0}, isSupportCover()Z

    move-result v6

    if-nez v6, :cond_17

    .line 252
    const-string v6, "CoverManager"

    const-string/jumbo v7, "registerListener : This device is not supported cover"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_16
    :goto_16
    return-void

    .line 256
    :cond_17
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_27

    .line 257
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "CoverManager only available from system UID."

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 260
    :cond_27
    if-nez p1, :cond_32

    .line 261
    const-string v6, "CoverManager"

    const-string/jumbo v7, "registerListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 265
    :cond_32
    const/4 v1, 0x0

    .line 267
    .local v1, "coverListener":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    iget-object v6, p0, mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 268
    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;>;"
    :cond_39
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_50

    .line 269
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;

    .line 270
    .local v2, "delegate":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;->getListener()Lcom/samsung/android/cover/CoverManager$StateListener;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 271
    move-object v1, v2

    .line 276
    .end local v2    # "delegate":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    :cond_50
    if-nez v1, :cond_5d

    .line 277
    new-instance v1, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;

    .end local v1    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    const/4 v6, 0x0

    invoke-direct {v1, p0, p1, v6}, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;-><init>(Lcom/samsung/android/cover/CoverManager;Lcom/samsung/android/cover/CoverManager$StateListener;Landroid/os/Handler;)V

    .line 278
    .restart local v1    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    iget-object v6, p0, mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_5d
    :try_start_5d
    invoke-direct {p0}, getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v5

    .line 283
    .local v5, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v5, :cond_16

    .line 284
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .local v0, "cm":Landroid/content/ComponentName;
    if-eqz v1, :cond_16

    if-eqz v0, :cond_16

    .line 287
    invoke-interface {v5, v1, v0}, Lcom/samsung/android/cover/ICoverManager;->registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_7d} :catch_7e

    goto :goto_16

    .line 290
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v5    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_7e
    move-exception v3

    .line 291
    .local v3, "e":Landroid/os/RemoteException;
    const-string v6, "CoverManager"

    const-string v7, "RemoteException in registerListener: "

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method public registerNfcTouchListener(ILcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;)V
    .registers 11
    .param p1, "type"    # I
    .param p2, "listener"    # Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;

    .prologue
    .line 721
    const-string v6, "CoverManager"

    const-string/jumbo v7, "registerNfcTouchListener"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    invoke-virtual {p0}, isSupportNfcLedCover()Z

    move-result v6

    if-nez v6, :cond_17

    .line 723
    const-string v6, "CoverManager"

    const-string/jumbo v7, "registerNfcTouchListener : This device does not support NFC Led cover"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_16
    :goto_16
    return-void

    .line 727
    :cond_17
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_27

    .line 728
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "CoverManager only available from system UID."

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 731
    :cond_27
    if-nez p2, :cond_32

    .line 732
    const-string v6, "CoverManager"

    const-string/jumbo v7, "registerNfcTouchListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 736
    :cond_32
    const/4 v4, 0x0

    .line 738
    .local v4, "nfcTouchListener":Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;
    iget-object v6, p0, mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 739
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;>;"
    :cond_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_50

    .line 740
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;

    .line 741
    .local v1, "delegate":Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 742
    move-object v4, v1

    .line 747
    .end local v1    # "delegate":Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;
    :cond_50
    if-nez v4, :cond_5d

    .line 748
    new-instance v4, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;

    .end local v4    # "nfcTouchListener":Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;
    const/4 v6, 0x0

    invoke-direct {v4, p0, p2, v6}, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;-><init>(Lcom/samsung/android/cover/CoverManager;Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;Landroid/os/Handler;)V

    .line 749
    .restart local v4    # "nfcTouchListener":Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;
    iget-object v6, p0, mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 753
    :cond_5d
    :try_start_5d
    invoke-direct {p0}, getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v5

    .line 754
    .local v5, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v5, :cond_16

    .line 755
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    .local v0, "cm":Landroid/content/ComponentName;
    if-eqz v4, :cond_16

    if-eqz v0, :cond_16

    .line 758
    invoke-interface {v5, p1, v4, v0}, Lcom/samsung/android/cover/ICoverManager;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_7d
    .catch Landroid/os/RemoteException; {:try_start_5d .. :try_end_7d} :catch_7e

    goto :goto_16

    .line 761
    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v5    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_7e
    move-exception v2

    .line 762
    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "CoverManager"

    const-string v7, "RemoteException in registerNfcTouchListener: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method public sendDataToCover(I[B)V
    .registers 7
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    .line 477
    invoke-direct {p0}, getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v1

    .line 479
    .local v1, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v1, :cond_9

    .line 480
    :try_start_6
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cover/ICoverManager;->sendDataToCover(I[B)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 484
    :cond_9
    :goto_9
    return-void

    .line 481
    :catch_a
    move-exception v0

    .line 482
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager"

    const-string v3, "RemoteException in sendData : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public sendDataToNfcLedCover(I[B)V
    .registers 7
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    .line 487
    invoke-direct {p0}, getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v1

    .line 489
    .local v1, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v1, :cond_9

    .line 490
    :try_start_6
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cover/ICoverManager;->sendDataToNfcLedCover(I[B)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 494
    :cond_9
    :goto_9
    return-void

    .line 491
    :catch_a
    move-exception v0

    .line 492
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager"

    const-string v3, "RemoteException in sendData to NFC : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public sendPowerKeyToCover()V
    .registers 5

    .prologue
    .line 497
    invoke-direct {p0}, getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v1

    .line 499
    .local v1, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v1, :cond_9

    .line 500
    :try_start_6
    invoke-interface {v1}, Lcom/samsung/android/cover/ICoverManager;->sendPowerKeyToCover()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 504
    :cond_9
    :goto_9
    return-void

    .line 501
    :catch_a
    move-exception v0

    .line 502
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager"

    const-string v3, "RemoteException in sendPowerKeyToCover() : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public setCoverModeToWindow(Landroid/view/Window;I)V
    .registers 6
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "coverMode"    # I

    .prologue
    .line 229
    invoke-virtual {p0}, isSupportSViewCover()Z

    move-result v1

    if-nez v1, :cond_f

    .line 230
    const-string v1, "CoverManager"

    const-string/jumbo v2, "setSViewCoverModeToWindow : This device is not supported s view cover"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_e
    :goto_e
    return-void

    .line 233
    :cond_f
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_1f

    .line 234
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "CoverManager only available from system UID."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_1f
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 237
    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_e

    .line 238
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    .line 239
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_e
.end method

.method public unregisterListener(Lcom/samsung/android/cover/CoverManager$CoverStateListener;)V
    .registers 9
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    .prologue
    .line 404
    const-string v5, "CoverManager"

    const-string/jumbo v6, "unregisterListener"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    invoke-virtual {p0}, isSupportCover()Z

    move-result v5

    if-nez v5, :cond_17

    .line 406
    const-string v5, "CoverManager"

    const-string/jumbo v6, "unregisterListener : This device is not supported cover"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_16
    :goto_16
    return-void

    .line 410
    :cond_17
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_27

    .line 411
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "CoverManager only available from system UID."

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 414
    :cond_27
    if-nez p1, :cond_32

    .line 415
    const-string v5, "CoverManager"

    const-string/jumbo v6, "unregisterListener : listener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 419
    :cond_32
    const/4 v0, 0x0

    .line 421
    .local v0, "coverListener":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    iget-object v5, p0, mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 422
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;>;"
    :cond_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_50

    .line 423
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;

    .line 424
    .local v1, "delegate":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;->getListener()Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 425
    move-object v0, v1

    .line 430
    .end local v1    # "delegate":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    :cond_50
    if-eqz v0, :cond_16

    .line 435
    :try_start_52
    invoke-direct {p0}, getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v4

    .line 436
    .local v4, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v4, :cond_16

    .line 437
    invoke-interface {v4, v0}, Lcom/samsung/android/cover/ICoverManager;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 438
    iget-object v5, p0, mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_63} :catch_64

    goto :goto_16

    .line 441
    .end local v4    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_64
    move-exception v2

    .line 442
    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "CoverManager"

    const-string v6, "RemoteException in unregisterListener: "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method public unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V
    .registers 9
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$StateListener;

    .prologue
    .line 355
    const-string v5, "CoverManager"

    const-string/jumbo v6, "unregisterListener"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-virtual {p0}, isSupportCover()Z

    move-result v5

    if-nez v5, :cond_17

    .line 357
    const-string v5, "CoverManager"

    const-string/jumbo v6, "unregisterListener : This device is not supported cover"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_16
    :goto_16
    return-void

    .line 361
    :cond_17
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_27

    .line 362
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "CoverManager only available from system UID."

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 365
    :cond_27
    if-nez p1, :cond_32

    .line 366
    const-string v5, "CoverManager"

    const-string/jumbo v6, "unregisterListener : listener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 370
    :cond_32
    const/4 v0, 0x0

    .line 372
    .local v0, "coverListener":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    iget-object v5, p0, mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 373
    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;>;"
    :cond_39
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_50

    .line 374
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;

    .line 375
    .local v1, "delegate":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;->getListener()Lcom/samsung/android/cover/CoverManager$StateListener;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 376
    move-object v0, v1

    .line 381
    .end local v1    # "delegate":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    :cond_50
    if-eqz v0, :cond_16

    .line 386
    :try_start_52
    invoke-direct {p0}, getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v4

    .line 387
    .local v4, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v4, :cond_16

    .line 388
    invoke-interface {v4, v0}, Lcom/samsung/android/cover/ICoverManager;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 389
    iget-object v5, p0, mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_63} :catch_64

    goto :goto_16

    .line 392
    .end local v4    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_64
    move-exception v2

    .line 393
    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "CoverManager"

    const-string v6, "RemoteException in unregisterListener: "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method

.method public unregisterNfcTouchListener(Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;)V
    .registers 9
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;

    .prologue
    .line 767
    const-string v5, "CoverManager"

    const-string/jumbo v6, "unregisterNfcTouchListener"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-virtual {p0}, isSupportNfcLedCover()Z

    move-result v5

    if-nez v5, :cond_17

    .line 769
    const-string v5, "CoverManager"

    const-string/jumbo v6, "unregisterNfcTouchListener : This device does not support NFC Led cover"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_16
    :goto_16
    return-void

    .line 773
    :cond_17
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_27

    .line 774
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "CoverManager only available from system UID."

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 777
    :cond_27
    if-nez p1, :cond_32

    .line 778
    const-string v5, "CoverManager"

    const-string/jumbo v6, "unregisterNfcTouchListener : listener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 782
    :cond_32
    const/4 v3, 0x0

    .line 784
    .local v3, "nfcTouchListener":Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;
    iget-object v5, p0, mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 785
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;>;"
    :cond_39
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_50

    .line 786
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;

    .line 787
    .local v0, "delegate":Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 788
    move-object v3, v0

    .line 793
    .end local v0    # "delegate":Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;
    :cond_50
    if-eqz v3, :cond_16

    .line 798
    :try_start_52
    invoke-direct {p0}, getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v4

    .line 799
    .local v4, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v4, :cond_16

    .line 800
    invoke-interface {v4, v3}, Lcom/samsung/android/cover/ICoverManager;->unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 801
    iget-object v5, p0, mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_52 .. :try_end_63} :catch_64

    goto :goto_16

    .line 804
    .end local v4    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_64
    move-exception v1

    .line 805
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "CoverManager"

    const-string v6, "RemoteException in unregisterNfcTouchListener: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16
.end method
