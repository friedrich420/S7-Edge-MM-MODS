.class Lcom/android/server/pm/PackageManagerService$34;
.super Landroid/content/pm/IPackageInstallObserver2$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->movePackageInternal(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$installedLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$moveId:I

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 23593
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, val$packageName:Ljava/lang/String;

    iput p4, p0, val$moveId:I

    invoke-direct {p0}, Landroid/content/pm/IPackageInstallObserver2$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 9
    .param p1, "basePackageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 23605
    iget-object v1, p0, val$installedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 23609
    iget-object v1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, val$packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/pm/PackageManagerService;->unfreezePackage(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$7400(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    .line 23611
    invoke-static {p2}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    move-result v0

    .line 23612
    .local v0, "status":I
    sparse-switch v0, :sswitch_data_3c

    .line 23622
    iget-object v1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$7100(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v1

    iget v2, p0, val$moveId:I

    const/4 v3, -0x6

    # invokes: Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(II)V
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$7200(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    .line 23626
    :goto_1f
    return-void

    .line 23614
    :sswitch_20
    iget-object v1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$7100(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v1

    iget v2, p0, val$moveId:I

    const/16 v3, -0x64

    # invokes: Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(II)V
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$7200(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    goto :goto_1f

    .line 23618
    :sswitch_2e
    iget-object v1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mMoveCallbacks:Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$7100(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    move-result-object v1

    iget v2, p0, val$moveId:I

    const/4 v3, -0x1

    # invokes: Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(II)V
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->access$7200(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    goto :goto_1f

    .line 23612
    nop

    :sswitch_data_3c
    .sparse-switch
        0x0 -> :sswitch_20
        0x6 -> :sswitch_2e
    .end sparse-switch
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 23596
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
