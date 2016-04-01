.class Lcom/android/server/bridge/operations/DbObserver$3;
.super Landroid/database/ContentObserver;
.source "DbObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/operations/DbObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/operations/DbObserver;


# direct methods
.method constructor <init>(Lcom/android/server/bridge/operations/DbObserver;Landroid/os/Handler;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 88
    iput-object p1, p0, this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, onChange(ZLandroid/net/Uri;)V

    .line 96
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 104
    # getter for: Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/operations/DbObserver;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onChange Conatcts UserID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/server/bridge/operations/DbObserver;

    # getter for: Lcom/android/server/bridge/operations/DbObserver;->mUserId:I
    invoke-static {v2}, Lcom/android/server/bridge/operations/DbObserver;->access$400(Lcom/android/server/bridge/operations/DbObserver;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, this$0:Lcom/android/server/bridge/operations/DbObserver;

    # getter for: Lcom/android/server/bridge/operations/DbObserver;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/bridge/operations/DbObserver;->access$700(Lcom/android/server/bridge/operations/DbObserver;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/bridge/operations/DbObserver;

    iget-object v1, v1, Lcom/android/server/bridge/operations/DbObserver;->mContactRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 106
    iget-object v0, p0, this$0:Lcom/android/server/bridge/operations/DbObserver;

    # getter for: Lcom/android/server/bridge/operations/DbObserver;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/bridge/operations/DbObserver;->access$700(Lcom/android/server/bridge/operations/DbObserver;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/bridge/operations/DbObserver;

    iget-object v1, v1, Lcom/android/server/bridge/operations/DbObserver;->mContactRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    return-void
.end method
