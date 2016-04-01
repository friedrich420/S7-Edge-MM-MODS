.class Lcom/android/server/execute/ExecuteManagerService$BootCompletedReceiver$1;
.super Ljava/lang/Thread;
.source "ExecuteManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/execute/ExecuteManagerService$BootCompletedReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/execute/ExecuteManagerService$BootCompletedReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/execute/ExecuteManagerService$BootCompletedReceiver;)V
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, this$1:Lcom/android/server/execute/ExecuteManagerService$BootCompletedReceiver;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 98
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 99
    iget-object v0, p0, this$1:Lcom/android/server/execute/ExecuteManagerService$BootCompletedReceiver;

    iget-object v0, v0, Lcom/android/server/execute/ExecuteManagerService$BootCompletedReceiver;->this$0:Lcom/android/server/execute/ExecuteManagerService;

    # getter for: Lcom/android/server/execute/ExecuteManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/execute/ExecuteManagerService;->access$200(Lcom/android/server/execute/ExecuteManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, this$1:Lcom/android/server/execute/ExecuteManagerService$BootCompletedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    iget-object v0, p0, this$1:Lcom/android/server/execute/ExecuteManagerService$BootCompletedReceiver;

    iget-object v0, v0, Lcom/android/server/execute/ExecuteManagerService$BootCompletedReceiver;->this$0:Lcom/android/server/execute/ExecuteManagerService;

    # invokes: Lcom/android/server/execute/ExecuteManagerService;->updateExecutableInfo()V
    invoke-static {v0}, Lcom/android/server/execute/ExecuteManagerService;->access$300(Lcom/android/server/execute/ExecuteManagerService;)V

    .line 102
    return-void
.end method
