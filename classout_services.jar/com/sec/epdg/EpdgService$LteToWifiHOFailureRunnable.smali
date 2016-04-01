.class Lcom/sec/epdg/EpdgService$LteToWifiHOFailureRunnable;
.super Lcom/sec/epdg/EpdgService$HORunnable;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LteToWifiHOFailureRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;I)V
    .registers 3
    .param p2, "networkType"    # I

    .prologue
    .line 3573
    iput-object p1, p0, this$0:Lcom/sec/epdg/EpdgService;

    .line 3574
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService$HORunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    .line 3575
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 3579
    const-string v0, "[EPDGService]"

    const-string v1, "LteToWifiHOFailureRunnable()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3580
    iget-object v0, p0, this$0:Lcom/sec/epdg/EpdgService;

    const/4 v1, 0x0

    invoke-virtual {p0}, getNetworkType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sec/epdg/EpdgService;->notifyL2WHandoverResult(ZLjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/sec/epdg/EpdgService;->access$5200(Lcom/sec/epdg/EpdgService;ZLjava/lang/String;)V

    .line 3581
    return-void
.end method
