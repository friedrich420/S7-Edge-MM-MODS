.class final Lcom/android/server/input/InputManagerService$InputManagerHandler;
.super Landroid/os/Handler;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 3257
    iput-object p1, p0, this$0:Lcom/android/server/input/InputManagerService;

    .line 3258
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 3259
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 3263
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_96

    .line 3308
    :goto_6
    :pswitch_6
    return-void

    .line 3265
    :pswitch_7
    iget-object v5, p0, this$0:Lcom/android/server/input/InputManagerService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, [Landroid/view/InputDevice;

    check-cast v4, [Landroid/view/InputDevice;

    # invokes: Lcom/android/server/input/InputManagerService;->deliverInputDevicesChanged([Landroid/view/InputDevice;)V
    invoke-static {v5, v4}, Lcom/android/server/input/InputManagerService;->access$900(Lcom/android/server/input/InputManagerService;[Landroid/view/InputDevice;)V

    goto :goto_6

    .line 3268
    :pswitch_13
    iget-object v4, p0, this$0:Lcom/android/server/input/InputManagerService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/input/InputManagerService;->handleSwitchKeyboardLayout(II)V
    invoke-static {v4, v5, v6}, Lcom/android/server/input/InputManagerService;->access$1000(Lcom/android/server/input/InputManagerService;II)V

    goto :goto_6

    .line 3271
    :pswitch_1d
    iget-object v4, p0, this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V
    invoke-static {v4}, Lcom/android/server/input/InputManagerService;->access$1100(Lcom/android/server/input/InputManagerService;)V

    goto :goto_6

    .line 3274
    :pswitch_23
    iget-object v4, p0, this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->updateKeyboardLayouts()V
    invoke-static {v4}, Lcom/android/server/input/InputManagerService;->access$600(Lcom/android/server/input/InputManagerService;)V

    goto :goto_6

    .line 3277
    :pswitch_29
    iget-object v4, p0, this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->reloadDeviceAliases()V
    invoke-static {v4}, Lcom/android/server/input/InputManagerService;->access$700(Lcom/android/server/input/InputManagerService;)V

    goto :goto_6

    .line 3280
    :pswitch_2f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 3281
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    int-to-long v6, v6

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long v2, v4, v6

    .line 3282
    .local v2, "whenNanos":J
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 3283
    .local v1, "inTabletMode":Z
    iget-object v4, p0, this$0:Lcom/android/server/input/InputManagerService;

    # invokes: Lcom/android/server/input/InputManagerService;->deliverTabletModeChanged(JZ)V
    invoke-static {v4, v2, v3, v1}, Lcom/android/server/input/InputManagerService;->access$1200(Lcom/android/server/input/InputManagerService;JZ)V

    goto :goto_6

    .line 3287
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "inTabletMode":Z
    .end local v2    # "whenNanos":J
    :pswitch_52
    iget-object v5, p0, this$0:Lcom/android/server/input/InputManagerService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    # invokes: Lcom/android/server/input/InputManagerService;->showTouchpadOnOffToast(I)V
    invoke-static {v5, v4}, Lcom/android/server/input/InputManagerService;->access$1300(Lcom/android/server/input/InputManagerService;I)V

    goto :goto_6

    .line 3291
    :pswitch_60
    iget-object v5, p0, this$0:Lcom/android/server/input/InputManagerService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    # invokes: Lcom/android/server/input/InputManagerService;->sendSGReport(Ljava/lang/String;)V
    invoke-static {v5, v4}, Lcom/android/server/input/InputManagerService;->access$1400(Lcom/android/server/input/InputManagerService;Ljava/lang/String;)V

    goto :goto_6

    .line 3295
    :pswitch_6a
    iget-object v5, p0, this$0:Lcom/android/server/input/InputManagerService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    # invokes: Lcom/android/server/input/InputManagerService;->sendVRProximityEventChanged(I)V
    invoke-static {v5, v4}, Lcom/android/server/input/InputManagerService;->access$1500(Lcom/android/server/input/InputManagerService;I)V

    goto :goto_6

    .line 3298
    :pswitch_78
    iget-object v5, p0, this$0:Lcom/android/server/input/InputManagerService;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    # invokes: Lcom/android/server/input/InputManagerService;->sendVRTAEventChanged(I)V
    invoke-static {v5, v4}, Lcom/android/server/input/InputManagerService;->access$1600(Lcom/android/server/input/InputManagerService;I)V

    goto :goto_6

    .line 3303
    :pswitch_86
    iget-object v4, p0, this$0:Lcom/android/server/input/InputManagerService;

    const/4 v5, 0x1

    # invokes: Lcom/android/server/input/InputManagerService;->setDisplayInputDrop(ZZZ)V
    invoke-static {v4, v6, v6, v5}, Lcom/android/server/input/InputManagerService;->access$1700(Lcom/android/server/input/InputManagerService;ZZZ)V

    .line 3304
    const-string v4, "InputManager"

    const-string/jumbo v5, "finished setDisplayInputDropForMillisecond : main dropped(false), sub dropped(false)"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 3263
    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_7
        :pswitch_13
        :pswitch_1d
        :pswitch_23
        :pswitch_29
        :pswitch_2f
        :pswitch_52
        :pswitch_60
        :pswitch_86
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6a
        :pswitch_78
    .end packed-switch
.end method
