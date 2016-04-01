.class public final Landroid/telecom/InCallAdapter;
.super Ljava/lang/Object;
.source "InCallAdapter.java"


# instance fields
.field private final mAdapter:Lcom/android/internal/telecom/IInCallAdapter;


# direct methods
.method public constructor <init>(Lcom/android/internal/telecom/IInCallAdapter;)V
    .registers 2
    .param p1, "adapter"    # Lcom/android/internal/telecom/IInCallAdapter;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    .line 44
    return-void
.end method


# virtual methods
.method public answerCall(Ljava/lang/String;I)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .prologue
    .line 54
    :try_start_0
    iget-object v0, p0, mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->answerCall(Ljava/lang/String;I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 57
    :goto_5
    return-void

    .line 55
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public conference(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "otherCallId"    # Ljava/lang/String;

    .prologue
    .line 228
    :try_start_0
    iget-object v0, p0, mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->conference(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 231
    :goto_5
    return-void

    .line 229
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public disconnectCall(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->disconnectCall(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 83
    :goto_5
    return-void

    .line 81
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public holdCall(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 92
    :try_start_0
    iget-object v0, p0, mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->holdCall(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 95
    :goto_5
    return-void

    .line 93
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public mergeConference(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 252
    :try_start_0
    iget-object v0, p0, mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->mergeConference(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 255
    :goto_5
    return-void

    .line 253
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public mute(Z)V
    .registers 3
    .param p1, "shouldMute"    # Z

    .prologue
    .line 116
    :try_start_0
    iget-object v0, p0, mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->mute(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 119
    :goto_5
    return-void

    .line 117
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p3, "setDefault"    # Z

    .prologue
    .line 215
    :try_start_0
    iget-object v0, p0, mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telecom/IInCallAdapter;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 218
    :goto_5
    return-void

    .line 216
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public playDtmfTone(Ljava/lang/String;C)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "digit"    # C

    .prologue
    .line 158
    :try_start_0
    iget-object v0, p0, mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->playDtmfTone(Ljava/lang/String;C)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 161
    :goto_5
    return-void

    .line 159
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public postDialContinue(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "proceed"    # Z

    .prologue
    .line 200
    :try_start_0
    iget-object v0, p0, mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->postDialContinue(Ljava/lang/String;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 203
    :goto_5
    return-void

    .line 201
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public rejectCall(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "rejectWithMessage"    # Z
    .param p3, "textMessage"    # Ljava/lang/String;

    .prologue
    .line 68
    :try_start_0
    iget-object v0, p0, mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telecom/IInCallAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 71
    :goto_5
    return-void

    .line 69
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public requestRcsObserver(II)V
    .registers 4
    .param p1, "rcsObserver"    # I
    .param p2, "registerUnregister"    # I

    .prologue
    .line 129
    :try_start_0
    iget-object v0, p0, mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/IInCallAdapter;->requestRcsObserver(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 132
    :goto_5
    return-void

    .line 130
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public setAudioRoute(I)V
    .registers 3
    .param p1, "route"    # I

    .prologue
    .line 142
    :try_start_0
    iget-object v0, p0, mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->setAudioRoute(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 145
    :goto_5
    return-void

    .line 143
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public splitFromConference(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 242
    :try_start_0
    iget-object v0, p0, mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->splitFromConference(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 245
    :goto_5
    return-void

    .line 243
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public stopDtmfTone(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 174
    :try_start_0
    iget-object v0, p0, mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->stopDtmfTone(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 177
    :goto_5
    return-void

    .line 175
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public swapConference(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 262
    :try_start_0
    iget-object v0, p0, mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->swapConference(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 265
    :goto_5
    return-void

    .line 263
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public turnProximitySensorOff(Z)V
    .registers 3
    .param p1, "screenOnImmediately"    # Z

    .prologue
    .line 286
    :try_start_0
    iget-object v0, p0, mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->turnOffProximitySensor(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 289
    :goto_5
    return-void

    .line 287
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public turnProximitySensorOn()V
    .registers 2

    .prologue
    .line 272
    :try_start_0
    iget-object v0, p0, mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0}, Lcom/android/internal/telecom/IInCallAdapter;->turnOnProximitySensor()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 275
    :goto_5
    return-void

    .line 273
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public unholdCall(Ljava/lang/String;)V
    .registers 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 104
    :try_start_0
    iget-object v0, p0, mAdapter:Lcom/android/internal/telecom/IInCallAdapter;

    invoke-interface {v0, p1}, Lcom/android/internal/telecom/IInCallAdapter;->unholdCall(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 107
    :goto_5
    return-void

    .line 105
    :catch_6
    move-exception v0

    goto :goto_5
.end method
