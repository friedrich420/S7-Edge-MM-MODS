.class Landroid/telecom/RemoteConnection$VideoProvider$1;
.super Ljava/lang/Object;
.source "RemoteConnection.java"

# interfaces
.implements Lcom/android/internal/telecom/IVideoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnection$VideoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/RemoteConnection$VideoProvider;


# direct methods
.method constructor <init>(Landroid/telecom/RemoteConnection$VideoProvider;)V
    .registers 2

    .prologue
    .line 322
    iput-object p1, p0, this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 380
    const/4 v0, 0x0

    return-object v0
.end method

.method public changeCallDataUsage(J)V
    .registers 6
    .param p1, "dataUsage"    # J

    .prologue
    .line 358
    iget-object v2, p0, this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    # getter for: Landroid/telecom/RemoteConnection$VideoProvider;->mCallbacks:Ljava/util/Set;
    invoke-static {v2}, Landroid/telecom/RemoteConnection$VideoProvider;->access$000(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .line 359
    .local v1, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v1, v2, p1, p2}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onCallDataUsageChanged(Landroid/telecom/RemoteConnection$VideoProvider;J)V

    goto :goto_a

    .line 361
    .end local v1    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    :cond_1c
    return-void
.end method

.method public changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V
    .registers 5
    .param p1, "cameraCapabilities"    # Landroid/telecom/VideoProfile$CameraCapabilities;

    .prologue
    .line 366
    iget-object v2, p0, this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    # getter for: Landroid/telecom/RemoteConnection$VideoProvider;->mCallbacks:Ljava/util/Set;
    invoke-static {v2}, Landroid/telecom/RemoteConnection$VideoProvider;->access$000(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .line 367
    .local v1, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v1, v2, p1}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onCameraCapabilitiesChanged(Landroid/telecom/RemoteConnection$VideoProvider;Landroid/telecom/VideoProfile$CameraCapabilities;)V

    goto :goto_a

    .line 369
    .end local v1    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    :cond_1c
    return-void
.end method

.method public changePeerDimensions(II)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 351
    iget-object v2, p0, this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    # getter for: Landroid/telecom/RemoteConnection$VideoProvider;->mCallbacks:Ljava/util/Set;
    invoke-static {v2}, Landroid/telecom/RemoteConnection$VideoProvider;->access$000(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .line 352
    .local v1, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v1, v2, p1, p2}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onPeerDimensionsChanged(Landroid/telecom/RemoteConnection$VideoProvider;II)V

    goto :goto_a

    .line 354
    .end local v1    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    :cond_1c
    return-void
.end method

.method public changeVideoQuality(I)V
    .registers 5
    .param p1, "videoQuality"    # I

    .prologue
    .line 373
    iget-object v2, p0, this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    # getter for: Landroid/telecom/RemoteConnection$VideoProvider;->mCallbacks:Ljava/util/Set;
    invoke-static {v2}, Landroid/telecom/RemoteConnection$VideoProvider;->access$000(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .line 374
    .local v1, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v1, v2, p1}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onVideoQualityChanged(Landroid/telecom/RemoteConnection$VideoProvider;I)V

    goto :goto_a

    .line 376
    .end local v1    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    :cond_1c
    return-void
.end method

.method public handleCallSessionEvent(I)V
    .registers 5
    .param p1, "event"    # I

    .prologue
    .line 344
    iget-object v2, p0, this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    # getter for: Landroid/telecom/RemoteConnection$VideoProvider;->mCallbacks:Ljava/util/Set;
    invoke-static {v2}, Landroid/telecom/RemoteConnection$VideoProvider;->access$000(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .line 345
    .local v1, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v1, v2, p1}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onCallSessionEvent(Landroid/telecom/RemoteConnection$VideoProvider;I)V

    goto :goto_a

    .line 347
    .end local v1    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    :cond_1c
    return-void
.end method

.method public receiveSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .registers 5
    .param p1, "videoProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 325
    iget-object v2, p0, this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    # getter for: Landroid/telecom/RemoteConnection$VideoProvider;->mCallbacks:Ljava/util/Set;
    invoke-static {v2}, Landroid/telecom/RemoteConnection$VideoProvider;->access$000(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .line 326
    .local v1, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v1, v2, p1}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onSessionModifyRequestReceived(Landroid/telecom/RemoteConnection$VideoProvider;Landroid/telecom/VideoProfile;)V

    goto :goto_a

    .line 328
    .end local v1    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    :cond_1c
    return-void
.end method

.method public receiveSessionModifyResponse(ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .registers 7
    .param p1, "status"    # I
    .param p2, "requestedProfile"    # Landroid/telecom/VideoProfile;
    .param p3, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 333
    iget-object v2, p0, this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    # getter for: Landroid/telecom/RemoteConnection$VideoProvider;->mCallbacks:Ljava/util/Set;
    invoke-static {v2}, Landroid/telecom/RemoteConnection$VideoProvider;->access$000(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .line 334
    .local v1, "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    iget-object v2, p0, this$0:Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {v1, v2, p1, p2, p3}, Landroid/telecom/RemoteConnection$VideoProvider$Callback;->onSessionModifyResponseReceived(Landroid/telecom/RemoteConnection$VideoProvider;ILandroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    goto :goto_a

    .line 340
    .end local v1    # "l":Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    :cond_1c
    return-void
.end method
