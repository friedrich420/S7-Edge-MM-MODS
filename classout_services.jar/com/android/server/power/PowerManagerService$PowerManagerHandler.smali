.class final Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
.super Landroid/os/Handler;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 5227
    iput-object p1, p0, this$0:Lcom/android/server/power/PowerManagerService;

    .line 5228
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 5229
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 5233
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1e

    .line 5249
    :goto_5
    return-void

    .line 5235
    :pswitch_6
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleUserActivityTimeout()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5400(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_5

    .line 5238
    :pswitch_c
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleSandman()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5500(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_5

    .line 5241
    :pswitch_12
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleScreenBrightnessBoostTimeout()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5600(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_5

    .line 5245
    :pswitch_18
    iget-object v0, p0, this$0:Lcom/android/server/power/PowerManagerService;

    # invokes: Lcom/android/server/power/PowerManagerService;->handleInputDeviceLightOnByScreenOn()V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$5700(Lcom/android/server/power/PowerManagerService;)V

    goto :goto_5

    .line 5233
    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_c
        :pswitch_12
        :pswitch_18
    .end packed-switch
.end method
