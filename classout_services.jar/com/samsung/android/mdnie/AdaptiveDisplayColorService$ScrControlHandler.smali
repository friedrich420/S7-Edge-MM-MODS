.class final Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;
.super Landroid/os/Handler;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScrControlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 974
    iput-object p1, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    .line 975
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 976
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 980
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_7a

    .line 1018
    :cond_5
    :goto_5
    return-void

    .line 982
    :pswitch_6
    iget-object v2, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->monitorForegroundBrowser(Ljava/lang/String;II)V
    invoke-static {v2, v1, v3, v4}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$2500(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;Ljava/lang/String;II)V

    goto :goto_5

    .line 986
    :pswitch_14
    :try_start_14
    iget-object v1, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    iget-object v1, v1, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1e} :catch_1f

    goto :goto_5

    .line 987
    :catch_1f
    move-exception v0

    .line 988
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->DEBUG:Z
    invoke-static {v1}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$800(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 989
    const-string v1, "AdaptiveDisplayColorService"

    const-string/jumbo v2, "failed to onForegroundActivitiesChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 994
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_31
    iget-object v1, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->sendRgbAverage()V
    invoke-static {v1}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$2600(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    goto :goto_5

    .line 997
    :pswitch_37
    iget-object v1, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->animateScrRGB()V
    invoke-static {v1}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$2700(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    goto :goto_5

    .line 1000
    :pswitch_3d
    iget-object v1, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->setVideoMode()V
    invoke-static {v1}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$2800(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    goto :goto_5

    .line 1003
    :pswitch_43
    iget-object v1, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->setBrowserMode()V
    invoke-static {v1}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$2900(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    goto :goto_5

    .line 1006
    :pswitch_49
    iget-object v1, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->terminateVideoMode()V
    invoke-static {v1}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$3000(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    goto :goto_5

    .line 1009
    :pswitch_4f
    iget-object v1, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # invokes: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->terminateScrRGB()V
    invoke-static {v1}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$3100(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)V

    goto :goto_5

    .line 1012
    :pswitch_55
    iget-object v1, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v1}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$3200(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Landroid/hardware/SensorManager;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1013
    iget-object v1, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v1}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$3200(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v2}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$3300(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Landroid/hardware/SensorEventListener;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;
    invoke-static {v3}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$3400(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Landroid/hardware/Sensor;

    move-result-object v3

    const/4 v4, 0x3

    iget-object v5, p0, this$0:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;

    # getter for: Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;
    invoke-static {v5}, Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;->access$700(Lcom/samsung/android/mdnie/AdaptiveDisplayColorService;)Lcom/samsung/android/mdnie/AdaptiveDisplayColorService$ScrControlHandler;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_5

    .line 980
    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_6
        :pswitch_14
        :pswitch_31
        :pswitch_37
        :pswitch_3d
        :pswitch_43
        :pswitch_49
        :pswitch_4f
        :pswitch_55
    .end packed-switch
.end method
