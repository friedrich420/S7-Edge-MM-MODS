.class final Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "SoundPathControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$1;

    .prologue
    .line 466
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;-><init>(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 468
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 469
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 470
    const-string v1, "android.samsung.media.action.AUDIO_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 471
    const-string v1, "android.bluetooth.device.action.ALIAS_CHANGED "

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 472
    const-string v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 473
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$500(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0, v2, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 474
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 482
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, "action":Ljava/lang/String;
    const-string v9, "SoundPathController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const-string v9, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 487
    const-string v9, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 488
    .local v7, "stream":I
    const-string v9, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 490
    .local v2, "devices":I
    const-string v9, "android.media.EXTRA_VOLUME_STREAM_MUSIC_ADDRESS"

    const-string v10, ""

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 491
    .local v1, "address":Ljava/lang/String;
    const-string v9, "SoundPathController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " stream use 0x "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mStream:I
    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$800(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)I

    move-result v9

    if-ne v7, v9, :cond_1

    .line 493
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mActiveDevice:I
    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$900(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)I

    move-result v5

    .line 494
    .local v5, "oldActiveDevice":I
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mActiveAddress:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$1000(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)Ljava/lang/String;

    move-result-object v4

    .line 495
    .local v4, "oldActiveAddress":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # setter for: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mActiveDevice:I
    invoke-static {v9, v2}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$902(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;I)I

    .line 496
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # setter for: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mActiveAddress:Ljava/lang/String;
    invoke-static {v9, v1}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$1002(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 497
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mActiveDevice:I
    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$900(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)I

    move-result v9

    if-ne v5, v9, :cond_0

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mActiveAddress:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$1000(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 498
    :cond_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->updateList()V
    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$600(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)V

    .line 499
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;
    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$700(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;->sendEmptyMessage(I)Z

    .line 523
    .end local v1    # "address":Ljava/lang/String;
    .end local v2    # "devices":I
    .end local v4    # "oldActiveAddress":Ljava/lang/String;
    .end local v5    # "oldActiveDevice":I
    .end local v7    # "stream":I
    :cond_1
    :goto_0
    return-void

    .line 503
    :cond_2
    const-string v9, "android.samsung.media.action.AUDIO_MODE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 504
    const-string v9, "android.samsung.media.extra.AUDIO_MODE"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 505
    .local v3, "mode":I
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # setter for: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mAudioMode:I
    invoke-static {v9, v3}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$1102(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;I)I

    .line 506
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->updateStreamAndActiveDevice()V
    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$1200(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)V

    .line 507
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->updateList()V
    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$600(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)V

    .line 508
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;
    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$700(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 510
    .end local v3    # "mode":I
    :cond_3
    const-string v9, "android.bluetooth.device.action.ALIAS_CHANGED "

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 511
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;
    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$700(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 513
    :cond_4
    const-string v9, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 514
    const-string v9, "android.hardware.display.extra.WIFI_DISPLAY_STATUS"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/WifiDisplayStatus;

    .line 515
    .local v6, "status":Landroid/hardware/display/WifiDisplayStatus;
    if-eqz v6, :cond_1

    .line 516
    invoke-virtual {v6}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v8

    .line 517
    .local v8, "wfdStatus":I
    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 518
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # invokes: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->updateList()V
    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$600(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)V

    .line 519
    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$Receiver;->this$0:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;

    # getter for: Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->mHandler:Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;
    invoke-static {v9}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;->access$700(Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl;)Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/policy/SoundPathControllerImpl$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
