.class final Lcom/android/server/pm/UserManagerService$MainHandler;
.super Landroid/os/Handler;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .registers 2

    .prologue
    .line 2551
    iput-object p1, p0, this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2555
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_32

    .line 2566
    :goto_5
    return-void

    .line 2557
    :pswitch_6
    const/4 v2, 0x1

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, removeMessages(ILjava/lang/Object;)V

    .line 2558
    iget-object v2, p0, this$0:Lcom/android/server/pm/UserManagerService;

    # getter for: Lcom/android/server/pm/UserManagerService;->mPackagesLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->access$100(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 2559
    :try_start_13
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v0, v2, Landroid/content/pm/UserInfo;->id:I

    .line 2560
    .local v0, "userId":I
    iget-object v2, p0, this$0:Lcom/android/server/pm/UserManagerService;

    # getter for: Lcom/android/server/pm/UserManagerService;->mUsers:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->access$600(Lcom/android/server/pm/UserManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 2561
    .local v1, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_2c

    .line 2562
    iget-object v2, p0, this$0:Lcom/android/server/pm/UserManagerService;

    # invokes: Lcom/android/server/pm/UserManagerService;->writeUserLocked(Landroid/content/pm/UserInfo;)V
    invoke-static {v2, v1}, Lcom/android/server/pm/UserManagerService;->access$700(Lcom/android/server/pm/UserManagerService;Landroid/content/pm/UserInfo;)V

    .line 2564
    :cond_2c
    monitor-exit v3

    goto :goto_5

    .end local v0    # "userId":I
    .end local v1    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_2e
    move-exception v2

    monitor-exit v3
    :try_end_30
    .catchall {:try_start_13 .. :try_end_30} :catchall_2e

    throw v2

    .line 2555
    nop

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
