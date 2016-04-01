.class Lcom/android/server/hdmi/HdmiControlService$BinderService$12;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/HdmiControlService$BinderService;->startOneTouchRecord(I[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

.field final synthetic val$recordSource:[B

.field final synthetic val$recorderAddress:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;I[B)V
    .registers 4

    .prologue
    .line 1545
    iput-object p1, p0, this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iput p2, p0, val$recorderAddress:I

    iput-object p3, p0, val$recordSource:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1548
    iget-object v0, p0, this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    .line 1549
    const-string v0, "HdmiControlService"

    const-string v1, "TV device is not enabled."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    :goto_11
    return-void

    .line 1552
    :cond_12
    iget-object v0, p0, this$1:Lcom/android/server/hdmi/HdmiControlService$BinderService;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    # invokes: Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->access$1000(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    iget v1, p0, val$recorderAddress:I

    iget-object v2, p0, val$recordSource:[B

    invoke-virtual {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->startOneTouchRecord(I[B)I

    goto :goto_11
.end method
