.class public Landroid/telecom/VideoCallImpl;
.super Landroid/telecom/InCallService$VideoCall;
.source "VideoCallImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/VideoCallImpl$MessageHandler;,
        Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;
    }
.end annotation


# instance fields
.field private final mBinder:Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

.field private mCall:Landroid/telecom/Call;

.field private mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mHandler:Landroid/os/Handler;

.field private final mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

.field private mVideoQuality:I


# direct methods
.method constructor <init>(Lcom/android/internal/telecom/IVideoProvider;Landroid/telecom/Call;)V
    .registers 6
    .param p1, "videoProvider"    # Lcom/android/internal/telecom/IVideoProvider;
    .param p2, "call"    # Landroid/telecom/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 178
    invoke-direct {p0}, Landroid/telecom/InCallService$VideoCall;-><init>()V

    .line 44
    iput v2, p0, mVideoQuality:I

    .line 47
    new-instance v0, Landroid/telecom/VideoCallImpl$1;

    invoke-direct {v0, p0}, Landroid/telecom/VideoCallImpl$1;-><init>(Landroid/telecom/VideoCallImpl;)V

    iput-object v0, p0, mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 179
    iput-object p1, p0, mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    .line 180
    iget-object v0, p0, mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 182
    new-instance v0, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;-><init>(Landroid/telecom/VideoCallImpl;Landroid/telecom/VideoCallImpl$1;)V

    iput-object v0, p0, mBinder:Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

    .line 183
    iget-object v0, p0, mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    iget-object v1, p0, mBinder:Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IVideoProvider;->addVideoCallback(Landroid/os/IBinder;)V

    .line 184
    iput-object p2, p0, mCall:Landroid/telecom/Call;

    .line 185
    return-void
.end method

.method static synthetic access$000(Landroid/telecom/VideoCallImpl;)Lcom/android/internal/telecom/IVideoProvider;
    .registers 2
    .param p0, "x0"    # Landroid/telecom/VideoCallImpl;

    .prologue
    .line 39
    iget-object v0, p0, mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    return-object v0
.end method

.method static synthetic access$100(Landroid/telecom/VideoCallImpl;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/telecom/VideoCallImpl;

    .prologue
    .line 39
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/telecom/VideoCallImpl;)Landroid/telecom/InCallService$VideoCall$Callback;
    .registers 2
    .param p0, "x0"    # Landroid/telecom/VideoCallImpl;

    .prologue
    .line 39
    iget-object v0, p0, mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    return-object v0
.end method

.method static synthetic access$302(Landroid/telecom/VideoCallImpl;I)I
    .registers 2
    .param p0, "x0"    # Landroid/telecom/VideoCallImpl;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, mVideoQuality:I

    return p1
.end method


# virtual methods
.method public destroy()V
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    invoke-virtual {p0, v0}, unregisterCallback(Landroid/telecom/InCallService$VideoCall$Callback;)V

    .line 189
    return-void
.end method

.method public registerCallback(Landroid/telecom/InCallService$VideoCall$Callback;)V
    .registers 3
    .param p1, "callback"    # Landroid/telecom/InCallService$VideoCall$Callback;

    .prologue
    .line 193
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, registerCallback(Landroid/telecom/InCallService$VideoCall$Callback;Landroid/os/Handler;)V

    .line 194
    return-void
.end method

