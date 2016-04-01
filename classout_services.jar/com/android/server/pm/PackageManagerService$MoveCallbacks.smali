.class Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveCallbacks"
.end annotation


# static fields
.field private static final MSG_CREATED:I = 0x1

.field private static final MSG_STATUS_CHANGED:I = 0x2


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/content/pm/IPackageMoveObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastStatus:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 24576
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 24570
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    .line 24573
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, mLastStatus:Landroid/util/SparseIntArray;

    .line 24577
    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 24566
    invoke-direct {p0, p1, p2}, notifyStatusChanged(II)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;ILandroid/os/Bundle;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 24566
    invoke-direct {p0, p1, p2}, notifyCreated(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$7500(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;IIJ)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .prologue
    .line 24566
    invoke-direct {p0, p1, p2, p3, p4}, notifyStatusChanged(IIJ)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;)Landroid/util/SparseIntArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    .prologue
    .line 24566
    iget-object v0, p0, mLastStatus:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method private invokeCallback(Landroid/content/pm/IPackageMoveObserver;ILcom/android/internal/os/SomeArgs;)V
    .registers 10
    .param p1, "callback"    # Landroid/content/pm/IPackageMoveObserver;
    .param p2, "what"    # I
    .param p3, "args"    # Lcom/android/internal/os/SomeArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 24604
    packed-switch p2, :pswitch_data_1e

    .line 24614
    :goto_3
    return-void

    .line 24606
    :pswitch_4
    iget v1, p3, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-interface {p1, v1, v0}, Landroid/content/pm/IPackageMoveObserver;->onCreated(ILandroid/os/Bundle;)V

    goto :goto_3

    .line 24610
    :pswitch_e
    iget v1, p3, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v2, p3, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget-object v0, p3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {p1, v1, v2, v4, v5}, Landroid/content/pm/IPackageMoveObserver;->onStatusChanged(IIJ)V

    goto :goto_3

    .line 24604
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_4
        :pswitch_e
    .end packed-switch
.end method

.method private notifyCreated(ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "moveId"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 24617
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Move "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " created "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24619
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 24620
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 24621
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 24622
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 24623
    return-void
.end method

.method private notifyStatusChanged(II)V
    .registers 5
    .param p1, "moveId"    # I
    .param p2, "status"    # I

    .prologue
    .line 24626
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, notifyStatusChanged(IIJ)V

    .line 24627
    return-void
.end method

.method private notifyStatusChanged(IIJ)V
    .registers 10
    .param p1, "moveId"    # I
    .param p2, "status"    # I
    .param p3, "estMillis"    # J

    .prologue
    .line 24630
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Move "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24632
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 24633
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 24634
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 24635
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 24636
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 24638
    iget-object v2, p0, mLastStatus:Landroid/util/SparseIntArray;

    monitor-enter v2

    .line 24639
    :try_start_3b
    iget-object v1, p0, mLastStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24640
    monitor-exit v2

    .line 24641
    return-void

    .line 24640
    :catchall_42
    move-exception v1

    monitor-exit v2
    :try_end_44
    .catchall {:try_start_3b .. :try_end_44} :catchall_42

    throw v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 24589
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 24590
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    .line 24591
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v3, :cond_1d

    .line 24592
    iget-object v4, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/content/pm/IPackageMoveObserver;

    .line 24594
    .local v1, "callback":Landroid/content/pm/IPackageMoveObserver;
    :try_start_15
    iget v4, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v1, v4, v0}, invokeCallback(Landroid/content/pm/IPackageMoveObserver;ILcom/android/internal/os/SomeArgs;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_26

    .line 24591
    :goto_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 24598
    .end local v1    # "callback":Landroid/content/pm/IPackageMoveObserver;
    :cond_1d
    iget-object v4, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 24599
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 24600
    return-void

    .line 24595
    .restart local v1    # "callback":Landroid/content/pm/IPackageMoveObserver;
    :catch_26
    move-exception v4

    goto :goto_1a
.end method

.method public register(Landroid/content/pm/IPackageMoveObserver;)V
    .registers 3
    .param p1, "callback"    # Landroid/content/pm/IPackageMoveObserver;

    .prologue
    .line 24580
    iget-object v0, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 24581
    return-void
.end method

.method public unregister(Landroid/content/pm/IPackageMoveObserver;)V
    .registers 3
    .param p1, "callback"    # Landroid/content/pm/IPackageMoveObserver;

    .prologue
    .line 24584
    iget-object v0, p0, mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 24585
    return-void
.end method
