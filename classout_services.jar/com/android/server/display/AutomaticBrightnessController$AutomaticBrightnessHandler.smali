.class final Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
.super Landroid/os/Handler;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutomaticBrightnessHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1399
    iput-object p1, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1400
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1401
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1405
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1c

    .line 1425
    :goto_5
    return-void

    .line 1411
    :pswitch_6
    iget-object v0, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLuxSEC(J)V
    invoke-static {v0, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$1700(Lcom/android/server/display/AutomaticBrightnessController;J)V

    goto :goto_5

    .line 1416
    :pswitch_10
    iget-object v0, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->collectBrightnessAdjustmentSample()V
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$1800(Lcom/android/server/display/AutomaticBrightnessController;)V

    goto :goto_5

    .line 1421
    :pswitch_16
    iget-object v0, p0, this$0:Lcom/android/server/display/AutomaticBrightnessController;

    # invokes: Lcom/android/server/display/AutomaticBrightnessController;->printLastLightSensorEvent()V
    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$1900(Lcom/android/server/display/AutomaticBrightnessController;)V

    goto :goto_5

    .line 1405
    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_6
        :pswitch_10
        :pswitch_16
    .end packed-switch
.end method
