.class final Lcom/samsung/android/mscs/MdnieScenarioControlService$ScrControlHandler;
.super Landroid/os/Handler;
.source "MdnieScenarioControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mscs/MdnieScenarioControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScrControlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mscs/MdnieScenarioControlService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 843
    iput-object p1, p0, this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .line 844
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 845
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 850
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_80

    .line 921
    :goto_7
    return-void

    .line 853
    :pswitch_8
    iget-object v1, p0, this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/samsung/android/mscs/MdnieScenarioControlService;->monitorForegroundActivity(Ljava/lang/String;II)V
    invoke-static {v1, v0, v2, v3}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$2500(Lcom/samsung/android/mscs/MdnieScenarioControlService;Ljava/lang/String;II)V

    goto :goto_7

    .line 858
    :pswitch_16
    :try_start_16
    iget-object v0, p0, this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    iget-object v0, v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_20} :catch_21

    goto :goto_7

    .line 859
    :catch_21
    move-exception v0

    goto :goto_7

    .line 864
    :pswitch_23
    iget-object v0, p0, this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/mscs/MdnieScenarioControlService;->setVideoMode(Z)V
    invoke-static {v0, v2}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$2600(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)V

    goto :goto_7

    .line 868
    :pswitch_29
    iget-object v0, p0, this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/mscs/MdnieScenarioControlService;->setVideoMode(Z)V
    invoke-static {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$2600(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)V

    goto :goto_7

    .line 872
    :pswitch_2f
    iget-object v0, p0, this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/mscs/MdnieScenarioControlService;->setBrowserMode()V
    invoke-static {v0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$2700(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V

    goto :goto_7

    .line 876
    :pswitch_35
    iget-object v0, p0, this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/mscs/MdnieScenarioControlService;->setGalleryMode(Z)V
    invoke-static {v0, v2}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$2800(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)V

    goto :goto_7

    .line 879
    :pswitch_3b
    iget-object v0, p0, this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/mscs/MdnieScenarioControlService;->setGalleryMode(Z)V
    invoke-static {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$2800(Lcom/samsung/android/mscs/MdnieScenarioControlService;Z)V

    goto :goto_7

    .line 883
    :pswitch_41
    iget-object v0, p0, this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    const-string v1, "LOW"

    # invokes: Lcom/samsung/android/mscs/MdnieScenarioControlService;->setGameMode(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$2900(Lcom/samsung/android/mscs/MdnieScenarioControlService;Ljava/lang/String;)V

    goto :goto_7

    .line 887
    :pswitch_49
    iget-object v0, p0, this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    const-string v1, "MID"

    # invokes: Lcom/samsung/android/mscs/MdnieScenarioControlService;->setGameMode(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$2900(Lcom/samsung/android/mscs/MdnieScenarioControlService;Ljava/lang/String;)V

    goto :goto_7

    .line 891
    :pswitch_51
    iget-object v0, p0, this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    const-string v1, "HIGH"

    # invokes: Lcom/samsung/android/mscs/MdnieScenarioControlService;->setGameMode(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$2900(Lcom/samsung/android/mscs/MdnieScenarioControlService;Ljava/lang/String;)V

    goto :goto_7

    .line 895
    :pswitch_59
    iget-object v0, p0, this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    const-string v1, "OUT"

    # invokes: Lcom/samsung/android/mscs/MdnieScenarioControlService;->setGameMode(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$2900(Lcom/samsung/android/mscs/MdnieScenarioControlService;Ljava/lang/String;)V

    goto :goto_7

    .line 899
    :pswitch_61
    iget-object v0, p0, this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/mscs/MdnieScenarioControlService;->setCameraMode()V
    invoke-static {v0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$3000(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V

    goto :goto_7

    .line 903
    :pswitch_67
    iget-object v0, p0, this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/mscs/MdnieScenarioControlService;->setEmailMode()V
    invoke-static {v0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$3100(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V

    goto :goto_7

    .line 907
    :pswitch_6d
    iget-object v0, p0, this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/mscs/MdnieScenarioControlService;->setEbookMode()V
    invoke-static {v0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$3200(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V

    goto :goto_7

    .line 911
    :pswitch_73
    iget-object v0, p0, this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/mscs/MdnieScenarioControlService;->setDMBMode()V
    invoke-static {v0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$3300(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V

    goto :goto_7

    .line 915
    :pswitch_79
    iget-object v0, p0, this$0:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    # invokes: Lcom/samsung/android/mscs/MdnieScenarioControlService;->setUIMode()V
    invoke-static {v0}, Lcom/samsung/android/mscs/MdnieScenarioControlService;->access$3400(Lcom/samsung/android/mscs/MdnieScenarioControlService;)V

    goto :goto_7

    .line 850
    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_8
        :pswitch_16
        :pswitch_79
        :pswitch_2f
        :pswitch_35
        :pswitch_61
        :pswitch_23
        :pswitch_67
        :pswitch_6d
        :pswitch_73
        :pswitch_3b
        :pswitch_29
        :pswitch_41
        :pswitch_49
        :pswitch_51
        :pswitch_59
    .end packed-switch
.end method
