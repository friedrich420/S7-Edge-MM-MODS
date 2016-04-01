.class public Lcom/android/server/pm/PersonaManagerService$ExtSdcardPolicyUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtSdcardPolicyUpdateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 2

    .prologue
    .line 4489
    iput-object p1, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    .line 4493
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ExtSdcardPolicyUpdateReceiver intent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4494
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.sec.knox.container.access.extsdcard"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_96

    .line 4496
    const-string/jumbo v6, "source"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 4497
    .local v5, "source":I
    const-string v6, "containerId"

    invoke-virtual {p2, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 4498
    .local v2, "personaId":I
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ExtSdcardPolicyUpdateReceiver source- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " and personaId-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4500
    if-eqz v5, :cond_5e

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b9

    .line 4502
    :cond_5e
    iget-object v6, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6, v2}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v4

    .line 4503
    .local v4, "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v4, :cond_96

    .line 4504
    iget-boolean v6, v4, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    if-eqz v6, :cond_9a

    .line 4505
    iput-boolean v9, v4, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    .line 4506
    iget-object v6, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 4507
    :try_start_73
    iget-object v6, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V
    invoke-static {v6, v4}, Lcom/android/server/pm/PersonaManagerService;->access$1100(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V

    .line 4508
    monitor-exit v7
    :try_end_79
    .catchall {:try_start_73 .. :try_end_79} :catchall_97

    .line 4509
    iget-object v6, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->notifyNeedRestartMsg(I)V
    invoke-static {v6, v2}, Lcom/android/server/pm/PersonaManagerService;->access$1200(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 4510
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ExtSdcardPolicyUpdateReceiver processed persona "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4534
    .end local v2    # "personaId":I
    .end local v4    # "pi":Landroid/content/pm/PersonaInfo;
    .end local v5    # "source":I
    :cond_96
    :goto_96
    return-void

    .line 4508
    .restart local v2    # "personaId":I
    .restart local v4    # "pi":Landroid/content/pm/PersonaInfo;
    .restart local v5    # "source":I
    :catchall_97
    move-exception v6

    :try_start_98
    monitor-exit v7
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_97

    throw v6

    .line 4512
    :cond_9a
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ExtSdcardPolicyUpdateReceiver External sdcard is not enabled for persona"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Ignoring restart request."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_96

    .line 4515
    .end local v4    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_b9
    if-ne v5, v9, :cond_96

    .line 4517
    iget-object v6, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6, v9}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v3

    .line 4518
    .local v3, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_c5
    :goto_c5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_96

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PersonaInfo;

    .line 4519
    .local v1, "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v1, :cond_c5

    .line 4520
    iget-boolean v6, v1, Landroid/content/pm/PersonaInfo;->canUseExtSdcard:Z

    if-eqz v6, :cond_10b

    .line 4521
    iput-boolean v9, v1, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    .line 4522
    iget-object v6, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 4523
    :try_start_e0
    iget-object v6, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V
    invoke-static {v6, v1}, Lcom/android/server/pm/PersonaManagerService;->access$1100(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V

    .line 4524
    monitor-exit v7
    :try_end_e6
    .catchall {:try_start_e0 .. :try_end_e6} :catchall_108

    .line 4525
    iget-object v6, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    iget v7, v1, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->notifyNeedRestartMsg(I)V
    invoke-static {v6, v7}, Lcom/android/server/pm/PersonaManagerService;->access$1200(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 4526
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ExtSdcardPolicyUpdateReceiver processed persona "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c5

    .line 4524
    :catchall_108
    move-exception v6

    :try_start_109
    monitor-exit v7
    :try_end_10a
    .catchall {:try_start_109 .. :try_end_10a} :catchall_108

    throw v6

    .line 4528
    :cond_10b
    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ExtSdcardPolicyUpdateReceiver External sdcard is not enabled for persona"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Ignoring restart request."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c5
.end method
