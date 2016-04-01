.class public Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;
.super Ljava/lang/Object;
.source "CaBootStatus.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;


# static fields
.field private static final BOOT_COMPLETED:I = 0x1003

.field private static final LOG_CONTEXT_NULL:I = 0x1001

.field private static final LOG_INTENT_NULL:I = 0x1002

.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;


# instance fields
.field private mBootComplete:Z

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/utilbundle/IBootStatusObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, mBootComplete:Z

    .line 51
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 121
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus$1;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;)V

    iput-object v0, p0, mReceiver:Landroid/content/BroadcastReceiver;

    .line 143
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus$2;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    .prologue
    .line 35
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    .prologue
    .line 35
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    .prologue
    .line 35
    iget-object v0, p0, mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, mBootComplete:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    .prologue
    .line 35
    invoke-direct {p0}, notifyObservers()V

    return-void
.end method

.method private checkBootComplete()V
    .registers 4

    .prologue
    .line 110
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 112
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, mContext:Landroid/content/Context;

    if-eqz v1, :cond_15

    .line 115
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    :cond_15
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;
    .registers 2

    .prologue
    .line 61
    sget-object v0, instance:Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    if-nez v0, :cond_13

    .line 62
    const-class v1, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    monitor-enter v1

    .line 63
    :try_start_7
    sget-object v0, instance:Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    if-nez v0, :cond_12

    .line 64
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    invoke-direct {v0}, <init>()V

    sput-object v0, instance:Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    .line 66
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 68
    :cond_13
    sget-object v0, instance:Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    return-object v0

    .line 66
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method private notifyObservers()V
    .registers 4

    .prologue
    .line 99
    iget-object v2, p0, mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 100
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/utilbundle/IBootStatusObserver;>;"
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/utilbundle/IBootStatusObserver;

    .line 102
    .local v1, "observer":Lcom/samsung/android/contextaware/utilbundle/IBootStatusObserver;
    if-eqz v1, :cond_6

    .line 103
    invoke-interface {v1}, Lcom/samsung/android/contextaware/utilbundle/IBootStatusObserver;->bootCompleted()V

    goto :goto_6

    .line 106
    .end local v1    # "observer":Lcom/samsung/android/contextaware/utilbundle/IBootStatusObserver;
    :cond_18
    return-void
.end method


# virtual methods
.method public initializeManager(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 74
    invoke-direct {p0}, checkBootComplete()V

    .line 75
    return-void
.end method

.method public isBootComplete()Z
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, mBootComplete:Z

    return v0
.end method

.method public final registerObserver(Lcom/samsung/android/contextaware/utilbundle/IBootStatusObserver;)V
    .registers 3
    .param p1, "observer"    # Lcom/samsung/android/contextaware/utilbundle/IBootStatusObserver;

    .prologue
    .line 87
    iget-object v0, p0, mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 88
    iget-object v0, p0, mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    :cond_d
    return-void
.end method

.method public terminateManager()V
    .registers 1

    .prologue
    .line 169
    return-void
.end method

.method public final unregisterObserver(Lcom/samsung/android/contextaware/utilbundle/IBootStatusObserver;)V
    .registers 3
    .param p1, "observer"    # Lcom/samsung/android/contextaware/utilbundle/IBootStatusObserver;

    .prologue
    .line 93
    iget-object v0, p0, mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 94
    iget-object v0, p0, mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 96
    :cond_d
    return-void
.end method
