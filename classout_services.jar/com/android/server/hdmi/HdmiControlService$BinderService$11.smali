.class Lcom/android/server/hdmi/HdmiControlService$BinderService$11;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$BinderService;->sendStandby(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field final synthetic val$deviceId:I

.field final synthetic val$deviceType:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;II)V
    .registers 4

    .prologue
    .line 1518
    iput-object p1, p0, this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iput p2, p0, val$deviceId:I

    iput p3, p0, val$deviceType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1521
    iget-object v2, p0, this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mMhlController:Lcom/android/server/hdmi/HdmiMhlControllerStub;
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->access$1400(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object v2

    iget v3, p0, val$deviceId:I

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->getLocalDeviceById(I)Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;

    move-result-object v1

    .line 1522
    .local v1, "mhlDevice":Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;
    if-eqz v1, :cond_14

    .line 1523
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiMhlLocalDeviceStub;->sendStandby()V

    .line 1532
    :goto_13
    return-void

    .line 1526
    :cond_14
    iget-object v2, p0, this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v2, v2, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # getter for: Lcom/android/server/hdmi/HdmiControlService;->mCecController:Lcom/android/server/hdmi/HdmiCecController;
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiControlService;->access$1300(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v2

    iget v3, p0, val$deviceType:I

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiCecController;->getLocalDevice(I)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    .line 1527
    .local v0, "device":Lcom/android/server/hdmi/HdmiCecLocalDevice;
    if-nez v0, :cond_2c

    .line 1528
    const-string v2, "HdmiControlService"

    const-string v3, "Local device not available"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 1531
    :cond_2c
    iget v2, p0, val$deviceId:I

    invoke-virtual {v0, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendStandby(I)V

    goto :goto_13
.end method
