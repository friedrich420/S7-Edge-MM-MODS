.class final Lcom/android/server/notification/NotificationManagerService$RankingWorkerHandler;
.super Landroid/os/Handler;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RankingWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 3217
    iput-object p1, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 3218
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3219
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3223
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    .line 3231
    :goto_5
    return-void

    .line 3225
    :pswitch_6
    iget-object v0, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->handleRankingReconsideration(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->access$6300(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Message;)V

    goto :goto_5

    .line 3228
    :pswitch_c
    iget-object v0, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->handleRankingConfigChange()V
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$6400(Lcom/android/server/notification/NotificationManagerService;)V

    goto :goto_5

    .line 3223
    :pswitch_data_12
    .packed-switch 0x4
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