.method public registerCallback(Landroid/telecom/InCallService$VideoCall$Callback;Landroid/os/Handler;)V
    .registers 5
    .param p1, "callback"    # Landroid/telecom/InCallService$VideoCall$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 198
    iput-object p1, p0, mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    .line 199
    if-nez p2, :cond_10

    .line 200
    new-instance v0, Landroid/telecom/VideoCallImpl$MessageHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/VideoCallImpl$MessageHandler;-><init>(Landroid/telecom/VideoCallImpl;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 204
    :goto_f
    return-void

    .line 202
    :cond_10
    new-instance v0, Landroid/telecom/VideoCallImpl$MessageHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/VideoCallImpl$MessageHandler;-><init>(Landroid/telecom/VideoCallImpl;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    goto :goto_f
.end method

.method public requestCallDataUsage()V
    .registers 2

    .prologue
    .line 300
    :try_start_0
    iget-object v0, p0, mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->requestCallDataUsage()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 303
    :goto_5
    return-void

    .line 301
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public requestCameraCapabilities()V
    .registers 2

    .prologue
    .line 292
    :try_start_0
    iget-object v0, p0, mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0}, Lcom/android/internal/telecom/IVideoProvider;->requestCameraCapabilities()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 295
    :goto_5
    return-void

    .line 293
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V
    .registers 5
    .param p1, "requestProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 273
    :try_start_0
    new-instance v0, Landroid/telecom/VideoProfile;

    iget-object v1, p0, mCall:Landroid/telecom/Call;

    invoke-virtual {v1}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call$Details;->getVideoState()I

    move-result v1

    iget v2, p0, mVideoQuality:I

    invoke-direct {v0, v1, v2}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 276
    .local v0, "originalProfile":Landroid/telecom/VideoProfile;
    iget-object v1, p0, mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v1, v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    .line 279
    .end local v0    # "originalProfile":Landroid/telecom/VideoProfile;
    :goto_16
    return-void

    .line 277
    :catch_17
    move-exception v1

    goto :goto_16
.end method

.method public sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    .registers 3
    .param p1, "responseProfile"    # Landroid/telecom/VideoProfile;

    .prologue
    .line 284
    :try_start_0
    iget-object v0, p0, mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 287
    :goto_5
    return-void

    .line 285
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setCamera(Ljava/lang/String;)V
    .registers 3
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 222
    :try_start_0
    iget-object v0, p0, mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setCamera(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 225
    :goto_5
    return-void

    .line 223
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setDeviceOrientation(I)V
    .registers 3
    .param p1, "rotation"    # I

    .prologue
    .line 246
    :try_start_0
    iget-object v0, p0, mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setDeviceOrientation(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 249
    :goto_5
    return-void

    .line 247
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setDisplaySurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 238
    :try_start_0
    iget-object v0, p0, mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setDisplaySurface(Landroid/view/Surface;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 241
    :goto_5
    return-void

    .line 239
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setPauseImage(Landroid/net/Uri;)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 308
    :try_start_0
    iget-object v0, p0, mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setPauseImage(Landroid/net/Uri;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 311
    :goto_5
    return-void

    .line 309
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setPreviewSurface(Landroid/view/Surface;)V
    .registers 3
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 230
    :try_start_0
    iget-object v0, p0, mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setPreviewSurface(Landroid/view/Surface;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 233
    :goto_5
    return-void

    .line 231
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setZoom(F)V
    .registers 3
    .param p1, "value"    # F

    .prologue
    .line 254
    :try_start_0
    iget-object v0, p0, mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IVideoProvider;->setZoom(F)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 257
    :goto_5
    return-void

    .line 255
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public unregisterCallback(Landroid/telecom/InCallService$VideoCall$Callback;)V
    .registers 4
    .param p1, "callback"    # Landroid/telecom/InCallService$VideoCall$Callback;

    .prologue
    .line 208
    iget-object v0, p0, mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    if-eq p1, v0, :cond_5

    .line 217
    :goto_4
    return-void

    .line 212
    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, mCallback:Landroid/telecom/InCallService$VideoCall$Callback;

    .line 214
    :try_start_8
    iget-object v0, p0, mVideoProvider:Lcom/android/internal/telecom/IVideoProvider;

    iget-object v1, p0, mBinder:Landroid/telecom/VideoCallImpl$VideoCallListenerBinder;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IVideoProvider;->removeVideoCallback(Landroid/os/IBinder;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_f} :catch_10

    goto :goto_4

    .line 215
    :catch_10
    move-exception v0

    goto :goto_4
.end method
