.class Lcom/android/server/fingerprint/FingerprintService$5;
.super Landroid/hardware/fingerprint/IFingerprintDaemonCallback$Stub;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .registers 2

    .prologue
    .line 1351
    iput-object p1, p0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IFingerprintDaemonCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcquired(JI)V
    .registers 7
    .param p1, "deviceId"    # J
    .param p3, "acquiredInfo"    # I

    .prologue
    .line 1366
    iget-object v0, p0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$5$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/fingerprint/FingerprintService$5$2;-><init>(Lcom/android/server/fingerprint/FingerprintService$5;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1372
    return-void
.end method

.method public onAuthenticated(JII)V
    .registers 12
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    .prologue
    .line 1376
    iget-object v0, p0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$5$3;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/fingerprint/FingerprintService$5$3;-><init>(Lcom/android/server/fingerprint/FingerprintService$5;JII)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1382
    return-void
.end method

.method public onEnrollResult(JIII)V
    .registers 15
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I
    .param p5, "remaining"    # I

    .prologue
    .line 1356
    iget-object v0, p0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v7, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$5$1;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/fingerprint/FingerprintService$5$1;-><init>(Lcom/android/server/fingerprint/FingerprintService$5;JIII)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1362
    return-void
.end method

.method public onError(JI)V
    .registers 7
    .param p1, "deviceId"    # J
    .param p3, "error"    # I

    .prologue
    .line 1386
    iget-object v0, p0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v0, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/fingerprint/FingerprintService$5$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/fingerprint/FingerprintService$5$4;-><init>(Lcom/android/server/fingerprint/FingerprintService$5;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1392
    return-void
.end method

.method public onRemoved(JII)V
    .registers 12
    .param p1, "deviceId"    # J
    .param p3, "fingerId"    # I
    .param p4, "groupId"    # I

    .prologue
    .line 1396
    iget-object v0, p0, this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v6, v0, Lcom/android/server/fingerprint/FingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/fingerprint/FingerprintService$5$5;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/fingerprint/FingerprintService$5$5;-><init>(Lcom/android/server/fingerprint/FingerprintService$5;JII)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1402
    return-void
.end method
