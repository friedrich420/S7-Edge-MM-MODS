.class Lcom/android/server/pm/PackageInstallerService$InternalCallback;
.super Ljava/lang/Object;
.source "PackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageInstallerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageInstallerService;)V
    .registers 2

    .prologue
    .line 1244
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionActiveChanged(Lcom/android/server/pm/PackageInstallerSession;Z)V
    .registers 6
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "active"    # Z

    .prologue
    .line 1251
    iget-object v0, p0, this$0:Lcom/android/server/pm/PackageInstallerService;

    # getter for: Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->access$400(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageInstallerService$Callbacks;

    move-result-object v0

    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    # invokes: Lcom/android/server/pm/PackageInstallerService$Callbacks;->notifySessionActiveChanged(IIZ)V
    invoke-static {v0, v1, v2, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->access$700(Lcom/android/server/pm/PackageInstallerService$Callbacks;IIZ)V

    .line 1252
    return-void
.end method

.method public onSessionBadgingChanged(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 5
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .prologue
    .line 1246
    iget-object v0, p0, this$0:Lcom/android/server/pm/PackageInstallerService;

    # getter for: Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->access$400(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageInstallerService$Callbacks;

    move-result-object v0

    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    # invokes: Lcom/android/server/pm/PackageInstallerService$Callbacks;->notifySessionBadgingChanged(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->access$500(Lcom/android/server/pm/PackageInstallerService$Callbacks;II)V

    .line 1247
    iget-object v0, p0, this$0:Lcom/android/server/pm/PackageInstallerService;

    # invokes: Lcom/android/server/pm/PackageInstallerService;->writeSessionsAsync()V
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->access$600(Lcom/android/server/pm/PackageInstallerService;)V

    .line 1248
    return-void
.end method

.method public onSessionFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V
    .registers 6
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "success"    # Z

    .prologue
    .line 1259
    iget-object v0, p0, this$0:Lcom/android/server/pm/PackageInstallerService;

    # getter for: Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->access$400(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageInstallerService$Callbacks;

    move-result-object v0

    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->notifySessionFinished(IIZ)V

    .line 1261
    iget-object v0, p0, this$0:Lcom/android/server/pm/PackageInstallerService;

    # getter for: Lcom/android/server/pm/PackageInstallerService;->mInstallHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->access$1100(Lcom/android/server/pm/PackageInstallerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback$1;-><init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Lcom/android/server/pm/PackageInstallerSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1277
    return-void
.end method

.method public onSessionPrepared(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 3
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .prologue
    .line 1282
    iget-object v0, p0, this$0:Lcom/android/server/pm/PackageInstallerService;

    # invokes: Lcom/android/server/pm/PackageInstallerService;->writeSessionsAsync()V
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->access$600(Lcom/android/server/pm/PackageInstallerService;)V

    .line 1283
    return-void
.end method

.method public onSessionProgressChanged(Lcom/android/server/pm/PackageInstallerSession;F)V
    .registers 6
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;
    .param p2, "progress"    # F

    .prologue
    .line 1255
    iget-object v0, p0, this$0:Lcom/android/server/pm/PackageInstallerService;

    # getter for: Lcom/android/server/pm/PackageInstallerService;->mCallbacks:Lcom/android/server/pm/PackageInstallerService$Callbacks;
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->access$400(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageInstallerService$Callbacks;

    move-result-object v0

    iget v1, p1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget v2, p1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    # invokes: Lcom/android/server/pm/PackageInstallerService$Callbacks;->notifySessionProgressChanged(IIF)V
    invoke-static {v0, v1, v2, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->access$800(Lcom/android/server/pm/PackageInstallerService$Callbacks;IIF)V

    .line 1256
    return-void
.end method

.method public onSessionSealedBlocking(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 4
    .param p1, "session"    # Lcom/android/server/pm/PackageInstallerSession;

    .prologue
    .line 1289
    iget-object v0, p0, this$0:Lcom/android/server/pm/PackageInstallerService;

    # getter for: Lcom/android/server/pm/PackageInstallerService;->mSessions:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->access$000(Lcom/android/server/pm/PackageInstallerService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 1290
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/pm/PackageInstallerService;

    # invokes: Lcom/android/server/pm/PackageInstallerService;->writeSessionsLocked()V
    invoke-static {v0}, Lcom/android/server/pm/PackageInstallerService;->access$100(Lcom/android/server/pm/PackageInstallerService;)V

    .line 1291
    monitor-exit v1

    .line 1292
    return-void

    .line 1291
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v0
.end method
