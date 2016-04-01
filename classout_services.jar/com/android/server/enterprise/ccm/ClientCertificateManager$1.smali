.class Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;
.super Landroid/content/BroadcastReceiver;
.source "ClientCertificateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ccm/ClientCertificateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)V
    .registers 2

    .prologue
    .line 3500
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v10, 0x64

    const/4 v9, 0x0

    .line 3503
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 3504
    .local v1, "action":Ljava/lang/String;
    const-string v6, "android.intent.extra.user_handle"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 3505
    .local v5, "userId":I
    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$100()Z

    move-result v6

    if-eqz v6, :cond_37

    .line 3506
    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$200()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Intent received: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " user id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3508
    :cond_37
    const-string v6, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8c

    .line 3509
    const-string v6, "android.intent.extra.USER"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 3512
    .local v2, "managedProfileUserHandle":Landroid/os/UserHandle;
    if-nez v2, :cond_5a

    .line 3513
    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$100()Z

    move-result v6

    if-eqz v6, :cond_59

    .line 3514
    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$200()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "managedProfileUserHandle is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3558
    .end local v2    # "managedProfileUserHandle":Landroid/os/UserHandle;
    :cond_59
    :goto_59
    return-void

    .line 3518
    .restart local v2    # "managedProfileUserHandle":Landroid/os/UserHandle;
    :cond_5a
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 3520
    .local v3, "managedProfileUserId":I
    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$100()Z

    move-result v6

    if-eqz v6, :cond_7f

    .line 3521
    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$200()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "managedProfileUserId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3523
    :cond_7f
    if-lt v3, v10, :cond_86

    .line 3524
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->registerPersonaObserver(I)V
    invoke-static {v6, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$300(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)V

    .line 3527
    :cond_86
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->provisionUser(I)V
    invoke-static {v6, v3}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$400(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)V

    goto :goto_59

    .line 3529
    .end local v2    # "managedProfileUserHandle":Landroid/os/UserHandle;
    .end local v3    # "managedProfileUserId":I
    :cond_8c
    const-string v6, "android.intent.action.USER_REMOVED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b6

    .line 3531
    if-lt v5, v10, :cond_a0

    const/16 v6, 0xc8

    if-gt v5, v6, :cond_a0

    .line 3532
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->unregisterPersonaObserver(I)V
    invoke-static {v6, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$500(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)V

    goto :goto_59

    .line 3534
    :cond_a0
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    const/4 v7, -0x1

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCSRProfileUsingAdminId(II)Z
    invoke-static {v6, v7, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$600(Lcom/android/server/enterprise/ccm/ClientCertificateManager;II)Z

    .line 3535
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCertificateProfile(I)Z
    invoke-static {v6, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$700(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    .line 3536
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMProfile(I)Z
    invoke-static {v6, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$800(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    .line 3537
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->deleteCCMDefaultPolicyRecord(I)Z
    invoke-static {v6, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$900(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z

    goto :goto_59

    .line 3540
    :cond_b6
    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c4

    .line 3541
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z
    invoke-static {v6, v5, v9, v9, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$1000(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZZ)Z

    goto :goto_59

    .line 3542
    :cond_c4
    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d2

    .line 3543
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z
    invoke-static {v6, v5, v9, v9, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$1000(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZZ)Z

    goto :goto_59

    .line 3544
    :cond_d2
    const-string v6, "android.intent.action.USER_PRESENT"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e1

    .line 3545
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->updateLockStatus(IZZZ)Z
    invoke-static {v6, v5, v9, v9, v9}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$1000(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZZ)Z

    goto/16 :goto_59

    .line 3546
    :cond_e1
    const-string v6, "android.app.action.DEVICE_OWNER_CHANGED"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_59

    .line 3547
    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 3548
    .local v4, "userHandle":Landroid/os/UserHandle;
    if-nez v4, :cond_ff

    .line 3549
    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$100()Z

    move-result v6

    if-eqz v6, :cond_59

    .line 3550
    # getter for: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$200()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "onReceive ACTION_DEVICE_OWNER_CHANGED userHandle is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_59

    .line 3554
    :cond_ff
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 3556
    .local v0, "DOUserId":I
    iget-object v6, p0, this$0:Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    # invokes: Lcom/android/server/enterprise/ccm/ClientCertificateManager;->provisionUser(I)V
    invoke-static {v6, v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->access$400(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)V

    goto/16 :goto_59
.end method
