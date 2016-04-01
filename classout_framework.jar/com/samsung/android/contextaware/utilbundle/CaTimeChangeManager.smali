.class public Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;
.super Ljava/lang/Object;
.source "CaTimeChangeManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;


# static fields
.field private static final LOG_CONTEXT_NULL:I = 0x1011

.field private static final LOG_INTENT_NULL:I = 0x1012

.field private static final TIME_CHANGED:I = 0x1013

.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;


# instance fields
.field private mAutoCheck:Z

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 118
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$1;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)V

    iput-object v0, p0, mReceiver:Landroid/content/BroadcastReceiver;

    .line 140
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    .prologue
    .line 37
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    .prologue
    .line 37
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    .prologue
    .line 37
    iget-boolean v0, p0, mAutoCheck:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, mAutoCheck:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    .prologue
    .line 37
    invoke-direct {p0}, notifyObservers()V

    return-void
.end method

.method private checkTimeChange()V
    .registers 4

    .prologue
    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, mContext:Landroid/content/Context;

    if-eqz v1, :cond_15

    .line 113
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 115
    :cond_15
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;
    .registers 2

    .prologue
    .line 61
    sget-object v0, instance:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    if-nez v0, :cond_13

    .line 62
    const-class v1, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    monitor-enter v1

    .line 63
    :try_start_7
    sget-object v0, instance:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    if-nez v0, :cond_12

    .line 64
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    invoke-direct {v0}, <init>()V

    sput-object v0, instance:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    .line 66
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 68
    :cond_13
    sget-object v0, instance:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

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
    .line 97
    iget-object v2, p0, mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 98
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;>;"
    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 99
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;

    .line 100
    .local v1, "observer":Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    if-eqz v1, :cond_6

    .line 101
    invoke-interface {v1}, Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;->onTimeChanged()V

    goto :goto_6

    .line 104
    .end local v1    # "observer":Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    :cond_18
    return-void
.end method


# virtual methods
.method public initializeManager(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 74
    invoke-direct {p0}, checkTimeChange()V

    .line 77
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_15

    const/4 v1, 0x1

    :goto_12
    iput-boolean v1, p0, mAutoCheck:Z
    :try_end_14
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5 .. :try_end_14} :catch_17

    .line 82
    :goto_14
    return-void

    .line 77
    :cond_15
    const/4 v1, 0x0

    goto :goto_12

    .line 78
    :catch_17
    move-exception v0

    .line 79
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v1, "settings not found"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_14
.end method

.method public final registerObserver(Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;)V
    .registers 3
    .param p1, "observer"    # Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;

    .prologue
    .line 85
    iget-object v0, p0, mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 86
    iget-object v0, p0, mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_d
    return-void
.end method

.method public terminateManager()V
    .registers 3

    .prologue
    .line 175
    iget-object v0, p0, mContext:Landroid/content/Context;

    if-eqz v0, :cond_b

    .line 176
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 178
    :cond_b
    return-void
.end method

.method public final unregisterObserver(Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;)V
    .registers 3
    .param p1, "observer"    # Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;

    .prologue
    .line 91
    iget-object v0, p0, mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 92
    iget-object v0, p0, mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 94
    :cond_d
    return-void
.end method
