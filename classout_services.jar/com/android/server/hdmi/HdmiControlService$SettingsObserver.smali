.class Lcom/android/server/hdmi/HdmiControlService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "HdmiControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 500
    iput-object p1, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 501
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 502
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 11
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v6, 0x1

    .line 507
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    .line 508
    .local v3, "option":Ljava/lang/String;
    iget-object v5, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v5, v3, v6}, Lcom/android/server/hdmi/HdmiControlService;->readBooleanSetting(Ljava/lang/String;Z)Z

    move-result v0

    .line 509
    .local v0, "enabled":Z
    const/4 v5, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_b0

    :cond_13
    :goto_13
    packed-switch v5, :pswitch_data_c6

    .line 533
    :cond_16
    :goto_16
    return-void

    .line 509
    :sswitch_17
    const-string/jumbo v7, "hdmi_control_enabled"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    const/4 v5, 0x0

    goto :goto_13

    :sswitch_22
    const-string/jumbo v7, "hdmi_control_auto_wakeup_enabled"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    move v5, v6

    goto :goto_13

    :sswitch_2d
    const-string/jumbo v7, "hdmi_control_auto_device_off_enabled"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    const/4 v5, 0x2

    goto :goto_13

    :sswitch_38
    const-string/jumbo v7, "mhl_input_switching_enabled"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    const/4 v5, 0x3

    goto :goto_13

    :sswitch_43
    const-string/jumbo v7, "mhl_power_charge_enabled"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    const/4 v5, 0x4

    goto :goto_13

    .line 511
    :pswitch_4e
    iget-object v5, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v5, v0}, Lcom/android/server/hdmi/HdmiControlService;->setControlEnabled(Z)V

    goto :goto_16

    .line 514
    :pswitch_54
    iget-object v5, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v5}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result v5

    if-eqz v5, :cond_65

    .line 515
    iget-object v5, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    invoke-static {v5}, Lcom/android/server/hdmi/HdmiControlService;->access$1000(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setAutoWakeup(Z)V

    .line 517
    :cond_65
    iget-object v5, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$1100(Z)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/hdmi/HdmiControlService;->setCecOption(II)V

    goto :goto_16

    .line 520
    :pswitch_6f
    iget-object v5, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mLocalDevices:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/hdmi/HdmiControlService;->access$1200(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_79
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 521
    .local v4, "type":I
    iget-object v5, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;
    invoke-static {v5}, Lcom/android/server/hdmi/HdmiControlService;->access$1300(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v2

    .line 522
    .local v2, "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    invoke-virtual {v2, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->setAutoDeviceOff(Z)V

    goto :goto_79

    .line 527
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "localDevice":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .end local v4    # "type":I
    :pswitch_97
    iget-object v5, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v5, v0}, Lcom/android/server/hdmi/HdmiControlService;->setMhlInputChangeEnabled(Z)V

    goto/16 :goto_16

    .line 530
    :pswitch_9e
    iget-object v5, p0, this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;
    invoke-static {v5}, Lcom/android/server/hdmi/HdmiControlService;->access$1400(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object v5

    const/16 v6, 0x66

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->toInt(Z)I
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$1100(Z)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->setOption(II)V

    goto/16 :goto_16

    .line 509
    nop

    :sswitch_data_b0
    .sparse-switch
        -0x77ca2448 -> :sswitch_17
        -0x4b40ad13 -> :sswitch_38
        -0x34cb9782 -> :sswitch_43
        0x2b4f3cc8 -> :sswitch_22
        0x610a030f -> :sswitch_2d
    .end sparse-switch

    :pswitch_data_c6
    .packed-switch 0x0
        :pswitch_4e
        :pswitch_54
        :pswitch_6f
        :pswitch_97
        :pswitch_9e
    .end packed-switch
.end method
