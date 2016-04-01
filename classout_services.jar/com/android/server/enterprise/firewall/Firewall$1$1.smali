.class Lcom/android/server/enterprise/firewall/Firewall$1$1;
.super Ljava/lang/Object;
.source "Firewall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/firewall/Firewall$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/enterprise/firewall/Firewall$1;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/firewall/Firewall$1;)V
    .registers 2

    .prologue
    .line 107
    iput-object p1, p0, this$1:Lcom/android/server/enterprise/firewall/Firewall$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 109
    # getter for: Lcom/android/server/enterprise/firewall/Firewall;->mIsDatabaseReady:Z
    invoke-static {}, Lcom/android/server/enterprise/firewall/Firewall;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 110
    iget-object v0, p0, this$1:Lcom/android/server/enterprise/firewall/Firewall$1;

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/Firewall$1;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    # getter for: Lcom/android/server/enterprise/firewall/Firewall;->mFirewallRulesApplier:Lcom/android/server/enterprise/firewall/FirewallRulesApplier;
    invoke-static {v0}, Lcom/android/server/enterprise/firewall/Firewall;->access$100(Lcom/android/server/enterprise/firewall/Firewall;)Lcom/android/server/enterprise/firewall/FirewallRulesApplier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/firewall/FirewallRulesApplier;->setRulesStatusAfterReboot()V

    .line 111
    iget-object v0, p0, this$1:Lcom/android/server/enterprise/firewall/Firewall$1;

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/Firewall$1;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    # invokes: Lcom/android/server/enterprise/firewall/Firewall;->createChains()V
    invoke-static {v0}, Lcom/android/server/enterprise/firewall/Firewall;->access$200(Lcom/android/server/enterprise/firewall/Firewall;)V

    .line 112
    # setter for: Lcom/android/server/enterprise/firewall/Firewall;->mIsDatabaseReady:Z
    invoke-static {v2}, Lcom/android/server/enterprise/firewall/Firewall;->access$002(Z)Z

    .line 115
    :cond_1c
    # getter for: Lcom/android/server/enterprise/firewall/Firewall;->mAreRulesReloaded:Z
    invoke-static {}, Lcom/android/server/enterprise/firewall/Firewall;->access$300()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 116
    iget-object v0, p0, this$1:Lcom/android/server/enterprise/firewall/Firewall$1;

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/Firewall$1;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    # invokes: Lcom/android/server/enterprise/firewall/Firewall;->reloadIptablesRules()V
    invoke-static {v0}, Lcom/android/server/enterprise/firewall/Firewall;->access$400(Lcom/android/server/enterprise/firewall/Firewall;)V

    .line 117
    # setter for: Lcom/android/server/enterprise/firewall/Firewall;->mAreRulesReloaded:Z
    invoke-static {v2}, Lcom/android/server/enterprise/firewall/Firewall;->access$302(Z)Z

    .line 118
    iget-object v0, p0, this$1:Lcom/android/server/enterprise/firewall/Firewall$1;

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/Firewall$1;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    const/4 v1, -0x1

    # invokes: Lcom/android/server/enterprise/firewall/Firewall;->blockOrUnblockAll(ZI)V
    invoke-static {v0, v2, v1}, Lcom/android/server/enterprise/firewall/Firewall;->access$500(Lcom/android/server/enterprise/firewall/Firewall;ZI)V

    .line 124
    :cond_34
    iget-object v0, p0, this$1:Lcom/android/server/enterprise/firewall/Firewall$1;

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/Firewall$1;->this$0:Lcom/android/server/enterprise/firewall/Firewall;

    # invokes: Lcom/android/server/enterprise/firewall/Firewall;->checkMigrationAndHostnames()V
    invoke-static {v0}, Lcom/android/server/enterprise/firewall/Firewall;->access$600(Lcom/android/server/enterprise/firewall/Firewall;)V

    .line 125
    return-void
.end method
