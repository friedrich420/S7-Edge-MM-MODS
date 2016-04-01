.class Lcom/android/server/enterprise/billing/EnterpriseConnectivity$3;
.super Landroid/content/BroadcastReceiver;
.source "EnterpriseConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)V
    .registers 2

    .prologue
    .line 365
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 368
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 369
    iget-object v4, p0, this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .line 370
    .local v1, "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    invoke-virtual {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->onSimStateChanged()V

    goto :goto_17

    .line 372
    .end local v1    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_27
    const-string v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_88

    .line 373
    const-string v4, "android.intent.extra.user_handle"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 374
    .local v3, "user":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->slogd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$500(Ljava/lang/String;)V

    .line 376
    iget-object v4, p0, this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_62
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .line 377
    .restart local v1    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    invoke-virtual {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getUserHandle()Ljava/util/List;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82

    .line 378
    const/16 v4, 0x3f5

    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    goto :goto_62

    .line 380
    :cond_82
    const/16 v4, 0x3f6

    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    goto :goto_62

    .line 383
    .end local v1    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "user":I
    :cond_88
    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cc

    .line 384
    const-string v4, "apnType"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, "apnType":Ljava/lang/String;
    if-eqz v0, :cond_11c

    .line 386
    iget-object v4, p0, this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_a6
    :goto_a6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .line 387
    .restart local v1    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    invoke-virtual {v1}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->getApn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 388
    const-string/jumbo v4, "networkUnvailable"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_ca

    const/4 v4, 0x1

    :goto_c6
    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->onApnAvailableChanged(Z)V

    goto :goto_a6

    :cond_ca
    move v4, v5

    goto :goto_c6

    .line 393
    .end local v0    # "apnType":Ljava/lang/String;
    .end local v1    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_cc
    const-string v4, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f4

    .line 394
    iget-object v4, p0, this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_e2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .line 395
    .restart local v1    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    const/16 v4, 0x3f4

    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    goto :goto_e2

    .line 397
    .end local v1    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_f4
    const-string v4, "com.android.server.enterprise.billing.notification_dismissed"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11c

    .line 398
    iget-object v4, p0, this$0:Lcom/android/server/enterprise/billing/EnterpriseConnectivity;

    # getter for: Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->mConnections:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity;->access$400(Lcom/android/server/enterprise/billing/EnterpriseConnectivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_10a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;

    .line 399
    .restart local v1    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    const/16 v4, 0x3f7

    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;->sendMessage(I)V

    goto :goto_10a

    .line 402
    .end local v1    # "c":Lcom/android/server/enterprise/billing/EnterpriseConnectivity$Connection;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_11c
    return-void
.end method
