.class Lcom/android/server/bridge/operations/DbObserver$2;
.super Ljava/lang/Object;
.source "DbObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/android/server/bridge/operations/DbObserver;)V
    .registers 2

    .prologue
    .line 76
    iput-object p1, p0, this$0:Lcom/android/server/bridge/operations/DbObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 83
    # getter for: Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/operations/DbObserver;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling doSyncForSyncer for CALENDAR , UserID :"

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

    .line 84
    iget-object v0, p0, this$0:Lcom/android/server/bridge/operations/DbObserver;

    # getter for: Lcom/android/server/bridge/operations/DbObserver;->mRCPManager:Landroid/os/RCPManager;
    invoke-static {v0}, Lcom/android/server/bridge/operations/DbObserver;->access$500(Lcom/android/server/bridge/operations/DbObserver;)Landroid/os/RCPManager;

    move-result-object v0

    const-string v1, "Calendar"

    iget-object v2, p0, this$0:Lcom/android/server/bridge/operations/DbObserver;

    # getter for: Lcom/android/server/bridge/operations/DbObserver;->mUserId:I
    invoke-static {v2}, Lcom/android/server/bridge/operations/DbObserver;->access$400(Lcom/android/server/bridge/operations/DbObserver;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/RCPManager;->doSyncForSyncer(Ljava/lang/String;I)V

    .line 85
    return-void
.end method
