.class Lcom/android/server/net/NetworkPolicyManagerService$8;
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
    .line 826
    iput-object p1, p0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 832
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 833
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.extra.user_handle"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 834
    .local v1, "userId":I
    if-ne v1, v2, :cond_f

    .line 848
    :goto_e
    return-void

    .line 836
    :cond_f
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_44

    :cond_16
    :goto_16
    packed-switch v2, :pswitch_data_4e

    goto :goto_e

    .line 839
    :pswitch_1a
    iget-object v2, p0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 842
    :try_start_1f
    iget-object v2, p0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->removePoliciesForUserLocked(I)V

    .line 844
    iget-object v2, p0, this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/net/NetworkPolicyManagerService;->updateRulesForGlobalChangeLocked(Z)V

    .line 845
    monitor-exit v3

    goto :goto_e

    :catchall_2c
    move-exception v2

    monitor-exit v3
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_2c

    throw v2

    .line 836
    :sswitch_2f
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const/4 v2, 0x0

    goto :goto_16

    :sswitch_39
    const-string v4, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    move v2, v3

    goto :goto_16

    nop

    :sswitch_data_44
    .sparse-switch
        -0x7ad942ef -> :sswitch_2f
        0x42dd01f1 -> :sswitch_39
    .end sparse-switch

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method
