.class Lcom/android/server/trust/TrustManagerService$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .registers 2

    .prologue
    .line 848
    iput-object p1, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/trust/TrustManagerService;Lcom/android/server/trust/TrustManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/trust/TrustManagerService;
    .param p2, "x1"    # Lcom/android/server/trust/TrustManagerService$1;

    .prologue
    .line 848
    invoke-direct {p0, p1}, <init>(Lcom/android/server/trust/TrustManagerService;)V

    return-void
.end method

.method private getUserId(Landroid/content/Intent;)I
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v1, -0x64

    .line 879
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 880
    .local v0, "userId":I
    if-lez v0, :cond_b

    .line 884
    .end local v0    # "userId":I
    :goto_a
    return v0

    .line 883
    .restart local v0    # "userId":I
    :cond_b
    const-string v2, "TrustManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EXTRA_USER_HANDLE missing or invalid, value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 884
    goto :goto_a
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 852
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 853
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 854
    iget-object v2, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {p0}, getSendingUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 855
    iget-object v2, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v2}, Lcom/android/server/trust/TrustManagerService;->updateDevicePolicyFeatures()V

    .line 876
    :cond_1a
    :goto_1a
    return-void

    .line 856
    :cond_1b
    const-string v2, "android.intent.action.USER_ADDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_58

    .line 857
    invoke-direct {p0, p2}, getUserId(Landroid/content/Intent;)I

    move-result v1

    .line 858
    .local v1, "userId":I
    if-lez v1, :cond_39

    const/16 v2, 0x64

    if-ge v1, v2, :cond_39

    .line 859
    iget-object v2, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object v3, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v3}, Lcom/android/server/trust/TrustManagerService;->access$1800(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    # invokes: Lcom/android/server/trust/TrustManagerService;->maybeEnableFactoryTrustAgents(Lcom/android/internal/widget/LockPatternUtils;I)V
    invoke-static {v2, v3, v1}, Lcom/android/server/trust/TrustManagerService;->access$1900(Lcom/android/server/trust/TrustManagerService;Lcom/android/internal/widget/LockPatternUtils;I)V

    goto :goto_1a

    .line 861
    :cond_39
    const-string v2, "TrustManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EXTRA_USER_HANDLE missing or invalid, value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " or this user is KNOX."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 863
    .end local v1    # "userId":I
    :cond_58
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 864
    invoke-direct {p0, p2}, getUserId(Landroid/content/Intent;)I

    move-result v1

    .line 865
    .restart local v1    # "userId":I
    if-lez v1, :cond_1a

    .line 866
    iget-object v2, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;
    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->access$2000(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    monitor-enter v3

    .line 867
    :try_start_6d
    iget-object v2, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mUserIsTrusted:Landroid/util/SparseBooleanArray;
    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->access$2000(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 868
    monitor-exit v3
    :try_end_77
    .catchall {:try_start_6d .. :try_end_77} :catchall_93

    .line 869
    iget-object v2, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;
    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->access$2100(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v3

    monitor-enter v3

    .line 870
    :try_start_7e
    iget-object v2, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    # getter for: Lcom/android/server/trust/TrustManagerService;->mDeviceLockedForUser:Landroid/util/SparseBooleanArray;
    invoke-static {v2}, Lcom/android/server/trust/TrustManagerService;->access$2100(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 871
    monitor-exit v3
    :try_end_88
    .catchall {:try_start_7e .. :try_end_88} :catchall_96

    .line 872
    iget-object v2, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 873
    iget-object v2, p0, this$0:Lcom/android/server/trust/TrustManagerService;

    # invokes: Lcom/android/server/trust/TrustManagerService;->refreshDeviceLockedForUser(I)V
    invoke-static {v2, v1}, Lcom/android/server/trust/TrustManagerService;->access$1600(Lcom/android/server/trust/TrustManagerService;I)V

    goto :goto_1a

    .line 868
    :catchall_93
    move-exception v2

    :try_start_94
    monitor-exit v3
    :try_end_95
    .catchall {:try_start_94 .. :try_end_95} :catchall_93

    throw v2

    .line 871
    :catchall_96
    move-exception v2

    :try_start_97
    monitor-exit v3
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    throw v2
.end method

.method public register(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 889
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 890
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 891
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 892
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 893
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 894
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 899
    return-void
.end method
