.class Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;
.super Landroid/os/Handler;
.source "AsyncChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/AsyncChannel$SyncMessenger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncHandler"
.end annotation


# instance fields
.field private mLockObject:Ljava/lang/Object;

.field private mResultMsg:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/internal/util/AsyncChannel$SyncMessenger;


# direct methods
.method private constructor <init>(Lcom/android/internal/util/AsyncChannel$SyncMessenger;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 764
    iput-object p1, p0, this$0:Lcom/android/internal/util/AsyncChannel$SyncMessenger;

    .line 765
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 759
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLockObject:Ljava/lang/Object;

    .line 766
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/util/AsyncChannel$SyncMessenger;Landroid/os/Looper;Lcom/android/internal/util/AsyncChannel$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/internal/util/AsyncChannel$SyncMessenger;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/internal/util/AsyncChannel$1;

    .prologue
    .line 757
    invoke-direct {p0, p1, p2}, <init>(Lcom/android/internal/util/AsyncChannel$SyncMessenger;Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    .prologue
    .line 757
    iget-object v0, p0, mLockObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;)Landroid/os/Message;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;

    .prologue
    .line 757
    iget-object v0, p0, mResultMsg:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;Landroid/os/Message;)Landroid/os/Message;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/util/AsyncChannel$SyncMessenger$SyncHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 757
    iput-object p1, p0, mResultMsg:Landroid/os/Message;

    return-object p1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 771
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, mResultMsg:Landroid/os/Message;

    .line 772
    iget-object v0, p0, mResultMsg:Landroid/os/Message;

    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 773
    iget-object v1, p0, mLockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 774
    :try_start_e
    iget-object v0, p0, mLockObject:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 775
    monitor-exit v1

    .line 776
    return-void

    .line 775
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_15

    throw v0
.end method
