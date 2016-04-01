.class Lcom/sec/epdg/EpdgService$WifiToLteHOFailureRunnable;
.super Lcom/sec/epdg/EpdgService$HORunnable;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiToLteHOFailureRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;I)V
    .registers 3
    .param p2, "networkType"    # I

    .prologue
    .line 3525
    iput-object p1, p0, this$0:Lcom/sec/epdg/EpdgService;

    .line 3526
    invoke-direct {p0, p1, p2}, Lcom/sec/epdg/EpdgService$HORunnable;-><init>(Lcom/sec/epdg/EpdgService;I)V

    .line 3527
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 3531
    const-string v0, "[EPDGService]"

    const-string v1, "WifiToLteHOFailureRunnable()"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3532
    iget-object v0, p0, this$0:Lcom/sec/epdg/EpdgService;

    const/4 v1, 0x0

    invoke-virtual {p0}, getNetworkType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgUtils;->getApnTypebyNetworkType(I)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/sec/epdg/EpdgService;->notifyW2LHandoverResult(ZLjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/sec/epdg/EpdgService;->access$5300(Lcom/sec/epdg/EpdgService;ZLjava/lang/String;)V

    .line 3533
    return-void
.end method
