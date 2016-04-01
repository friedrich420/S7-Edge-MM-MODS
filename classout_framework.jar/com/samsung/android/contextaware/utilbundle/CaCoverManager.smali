.class public Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;
.super Ljava/lang/Object;
.source "CaCoverManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/IBootStatusObserver;
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;


# static fields
.field private static final COVER_TYPE_FLIP:I = 0x1

.field private static final COVER_TYPE_NONE:I = 0x0

.field private static final COVER_TYPE_VIEW:I = 0x2

.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private final mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mCurrentCoverState:Z

.field private mCurrentCoverType:I

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/utilbundle/ICoverStatusChangeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, mCurrentCoverState:Z

    .line 50
    const/4 v0, 0x0

    iput v0, p0, mCurrentCoverType:I

    .line 55
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 157
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager$2;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;)V

    iput-object v0, p0, mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 59
    iput-object p1, p0, mLooper:Landroid/os/Looper;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;)Lcom/samsung/android/cover/CoverManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    .prologue
    .line 34
    iget-object v0, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;)Lcom/samsung/android/cover/CoverManager$StateListener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    .prologue
    .line 34
    iget-object v0, p0, mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, mCurrentCoverState:Z

    return p1
.end method

.method static synthetic access$302(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, mCurrentCoverType:I

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;Lcom/samsung/android/cover/CoverState;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;
    .param p1, "x1"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 34
    invoke-direct {p0, p1}, notifyObservers(Lcom/samsung/android/cover/CoverState;)V

    return-void
.end method

.method public static getInstance(Landroid/os/Looper;)Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;
    .registers 3
    .param p0, "looper"    # Landroid/os/Looper;

    .prologue
    .line 68
    sget-object v0, instance:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    if-nez v0, :cond_13

    .line 69
    const-class v1, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    monitor-enter v1

    .line 70
    :try_start_7
    sget-object v0, instance:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    if-nez v0, :cond_12

    .line 71
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    invoke-direct {v0, p0}, <init>(Landroid/os/Looper;)V

    sput-object v0, instance:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    .line 73
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 75
    :cond_13
    sget-object v0, instance:Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;

    return-object v0

    .line 73
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private notifyObservers(Lcom/samsung/android/cover/CoverState;)V
    .registers 5
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 98
    iget-object v2, p0, mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 99
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/utilbundle/ICoverStatusChangeObserver;>;"
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 100
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/utilbundle/ICoverStatusChangeObserver;

    .line 101
    .local v1, "observer":Lcom/samsung/android/contextaware/utilbundle/ICoverStatusChangeObserver;
    if-eqz v1, :cond_6

    .line 102
    invoke-interface {v1, p1}, Lcom/samsung/android/contextaware/utilbundle/ICoverStatusChangeObserver;->onCoverStatusChanged(Lcom/samsung/android/cover/CoverState;)V

    goto :goto_6

    .line 105
    .end local v1    # "observer":Lcom/samsung/android/contextaware/utilbundle/ICoverStatusChangeObserver;
    :cond_18
    return-void
.end method


# virtual methods
.method public bootCompleted()V
    .registers 5

    .prologue
    .line 176
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 178
    iget-object v0, p0, mLooper:Landroid/os/Looper;

    if-eqz v0, :cond_1f

    .line 179
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager$3;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    :goto_1e
    return-void

    .line 190
    :cond_1f
    const-string v0, "looper null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public getCoverState()Z
    .registers 3

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, mCurrentCoverState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 126
    iget-boolean v0, p0, mCurrentCoverState:Z

    return v0
.end method

.method public getCoverType()I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mCurrentCoverType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 132
    iget v1, p0, mCurrentCoverType:I

    sparse-switch v1, :sswitch_data_24

    .line 153
    :goto_1e
    :sswitch_1e
    return v0

    .line 143
    :sswitch_1f
    const/4 v0, 0x1

    goto :goto_1e

    .line 149
    :sswitch_21
    const/4 v0, 0x2

    goto :goto_1e

    .line 132
    nop

    :sswitch_data_24
    .sparse-switch
        0x0 -> :sswitch_1f
        0x1 -> :sswitch_21
        0x2 -> :sswitch_1e
        0x3 -> :sswitch_21
        0x4 -> :sswitch_1f
        0x5 -> :sswitch_1f
        0x6 -> :sswitch_21
        0x7 -> :sswitch_1f
        0x64 -> :sswitch_1f
    .end sparse-switch
.end method

.method public initializeManager(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->registerObserver(Lcom/samsung/android/contextaware/utilbundle/IBootStatusObserver;)V

    .line 82
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 83
    return-void
.end method

.method public final registerObserver(Lcom/samsung/android/contextaware/utilbundle/ICoverStatusChangeObserver;)V
    .registers 3
    .param p1, "observer"    # Lcom/samsung/android/contextaware/utilbundle/ICoverStatusChangeObserver;

    .prologue
    .line 86
    iget-object v0, p0, mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 87
    iget-object v0, p0, mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_d
    return-void
.end method

.method public terminateManager()V
    .registers 5

    .prologue
    .line 111
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaCoverManager$1;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaCoverManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    return-void
.end method

.method public final unregisterObserver(Lcom/samsung/android/contextaware/utilbundle/ICoverStatusChangeObserver;)V
    .registers 3
    .param p1, "observer"    # Lcom/samsung/android/contextaware/utilbundle/ICoverStatusChangeObserver;

    .prologue
    .line 92
    iget-object v0, p0, mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 93
    iget-object v0, p0, mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 95
    :cond_d
    return-void
.end method
