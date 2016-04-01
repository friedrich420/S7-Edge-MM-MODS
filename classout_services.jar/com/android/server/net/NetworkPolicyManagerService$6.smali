.class Lcom/android/server/net/NetworkPolicyManagerService$6;
.super Landroid/content/BroadcastReceiver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    .prologue
    .line 781
    iput-object p1, p0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x1

    .line 786
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 787
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.extra.UID"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 788
    .local v2, "uid":I
    if-ne v2, v4, :cond_e

    .line 805
    :cond_d
    :goto_d
    return-void

    .line 790
    :cond_e
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 794
    iget-object v3, p0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v4, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 795
    :try_start_1b
    iget-object v3, p0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForUidLocked(I)V

    .line 796
    monitor-exit v4

    goto :goto_d

    :catchall_22
    move-exception v3

    monitor-exit v4
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_22

    throw v3

    .line 797
    :cond_25
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 798
    const-string v3, "android.intent.extra.REPLACING"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 799
    .local v1, "isReplacing":Z
    if-nez v1, :cond_d

    .line 800
    const-string v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_PACKAGE_REMOVED for uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object v3, p0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v4, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 802
    :try_start_53
    iget-object v3, p0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->removeFirewallPolicyLocked(I)V
    invoke-static {v3, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$500(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 803
    monitor-exit v4

    goto :goto_d

    :catchall_5a
    move-exception v3

    monitor-exit v4
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_5a

    throw v3
.end method
