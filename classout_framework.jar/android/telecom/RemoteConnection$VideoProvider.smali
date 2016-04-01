.class public Landroid/telecom/RemoteConnection$VideoProvider;
.super Ljava/lang/Object;
.source "RemoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/RemoteConnection$VideoProvider$Callback;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/RemoteConnection$VideoProvider$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mVideoCallbackDelegate:Lcom/android/internal/telecom/IVideoCallback;

.field private final mVideoCallbackServant:Landroid/telecom/VideoCallbackServant;

.field private final mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;


# direct methods
.method constructor <init>(Lcom/android/internal/telecom/IVideoProvider;)V
    .registers 6
    .param p1, "videoProviderBinder"    # Lcom/android/internal/telecom/IVideoProvider;

    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    new-instance v0, Landroid/telecom/RemoteConnection$VideoProvider$1;

    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnection$VideoProvider$1;-><init>(Landroid/telecom/RemoteConnection$VideoProvider;)V

    iput-object v0, p0, mVideoCallbackDelegate:Lcom/android/internal/telecom/IVideoCallback;

    .line 384
    new-instance v0, Landroid/telecom/VideoCallbackServant;

    iget-object v1, p0, mVideoCallbackDelegate:Lcom/android/internal/telecom/IVideoCallback;

    invoke-direct {v0, v1}, Landroid/telecom/VideoCallbackServant;-><init>(Lcom/android/internal/telecom/IVideoCallback;)V

    iput-object v0, p0, mVideoCallbackServant:Landroid/telecom/VideoCallbackServant;

    .line 394
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, mCallbacks:Ljava/util/Set;

    .line 398
    iput-object p1, p0, mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    .line 400
    :try_start_26
    iget-object v0, p0, mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    iget-object v1, p0, mVideoCallbackServant:Landroid/telecom/VideoCallbackServant;

    invoke-virtual {v1}, Landroid/telecom/VideoCallbackServant;->getStub()Lcom/android/internal/telecom/IVideoCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telecom/IVideoCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IVideoProvider;->addVideoCallback(Landroid/os/IBinder;)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_35} :catch_36

    .line 403
    :goto_35
    return-void

    .line 401
    :catch_36
    move-exception v0

    goto :goto_35
.end method

.method static synthetic access$000(Landroid/telecom/RemoteConnection$VideoProvider;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Landroid/telecom/RemoteConnection$VideoProvider;

    .prologue
    .line 221
    iget-object v0, p0, mCallbacks:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public registerCallback(Landroid/telecom/RemoteConnection$VideoProvider$Callback;)V
    .registers 3
    .param p1, "l"    # Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .prologue
    .line 411
    iget-object v0, p0, mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 412
    return-void
.end method

.method public requestCallDataUsage()V
    .registers 2

    .prologue
    .line 543
    :try_start_0
    iget-object v0, p0, mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->requestCallDataUsage()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 546
    :goto_5
    return-void

    .line 544
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public requestCameraCapabilities()V
    .registers 2

    .prologue
    .line 530
    :try_start_0
    iget-object v0, p0, mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->requestCameraCapabilities()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 533
    :goto_5
    return-void

    .line 531
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    .registers 4
    .param p1, "fromProfile"    # Landroid/telecom/VideoProfile;
    .param p2, "toProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 503
    :try_start_0
    iget-object v0, p0, mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 506
    :goto_5
    return-void

    .line 504
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .registers 3
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 517
    :try_start_0
    iget-object v0, p0, mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 520
    :goto_5
    return-void

    .line 518
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setCamera(Ljava/lang/String;)V
    .registers 3
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 433
    :try_start_0
    iget-object v0, p0, mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setCamera(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 436
    :goto_5
    return-void

    .line 434
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setDeviceOrientation(I)V
    .registers 3
    .param p1, "rotation"    # I

    .prologue
    .line 475
    :try_start_0
    iget-object v0, p0, mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setDeviceOrientation(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 478
    :goto_5
    return-void

    .line 476
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 461
    :try_start_0
    iget-object v0, p0, mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setDisplaySurface(Landroid/view/Surface;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 464
    :goto_5
    return-void

    .line 462
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setPauseImage(Landroid/net/Uri;)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 556
    :try_start_0
    iget-object v0, p0, mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setPauseImage(Landroid/net/Uri;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 559
    :goto_5
    return-void

    .line 557
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 447
    :try_start_0
    iget-object v0, p0, mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setPreviewSurface(Landroid/view/Surface;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 450
    :goto_5
    return-void

    .line 448
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setZoom(F)V
    .registers 3
    .param p1, "value"    # F

    .prologue
    .line 488
    :try_start_0
    iget-object v0, p0, mVideoProviderBinder:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setZoom(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 491
    :goto_5
    return-void

    .line 489
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public unregisterCallback(Landroid/telecom/RemoteConnection$VideoProvider$Callback;)V
    .registers 3
    .param p1, "l"    # Landroid/telecom/RemoteConnection$VideoProvider$Callback;

    .prologue
    .line 420
    iget-object v0, p0, mCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 421
    return-void
.end method
