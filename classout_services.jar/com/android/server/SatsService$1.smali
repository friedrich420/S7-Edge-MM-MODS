.class Lcom/android/server/SatsService$1;
.super Landroid/os/UEventObserver;
.source "SatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SatsService;


# direct methods
.method constructor <init>(Lcom/android/server/SatsService;)V
    .registers 2

    .prologue
    .line 103
    iput-object p1, p0, this$0:Lcom/android/server/SatsService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 10
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 106
    # getter for: Lcom/android/server/SatsService;->mLockUEvent:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/SatsService;->access$000()Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 108
    :try_start_5
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "SWITCH_NAME"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_61

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_4c

    .line 110
    :try_start_12
    const-string v4, "SWITCH_NAME"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, "switchName":Ljava/lang/String;
    const-string/jumbo v4, "uart3"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 113
    const-string v4, "SWITCH_STATE"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 114
    .local v3, "switchState":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 116
    .local v1, "state":I
    packed-switch v1, :pswitch_data_86

    .line 129
    const-string v4, "SatsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown state["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_4c} :catch_5c
    .catchall {:try_start_12 .. :try_end_4c} :catchall_61

    .line 138
    .end local v1    # "state":I
    .end local v2    # "switchName":Ljava/lang/String;
    .end local v3    # "switchState":Ljava/lang/String;
    :cond_4c
    :goto_4c
    :try_start_4c
    monitor-exit v5
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_61

    .line 139
    return-void

    .line 118
    .restart local v1    # "state":I
    .restart local v2    # "switchName":Ljava/lang/String;
    .restart local v3    # "switchState":Ljava/lang/String;
    :pswitch_4e
    :try_start_4e
    const-string v4, "SatsService"

    const-string v6, "SATServiceAt will wait."

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v4, p0, this$0:Lcom/android/server/SatsService;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/SatsService;->mThreadUartGoWait:Z
    invoke-static {v4, v6}, Lcom/android/server/SatsService;->access$102(Lcom/android/server/SatsService;Z)Z
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_5b} :catch_5c
    .catchall {:try_start_4e .. :try_end_5b} :catchall_61

    goto :goto_4c

    .line 134
    .end local v1    # "state":I
    .end local v2    # "switchName":Ljava/lang/String;
    .end local v3    # "switchState":Ljava/lang/String;
    :catch_5c
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4c

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_61
    move-exception v4

    monitor-exit v5
    :try_end_63
    .catchall {:try_start_5d .. :try_end_63} :catchall_61

    throw v4

    .line 122
    .restart local v1    # "state":I
    .restart local v2    # "switchName":Ljava/lang/String;
    .restart local v3    # "switchState":Ljava/lang/String;
    :pswitch_64
    :try_start_64
    const-string v4, "SatsService"

    const-string v6, "SATServiceAt will wake up."

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v4, p0, this$0:Lcom/android/server/SatsService;

    const/4 v6, 0x0

    # setter for: Lcom/android/server/SatsService;->mThreadUartGoWait:Z
    invoke-static {v4, v6}, Lcom/android/server/SatsService;->access$102(Lcom/android/server/SatsService;Z)Z

    .line 124
    iget-object v4, p0, this$0:Lcom/android/server/SatsService;

    # getter for: Lcom/android/server/SatsService;->mThreadUart:Ljava/lang/Thread;
    invoke-static {v4}, Lcom/android/server/SatsService;->access$200(Lcom/android/server/SatsService;)Ljava/lang/Thread;

    move-result-object v6

    monitor-enter v6
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_78} :catch_5c
    .catchall {:try_start_64 .. :try_end_78} :catchall_61

    .line 125
    :try_start_78
    iget-object v4, p0, this$0:Lcom/android/server/SatsService;

    # getter for: Lcom/android/server/SatsService;->mThreadUart:Ljava/lang/Thread;
    invoke-static {v4}, Lcom/android/server/SatsService;->access$200(Lcom/android/server/SatsService;)Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 126
    monitor-exit v6

    goto :goto_4c

    :catchall_83
    move-exception v4

    monitor-exit v6
    :try_end_85
    .catchall {:try_start_78 .. :try_end_85} :catchall_83

    :try_start_85
    throw v4
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_86} :catch_5c
    .catchall {:try_start_85 .. :try_end_86} :catchall_61

    .line 116
    :pswitch_data_86
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_64
    .end packed-switch
.end method
