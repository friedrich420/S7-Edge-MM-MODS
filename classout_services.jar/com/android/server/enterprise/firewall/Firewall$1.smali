.class Lcom/android/server/enterprise/firewall/Firewall$1;
.super Landroid/content/BroadcastReceiver;
.source "Firewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/Firewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/firewall/Firewall;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/firewall/Firewall;)V
    .registers 2

    .prologue
    .line 101
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/firewall/Firewall;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 104
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "noConnectivity"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 106
    .local v0, "isNotConnected":Z
    if-nez v0, :cond_26

    .line 107
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/enterprise/firewall/Firewall$1$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/firewall/Firewall$1$1;-><init>(Lcom/android/server/enterprise/firewall/Firewall$1;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 135
    .end local v0    # "isNotConnected":Z
    :cond_26
    :goto_26
    return-void

    .line 128
    :cond_27
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 129
    # getter for: Lcom/android/server/enterprise/firewall/Firewall;->mIsDatabaseReady:Z
    invoke-static {}, Lcom/android/server/enterprise/firewall/Firewall;->access$000()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 130
    iget-object v1, p0, this$0:Lcom/android/server/enterprise/firewall/Firewall;

    # getter for: Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/Firewall;->access$100(Lcom/android/server/enterprise/firewall/Firewall;)Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->setRulesStatusAfterReboot()V

    .line 131
    iget-object v1, p0, this$0:Lcom/android/server/enterprise/firewall/Firewall;

    # invokes: Lcom/android/server/enterprise/firewall/Firewall;->createChains()V
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/Firewall;->access$200(Lcom/android/server/enterprise/firewall/Firewall;)V

    .line 132
    const/4 v1, 0x0

    # setter for: Lcom/android/server/enterprise/firewall/Firewall;->mIsDatabaseReady:Z
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/Firewall;->access$002(Z)Z

    goto :goto_26
.end method
