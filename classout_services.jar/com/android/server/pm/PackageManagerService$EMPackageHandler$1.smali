.class Lcom/android/server/pm/PackageManagerService$EMPackageHandler$1;
.super Landroid/content/IIntentReceiver$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService$EMPackageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$EMPackageHandler;)V
    .registers 2

    .prologue
    .line 2725
    iput-object p1, p0, this$1:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2727
    const/4 v0, -0x1

    .line 2728
    .local v0, "thisID":I
    if-nez p1, :cond_3b

    .line 2729
    const-string v1, "PackageManager"

    const-string/jumbo v2, "intent is null!"

    invoke-static {v1, v2}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2733
    :goto_b
    iget-object v1, p0, this$1:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    iget v1, v1, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emID:I

    if-ne v1, v0, :cond_43

    .line 2734
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performReceive sending EM_SEND_PENDING_BROADCAST id["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2735
    iget-object v1, p0, this$1:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mEMPackageHander:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->sendEmptyMessage(I)Z

    .line 2739
    :goto_3a
    return-void

    .line 2731
    :cond_3b
    const-string v1, "EM_PKG_HADNLER_ID"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    goto :goto_b

    .line 2737
    :cond_43
    const-string v1, "PackageManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performReceive canceled emID["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, this$1:Lcom/android/server/pm/PackageManagerService$EMPackageHandler;

    iget v3, v3, Lcom/android/server/pm/PackageManagerService$EMPackageHandler;->emID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]  thisID["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a
.end method
