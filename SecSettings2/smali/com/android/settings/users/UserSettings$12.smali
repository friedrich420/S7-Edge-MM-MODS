.class Lcom/android/settings/users/UserSettings$12;
.super Ljava/lang/Thread;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserSettings;->addUserNow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserSettings;

.field final synthetic val$userType:I


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserSettings;I)V
    .locals 0

    .prologue
    .line 777
    iput-object p1, p0, Lcom/android/settings/users/UserSettings$12;->this$0:Lcom/android/settings/users/UserSettings;

    iput p2, p0, Lcom/android/settings/users/UserSettings$12;->val$userType:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 781
    iget v1, p0, Lcom/android/settings/users/UserSettings$12;->val$userType:I

    if-ne v1, v4, :cond_0

    .line 782
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$12;->this$0:Lcom/android/settings/users/UserSettings;

    # invokes: Lcom/android/settings/users/UserSettings;->createTrustedUser()Landroid/content/pm/UserInfo;
    invoke-static {v1}, Lcom/android/settings/users/UserSettings;->access$1800(Lcom/android/settings/users/UserSettings;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 787
    .local v0, "user":Landroid/content/pm/UserInfo;
    :goto_0
    if-nez v0, :cond_1

    .line 789
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$12;->this$0:Lcom/android/settings/users/UserSettings;

    # setter for: Lcom/android/settings/users/UserSettings;->mAddingUser:Z
    invoke-static {v1, v2}, Lcom/android/settings/users/UserSettings;->access$2002(Lcom/android/settings/users/UserSettings;Z)Z

    .line 804
    :goto_1
    return-void

    .line 784
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$12;->this$0:Lcom/android/settings/users/UserSettings;

    # invokes: Lcom/android/settings/users/UserSettings;->createLimitedUser()Landroid/content/pm/UserInfo;
    invoke-static {v1}, Lcom/android/settings/users/UserSettings;->access$1900(Lcom/android/settings/users/UserSettings;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .restart local v0    # "user":Landroid/content/pm/UserInfo;
    goto :goto_0

    .line 793
    :cond_1
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$12;->this$0:Lcom/android/settings/users/UserSettings;

    # getter for: Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/settings/users/UserSettings;->access$1700(Lcom/android/settings/users/UserSettings;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 794
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$12;->this$0:Lcom/android/settings/users/UserSettings;

    const/4 v3, 0x0

    # setter for: Lcom/android/settings/users/UserSettings;->mAddingUser:Z
    invoke-static {v1, v3}, Lcom/android/settings/users/UserSettings;->access$2002(Lcom/android/settings/users/UserSettings;Z)Z

    .line 795
    iget v1, p0, Lcom/android/settings/users/UserSettings$12;->val$userType:I

    if-ne v1, v4, :cond_2

    .line 796
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$12;->this$0:Lcom/android/settings/users/UserSettings;

    # getter for: Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/users/UserSettings;->access$600(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 797
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$12;->this$0:Lcom/android/settings/users/UserSettings;

    # getter for: Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/users/UserSettings;->access$600(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/users/UserSettings$12;->this$0:Lcom/android/settings/users/UserSettings;

    # getter for: Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/users/UserSettings;->access$600(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    iget v6, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 803
    :goto_2
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 800
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/users/UserSettings$12;->this$0:Lcom/android/settings/users/UserSettings;

    # getter for: Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/users/UserSettings;->access$600(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/users/UserSettings$12;->this$0:Lcom/android/settings/users/UserSettings;

    # getter for: Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/users/UserSettings;->access$600(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    iget v5, v0, Landroid/content/pm/UserInfo;->id:I

    iget v6, v0, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method
