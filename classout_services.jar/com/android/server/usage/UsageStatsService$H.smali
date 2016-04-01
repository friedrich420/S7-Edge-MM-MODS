.class Lcom/android/server/usage/UsageStatsService$H;
.super Landroid/os/Handler;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsService;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/UsageStatsService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1065
    iput-object p1, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    .line 1066
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1067
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1071
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_80

    .line 1119
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1122
    :goto_a
    return-void

    .line 1073
    :pswitch_b
    iget-object v2, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/usage/UsageEvents$Event;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v1, v3}, Lcom/android/server/usage/UsageStatsService;->reportEvent(Landroid/app/usage/UsageEvents$Event;I)V

    goto :goto_a

    .line 1077
    :pswitch_17
    iget-object v1, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v1}, Lcom/android/server/usage/UsageStatsService;->flushToDisk()V

    goto :goto_a

    .line 1081
    :pswitch_1d
    iget-object v1, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UsageStatsService;->removeUser(I)V

    goto :goto_a

    .line 1085
    :pswitch_25
    iget-object v4, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v2, :cond_35

    :goto_31
    invoke-virtual {v4, v1, v5, v2}, Lcom/android/server/usage/UsageStatsService;->informListeners(Ljava/lang/String;IZ)V

    goto :goto_a

    :cond_35
    move v2, v3

    goto :goto_31

    .line 1089
    :pswitch_37
    iget-object v4, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    if-ne v6, v2, :cond_47

    :goto_43
    invoke-virtual {v4, v1, v5, v2}, Lcom/android/server/usage/UsageStatsService;->forceIdleState(Ljava/lang/String;IZ)V

    goto :goto_a

    :cond_47
    move v2, v3

    goto :goto_43

    .line 1093
    :pswitch_49
    iget-object v1, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Lcom/android/server/usage/UsageStatsService;->checkIdleStates(I)V

    goto :goto_a

    .line 1097
    :pswitch_51
    iget-object v1, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v1}, Lcom/android/server/usage/UsageStatsService;->checkParoleTimeout()V

    goto :goto_a

    .line 1102
    :pswitch_57
    iget-object v1, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v1, v3}, Lcom/android/server/usage/UsageStatsService;->setAppIdleParoled(Z)V

    goto :goto_a

    .line 1106
    :pswitch_5d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 1107
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/server/usage/UsageStatsService;->reportContentProviderUsage(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1110
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_a

    .line 1115
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :pswitch_7a
    iget-object v1, p0, this$0:Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v1}, Lcom/android/server/usage/UsageStatsService;->informParoleStateChanged()V

    goto :goto_a

    .line 1071
    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_b
        :pswitch_17
        :pswitch_1d
        :pswitch_25
        :pswitch_37
        :pswitch_49
        :pswitch_51
        :pswitch_57
        :pswitch_5d
        :pswitch_7a
    .end packed-switch
.end method
