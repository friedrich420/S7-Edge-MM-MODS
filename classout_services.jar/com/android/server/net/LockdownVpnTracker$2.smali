.class Lcom/android/server/net/LockdownVpnTracker$2;
.super Ljava/lang/Object;
.source "LockdownVpnTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/LockdownVpnTracker;->LazyHandleStateChangedLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/LockdownVpnTracker;


# direct methods
.method constructor <init>(Lcom/android/server/net/LockdownVpnTracker;)V
    .registers 2

    .prologue
    .line 409
    iput-object p1, p0, this$0:Lcom/android/server/net/LockdownVpnTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 411
    const/4 v0, 0x0

    .line 414
    .local v0, "ret":I
    :cond_1
    const-wide/16 v2, 0x5dc

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 415
    iget-object v2, p0, this$0:Lcom/android/server/net/LockdownVpnTracker;

    # invokes: Lcom/android/server/net/LockdownVpnTracker;->isIPv6Network()I
    invoke-static {v2}, Lcom/android/server/net/LockdownVpnTracker;->access$000(Lcom/android/server/net/LockdownVpnTracker;)I

    move-result v0

    .line 416
    const/4 v2, 0x6

    if-ne v0, v2, :cond_32

    .line 417
    iget-object v2, p0, this$0:Lcom/android/server/net/LockdownVpnTracker;

    # invokes: Lcom/android/server/net/LockdownVpnTracker;->isClat4Activated()Z
    invoke-static {v2}, Lcom/android/server/net/LockdownVpnTracker;->access$100(Lcom/android/server/net/LockdownVpnTracker;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 418
    iget-object v2, p0, this$0:Lcom/android/server/net/LockdownVpnTracker;

    # invokes: Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V
    invoke-static {v2}, Lcom/android/server/net/LockdownVpnTracker;->access$200(Lcom/android/server/net/LockdownVpnTracker;)V

    .line 424
    :cond_1c
    :goto_1c
    iget-object v2, p0, this$0:Lcom/android/server/net/LockdownVpnTracker;

    # getter for: Lcom/android/server/net/LockdownVpnTracker;->mAlwaysOnConnected:Z
    invoke-static {v2}, Lcom/android/server/net/LockdownVpnTracker;->access$300(Lcom/android/server/net/LockdownVpnTracker;)Z
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_21} :catch_38

    move-result v2

    if-eqz v2, :cond_1

    .line 432
    :goto_24
    const-string v2, "LockdownVpnTracker"

    const-string v3, "LazyHandleStateChangedLocked(): Thread Bye."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v2, p0, this$0:Lcom/android/server/net/LockdownVpnTracker;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/net/LockdownVpnTracker;->mChkThread:Ljava/lang/Thread;
    invoke-static {v2, v3}, Lcom/android/server/net/LockdownVpnTracker;->access$402(Lcom/android/server/net/LockdownVpnTracker;Ljava/lang/Thread;)Ljava/lang/Thread;

    .line 434
    return-void

    .line 422
    :cond_32
    :try_start_32
    iget-object v2, p0, this$0:Lcom/android/server/net/LockdownVpnTracker;

    # invokes: Lcom/android/server/net/LockdownVpnTracker;->handleStateChangedLocked()V
    invoke-static {v2}, Lcom/android/server/net/LockdownVpnTracker;->access$200(Lcom/android/server/net/LockdownVpnTracker;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_37} :catch_38

    goto :goto_1c

    .line 427
    :catch_38
    move-exception v1

    .line 428
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "LockdownVpnTracker"

    const-string v3, "LazyHandleStateChangedLocked(): Thread exception"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method
