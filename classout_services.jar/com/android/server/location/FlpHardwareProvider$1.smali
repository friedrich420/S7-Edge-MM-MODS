.class Lcom/android/server/location/FlpHardwareProvider$1;
.super Landroid/hardware/location/IFusedLocationHardware$Stub;
.source "FlpHardwareProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/FlpHardwareProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/FlpHardwareProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/FlpHardwareProvider;)V
    .registers 2

    .prologue
    .line 351
    iput-object p1, p0, this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-direct {p0}, Landroid/hardware/location/IFusedLocationHardware$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public flushBatchedLocations()V
    .registers 3

    .prologue
    .line 402
    invoke-virtual {p0}, getVersion()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_d

    .line 403
    iget-object v0, p0, this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeFlushBatchedLocations()V
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$900(Lcom/android/server/location/FlpHardwareProvider;)V

    .line 408
    :goto_c
    return-void

    .line 405
    :cond_d
    const-string v0, "FlpHardwareProvider"

    const-string v1, "Tried to call flushBatchedLocations on an unsupported implementation"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method public getSupportedBatchSize()I
    .registers 2

    .prologue
    .line 377
    iget-object v0, p0, this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeGetBatchSize()I
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$400(Lcom/android/server/location/FlpHardwareProvider;)I

    move-result v0

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 432
    iget-object v0, p0, this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->getVersion()I
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$1400(Lcom/android/server/location/FlpHardwareProvider;)I

    move-result v0

    return v0
.end method

.method public injectDeviceContext(I)V
    .registers 3
    .param p1, "deviceEnabledContext"    # I

    .prologue
    .line 427
    iget-object v0, p0, this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeInjectDeviceContext(I)V
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->access$1300(Lcom/android/server/location/FlpHardwareProvider;I)V

    .line 428
    return-void
.end method

.method public injectDiagnosticData(Ljava/lang/String;)V
    .registers 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 417
    iget-object v0, p0, this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeInjectDiagnosticData(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->access$1100(Lcom/android/server/location/FlpHardwareProvider;Ljava/lang/String;)V

    .line 418
    return-void
.end method

.method public registerSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V
    .registers 5
    .param p1, "eventSink"    # Landroid/hardware/location/IFusedLocationHardwareSink;

    .prologue
    .line 354
    iget-object v0, p0, this$0:Lcom/android/server/location/FlpHardwareProvider;

    # getter for: Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$100(Lcom/android/server/location/FlpHardwareProvider;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 356
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/location/FlpHardwareProvider;

    # getter for: Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$200(Lcom/android/server/location/FlpHardwareProvider;)Landroid/hardware/location/IFusedLocationHardwareSink;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 357
    const-string v0, "FlpHardwareProvider"

    const-string v2, "Replacing an existing IFusedLocationHardware sink"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_16
    iget-object v0, p0, this$0:Lcom/android/server/location/FlpHardwareProvider;

    # setter for: Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->access$202(Lcom/android/server/location/FlpHardwareProvider;Landroid/hardware/location/IFusedLocationHardwareSink;)Landroid/hardware/location/IFusedLocationHardwareSink;

    .line 361
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_22

    .line 362
    iget-object v0, p0, this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->maybeSendCapabilities()V
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$300(Lcom/android/server/location/FlpHardwareProvider;)V

    .line 363
    return-void

    .line 361
    :catchall_22
    move-exception v0

    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public requestBatchOfLocations(I)V
    .registers 3
    .param p1, "batchSizeRequested"    # I

    .prologue
    .line 397
    iget-object v0, p0, this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeRequestBatchedLocation(I)V
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->access$800(Lcom/android/server/location/FlpHardwareProvider;I)V

    .line 398
    return-void
.end method

.method public startBatching(ILandroid/location/FusedBatchOptions;)V
    .registers 4
    .param p1, "requestId"    # I
    .param p2, "options"    # Landroid/location/FusedBatchOptions;

    .prologue
    .line 382
    iget-object v0, p0, this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeStartBatching(ILandroid/location/FusedBatchOptions;)V
    invoke-static {v0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->access$500(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V

    .line 383
    return-void
.end method

.method public stopBatching(I)V
    .registers 3
    .param p1, "requestId"    # I

    .prologue
    .line 387
    iget-object v0, p0, this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeStopBatching(I)V
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->access$600(Lcom/android/server/location/FlpHardwareProvider;I)V

    .line 388
    return-void
.end method

.method public supportsDeviceContextInjection()Z
    .registers 2

    .prologue
    .line 422
    iget-object v0, p0, this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeIsDeviceContextSupported()Z
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$1200(Lcom/android/server/location/FlpHardwareProvider;)Z

    move-result v0

    return v0
.end method

.method public supportsDiagnosticDataInjection()Z
    .registers 2

    .prologue
    .line 412
    iget-object v0, p0, this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeIsDiagnosticSupported()Z
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$1000(Lcom/android/server/location/FlpHardwareProvider;)Z

    move-result v0

    return v0
.end method

.method public unregisterSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V
    .registers 5
    .param p1, "eventSink"    # Landroid/hardware/location/IFusedLocationHardwareSink;

    .prologue
    .line 367
    iget-object v0, p0, this$0:Lcom/android/server/location/FlpHardwareProvider;

    # getter for: Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$100(Lcom/android/server/location/FlpHardwareProvider;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 369
    :try_start_7
    iget-object v0, p0, this$0:Lcom/android/server/location/FlpHardwareProvider;

    # getter for: Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$200(Lcom/android/server/location/FlpHardwareProvider;)Landroid/hardware/location/IFusedLocationHardwareSink;

    move-result-object v0

    if-ne v0, p1, :cond_15

    .line 370
    iget-object v0, p0, this$0:Lcom/android/server/location/FlpHardwareProvider;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;
    invoke-static {v0, v2}, Lcom/android/server/location/FlpHardwareProvider;->access$202(Lcom/android/server/location/FlpHardwareProvider;Landroid/hardware/location/IFusedLocationHardwareSink;)Landroid/hardware/location/IFusedLocationHardwareSink;

    .line 372
    :cond_15
    monitor-exit v1

    .line 373
    return-void

    .line 372
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public updateBatchingOptions(ILandroid/location/FusedBatchOptions;)V
    .registers 4
    .param p1, "requestId"    # I
    .param p2, "options"    # Landroid/location/FusedBatchOptions;

    .prologue
    .line 392
    iget-object v0, p0, this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeUpdateBatchingOptions(ILandroid/location/FusedBatchOptions;)V
    invoke-static {v0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->access$700(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V

    .line 393
    return-void
.end method
