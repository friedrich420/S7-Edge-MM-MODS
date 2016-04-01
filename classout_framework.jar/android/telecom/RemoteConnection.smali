.class public final Landroid/telecom/RemoteConnection;
.super Ljava/lang/Object;
.source "RemoteConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/RemoteConnection$CallbackRecord;,
        Landroid/telecom/RemoteConnection$VideoProvider;,
        Landroid/telecom/RemoteConnection$Callback;
    }
.end annotation


# instance fields
.field private mAddress:Landroid/net/Uri;

.field private mAddressPresentation:I

.field private final mCallbackRecords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/RemoteConnection$CallbackRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCallerDisplayName:Ljava/lang/String;

.field private mCallerDisplayNamePresentation:I

.field private mConference:Landroid/telecom/RemoteConference;

.field private final mConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mConnected:Z

.field private mConnectionCapabilities:I

.field private final mConnectionId:Ljava/lang/String;

.field private mConnectionService:Lcom/android/internal/telecom/IConnectionService;

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private mExtras:Landroid/os/Bundle;

.field private mIsVoipAudioMode:Z

.field private mRingbackRequested:Z

.field private mState:I

.field private mStatusHints:Landroid/telecom/StatusHints;

.field private final mUnmodifiableconferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

.field private mVideoState:I


# direct methods
.method constructor <init>(Landroid/telecom/DisconnectCause;)V
    .registers 6
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    const/4 v3, 0x1

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, mCallbackRecords:Ljava/util/Set;

    .line 571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mConferenceableConnections:Ljava/util/List;

    .line 572
    iget-object v0, p0, mConferenceableConnections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, mUnmodifiableconferenceableConnections:Ljava/util/List;

    .line 575
    iput v3, p0, mState:I

    .line 636
    const-string v0, "NULL"

    iput-object v0, p0, mConnectionId:Ljava/lang/String;

    .line 637
    const/4 v0, 0x0

    iput-boolean v0, p0, mConnected:Z

    .line 638
    const/4 v0, 0x6

    iput v0, p0, mState:I

    .line 639
    iput-object p1, p0, mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 640
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ConnectionRequest;)V
    .registers 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "connectionService"    # Lcom/android/internal/telecom/IConnectionService;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    const/4 v3, 0x1

    .line 597
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, mCallbackRecords:Ljava/util/Set;

    .line 571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mConferenceableConnections:Ljava/util/List;

    .line 572
    iget-object v0, p0, mConferenceableConnections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, mUnmodifiableconferenceableConnections:Ljava/util/List;

    .line 575
    iput v3, p0, mState:I

    .line 598
    iput-object p1, p0, mConnectionId:Ljava/lang/String;

    .line 599
    iput-object p2, p0, mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    .line 600
    iput-boolean v3, p0, mConnected:Z

    .line 601
    const/4 v0, 0x0

    iput v0, p0, mState:I

    .line 602
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ParcelableConnection;)V
    .registers 8
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connectionService"    # Lcom/android/internal/telecom/IConnectionService;
    .param p3, "connection"    # Landroid/telecom/ParcelableConnection;

    .prologue
    const/4 v3, 0x1

    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, mCallbackRecords:Ljava/util/Set;

    .line 571
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mConferenceableConnections:Ljava/util/List;

    .line 572
    iget-object v0, p0, mConferenceableConnections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, mUnmodifiableconferenceableConnections:Ljava/util/List;

    .line 575
    iput v3, p0, mState:I

    .line 609
    iput-object p1, p0, mConnectionId:Ljava/lang/String;

    .line 610
    iput-object p2, p0, mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    .line 611
    iput-boolean v3, p0, mConnected:Z

    .line 612
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v0

    iput v0, p0, mState:I

    .line 613
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    iput-object v0, p0, mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 614
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->isRingbackRequested()Z

    move-result v0

    iput-boolean v0, p0, mRingbackRequested:Z

    .line 615
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConnectionCapabilities()I

    move-result v0

    iput v0, p0, mConnectionCapabilities:I

    .line 616
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getVideoState()I

    move-result v0

    iput v0, p0, mVideoState:I

    .line 617
    new-instance v0, Landroid/telecom/RemoteConnection$VideoProvider;

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getVideoProvider()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/telecom/RemoteConnection$VideoProvider;-><init>(Lcom/android/internal/telecom/IVideoProvider;)V

    iput-object v0, p0, mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    .line 618
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getIsVoipAudioMode()Z

    move-result v0

    iput-boolean v0, p0, mIsVoipAudioMode:Z

    .line 619
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v0

    iput-object v0, p0, mStatusHints:Landroid/telecom/StatusHints;

    .line 620
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandle()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, mAddress:Landroid/net/Uri;

    .line 621
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandlePresentation()I

    move-result v0

    iput v0, p0, mAddressPresentation:I

    .line 622
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mCallerDisplayName:Ljava/lang/String;

    .line 623
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayNamePresentation()I

    move-result v0

    iput v0, p0, mCallerDisplayNamePresentation:I

    .line 624
    const/4 v0, 0x0

    iput-object v0, p0, mConference:Landroid/telecom/RemoteConference;

    .line 625
    return-void
.end method

.method static synthetic access$100(Landroid/telecom/RemoteConnection;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 46
    iget-object v0, p0, mUnmodifiableconferenceableConnections:Ljava/util/List;

    return-object v0
.end method

.method public static failure(Landroid/telecom/DisconnectCause;)Landroid/telecom/RemoteConnection;
    .registers 2
    .param p0, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 1304
    new-instance v0, Landroid/telecom/RemoteConnection;

    invoke-direct {v0, p0}, <init>(Landroid/telecom/DisconnectCause;)V

    return-object v0
.end method


# virtual methods
.method public abort()V
    .registers 3

    .prologue
    .line 810
    :try_start_0
    iget-boolean v0, p0, mConnected:Z

    if-eqz v0, :cond_b

    .line 811
    iget-object v0, p0, mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->abort(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 815
    :cond_b
    :goto_b
    return-void

    .line 813
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public answer()V
    .registers 3

    .prologue
    .line 822
    :try_start_0
    iget-boolean v0, p0, mConnected:Z

    if-eqz v0, :cond_b

    .line 823
    iget-object v0, p0, mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->answer(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 827
    :cond_b
    :goto_b
    return-void

    .line 825
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public answer(I)V
    .registers 4
    .param p1, "videoState"    # I

    .prologue
    .line 836
    :try_start_0
    iget-boolean v0, p0, mConnected:Z

    if-eqz v0, :cond_b

    .line 837
    iget-object v0, p0, mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telecom/IConnectionService;->answerVideo(Ljava/lang/String;I)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 841
    :cond_b
    :goto_b
    return-void

    .line 839
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public disconnect()V
    .registers 3

    .prologue
    .line 884
    :try_start_0
    iget-boolean v0, p0, mConnected:Z

    if-eqz v0, :cond_b

    .line 885
    iget-object v0, p0, mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->disconnect(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 889
    :cond_b
    :goto_b
    return-void

    .line 887
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public getAddress()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 736
    iget-object v0, p0, mAddress:Landroid/net/Uri;

    return-object v0
.end method

.method public getAddressPresentation()I
    .registers 2

    .prologue
    .line 746
    iget v0, p0, mAddressPresentation:I

    return v0
.end method

.method public getCallerDisplayName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 755
    iget-object v0, p0, mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerDisplayNamePresentation()I
    .registers 2

    .prologue
    .line 766
    iget v0, p0, mCallerDisplayNamePresentation:I

    return v0
.end method

.method public getConference()Landroid/telecom/RemoteConference;
    .registers 2

    .prologue
    .line 1000
    iget-object v0, p0, mConference:Landroid/telecom/RemoteConference;

    return-object v0
.end method

.method public getConferenceableConnections()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 990
    iget-object v0, p0, mUnmodifiableconferenceableConnections:Ljava/util/List;

    return-object v0
.end method

.method public getConnectionCapabilities()I
    .registers 2

    .prologue
    .line 707
    iget v0, p0, mConnectionCapabilities:I

    return v0
.end method

.method getConnectionService()Lcom/android/internal/telecom/IConnectionService;
    .registers 2

    .prologue
    .line 1010
    iget-object v0, p0, mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    return-object v0
.end method

.method public getDisconnectCause()Landroid/telecom/DisconnectCause;
    .registers 2

    .prologue
    .line 697
    iget-object v0, p0, mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 792
    iget-object v0, p0, mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1005
    iget-object v0, p0, mConnectionId:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 686
    iget v0, p0, mState:I

    return v0
.end method

.method public getStatusHints()Landroid/telecom/StatusHints;
    .registers 2

    .prologue
    .line 726
    iget-object v0, p0, mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public final getVideoProvider()Landroid/telecom/RemoteConnection$VideoProvider;
    .registers 2

    .prologue
    .line 783
    iget-object v0, p0, mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    return-object v0
.end method

.method public getVideoState()I
    .registers 2

    .prologue
    .line 775
    iget v0, p0, mVideoState:I

    return v0
.end method

.method public hold()V
    .registers 3

    .prologue
    .line 860
    :try_start_0
    iget-boolean v0, p0, mConnected:Z

    if-eqz v0, :cond_b

    .line 861
    iget-object v0, p0, mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->hold(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 865
    :cond_b
    :goto_b
    return-void

    .line 863
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public isRingbackRequested()Z
    .registers 2

    .prologue
    .line 802
    iget-boolean v0, p0, mRingbackRequested:Z

    return v0
.end method

.method public isVoipAudioMode()Z
    .registers 2

    .prologue
    .line 716
    iget-boolean v0, p0, mIsVoipAudioMode:Z

    return v0
.end method

.method onPostDialChar(C)V
    .registers 8
    .param p1, "nextChar"    # C

    .prologue
    .line 1136
    iget-object v4, p0, mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1137
    .local v3, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    .line 1138
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    .line 1139
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$7;

    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$7;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;C)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 1146
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_24
    return-void
.end method

.method public playDtmfTone(C)V
    .registers 4
    .param p1, "digit"    # C

    .prologue
    .line 902
    :try_start_0
    iget-boolean v0, p0, mConnected:Z

    if-eqz v0, :cond_b

    .line 903
    iget-object v0, p0, mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telecom/IConnectionService;->playDtmfTone(Ljava/lang/String;C)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 907
    :cond_b
    :goto_b
    return-void

    .line 905
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public postDialContinue(Z)V
    .registers 4
    .param p1, "proceed"    # Z

    .prologue
    .line 948
    :try_start_0
    iget-boolean v0, p0, mConnected:Z

    if-eqz v0, :cond_b

    .line 949
    iget-object v0, p0, mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telecom/IConnectionService;->onPostDialContinue(Ljava/lang/String;Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 953
    :cond_b
    :goto_b
    return-void

    .line 951
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public registerCallback(Landroid/telecom/RemoteConnection$Callback;)V
    .registers 3
    .param p1, "callback"    # Landroid/telecom/RemoteConnection$Callback;

    .prologue
    .line 648
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, p1, v0}, registerCallback(Landroid/telecom/RemoteConnection$Callback;Landroid/os/Handler;)V

    .line 649
    return-void
.end method

.method public registerCallback(Landroid/telecom/RemoteConnection$Callback;Landroid/os/Handler;)V
    .registers 5
    .param p1, "callback"    # Landroid/telecom/RemoteConnection$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 658
    invoke-virtual {p0, p1}, unregisterCallback(Landroid/telecom/RemoteConnection$Callback;)V

    .line 659
    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    .line 660
    iget-object v0, p0, mCallbackRecords:Ljava/util/Set;

    new-instance v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    invoke-direct {v1, p1, p2}, Landroid/telecom/RemoteConnection$CallbackRecord;-><init>(Landroid/telecom/RemoteConnection$Callback;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 662
    :cond_11
    return-void
.end method

.method public reject()V
    .registers 3

    .prologue
    .line 848
    :try_start_0
    iget-boolean v0, p0, mConnected:Z

    if-eqz v0, :cond_b

    .line 849
    iget-object v0, p0, mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->reject(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 853
    :cond_b
    :goto_b
    return-void

    .line 851
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method setAddress(Landroid/net/Uri;I)V
    .registers 12
    .param p1, "address"    # Landroid/net/Uri;
    .param p2, "presentation"    # I

    .prologue
    .line 1214
    iput-object p1, p0, mAddress:Landroid/net/Uri;

    .line 1215
    iput p2, p0, mAddressPresentation:I

    .line 1216
    iget-object v0, p0, mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1217
    .local v7, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v3, p0

    .line 1218
    .local v3, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v7}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v2

    .line 1219
    .local v2, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v7}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v8

    new-instance v0, Landroid/telecom/RemoteConnection$12;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/telecom/RemoteConnection$12;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/net/Uri;I)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a

    .line 1226
    .end local v2    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v3    # "connection":Landroid/telecom/RemoteConnection;
    .end local v7    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_2b
    return-void
.end method

.method public setAudioState(Landroid/telecom/AudioState;)V
    .registers 3
    .param p1, "state"    # Landroid/telecom/AudioState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 965
    new-instance v0, Landroid/telecom/CallAudioState;

    invoke-direct {v0, p1}, Landroid/telecom/CallAudioState;-><init>(Landroid/telecom/AudioState;)V

    invoke-virtual {p0, v0}, setCallAudioState(Landroid/telecom/CallAudioState;)V

    .line 966
    return-void
.end method

.method public setCallAudioState(Landroid/telecom/CallAudioState;)V
    .registers 4
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 975
    :try_start_0
    iget-boolean v0, p0, mConnected:Z

    if-eqz v0, :cond_b

    .line 976
    iget-object v0, p0, mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telecom/IConnectionService;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 980
    :cond_b
    :goto_b
    return-void

    .line 978
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method setCallerDisplayName(Ljava/lang/String;I)V
    .registers 12
    .param p1, "callerDisplayName"    # Ljava/lang/String;
    .param p2, "presentation"    # I

    .prologue
    .line 1230
    iput-object p1, p0, mCallerDisplayName:Ljava/lang/String;

    .line 1231
    iput p2, p0, mCallerDisplayNamePresentation:I

    .line 1232
    iget-object v0, p0, mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1233
    .local v7, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v3, p0

    .line 1234
    .local v3, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v7}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v2

    .line 1235
    .local v2, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v7}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v8

    new-instance v0, Landroid/telecom/RemoteConnection$13;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/telecom/RemoteConnection$13;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Ljava/lang/String;I)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a

    .line 1243
    .end local v2    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v3    # "connection":Landroid/telecom/RemoteConnection;
    .end local v7    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_2b
    return-void
.end method

.method setConference(Landroid/telecom/RemoteConference;)V
    .registers 8
    .param p1, "conference"    # Landroid/telecom/RemoteConference;

    .prologue
    .line 1264
    iget-object v4, p0, mConference:Landroid/telecom/RemoteConference;

    if-eq v4, p1, :cond_2a

    .line 1265
    iput-object p1, p0, mConference:Landroid/telecom/RemoteConference;

    .line 1266
    iget-object v4, p0, mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1267
    .local v3, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    .line 1268
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    .line 1269
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$15;

    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$15;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConference;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c

    .line 1277
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_2a
    return-void
.end method

.method setConferenceableConnections(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1247
    .local p1, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    iget-object v4, p0, mConferenceableConnections:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1248
    iget-object v4, p0, mConferenceableConnections:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1249
    iget-object v4, p0, mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1250
    .local v3, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    .line 1251
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    .line 1252
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$14;

    invoke-direct {v5, p0, v0, v1}, Landroid/telecom/RemoteConnection$14;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_10

    .line 1260
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_2e
    return-void
.end method

.method setConnectionCapabilities(I)V
    .registers 8
    .param p1, "connectionCapabilities"    # I

    .prologue
    .line 1076
    iput p1, p0, mConnectionCapabilities:I

    .line 1077
    iget-object v4, p0, mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1078
    .local v3, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    .line 1079
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    .line 1080
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$4;

    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$4;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 1087
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_26
    return-void
.end method

.method setDestroyed()V
    .registers 8

    .prologue
    .line 1093
    iget-object v4, p0, mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_44

    .line 1095
    iget v4, p0, mState:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_18

    .line 1096
    new-instance v4, Landroid/telecom/DisconnectCause;

    const/4 v5, 0x1

    const-string v6, "Connection destroyed."

    invoke-direct {v4, v5, v6}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v4}, setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 1100
    :cond_18
    iget-object v4, p0, mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1101
    .local v3, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    .line 1102
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    .line 1103
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$5;

    invoke-direct {v5, p0, v0, v1}, Landroid/telecom/RemoteConnection$5;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1e

    .line 1110
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_3c
    iget-object v4, p0, mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 1112
    const/4 v4, 0x0

    iput-boolean v4, p0, mConnected:Z

    .line 1114
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_44
    return-void
.end method

.method setDisconnected(Landroid/telecom/DisconnectCause;)V
    .registers 8
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    const/4 v5, 0x6

    .line 1036
    iget v4, p0, mState:I

    if-eq v4, v5, :cond_2d

    .line 1037
    iput v5, p0, mState:I

    .line 1038
    iput-object p1, p0, mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 1040
    iget-object v4, p0, mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1041
    .local v3, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    .line 1042
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    .line 1043
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$2;

    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$2;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/telecom/DisconnectCause;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_f

    .line 1051
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_2d
    return-void
.end method

.method setExtras(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1281
    iput-object p1, p0, mExtras:Landroid/os/Bundle;

    .line 1282
    iget-object v4, p0, mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1283
    .local v3, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    .line 1284
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    .line 1285
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$16;

    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$16;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/os/Bundle;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 1292
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_26
    return-void
.end method

.method setIsVoipAudioMode(Z)V
    .registers 8
    .param p1, "isVoip"    # Z

    .prologue
    .line 1184
    iput-boolean p1, p0, mIsVoipAudioMode:Z

    .line 1185
    iget-object v4, p0, mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1186
    .local v3, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    .line 1187
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    .line 1188
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$10;

    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$10;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Z)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 1195
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_26
    return-void
.end method

.method setPostDialWait(Ljava/lang/String;)V
    .registers 8
    .param p1, "remainingDigits"    # Ljava/lang/String;

    .prologue
    .line 1120
    iget-object v4, p0, mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1121
    .local v3, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    .line 1122
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    .line 1123
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$6;

    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$6;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_6

    .line 1130
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_24
    return-void
.end method

.method setRingbackRequested(Z)V
    .registers 8
    .param p1, "ringback"    # Z

    .prologue
    .line 1057
    iget-boolean v4, p0, mRingbackRequested:Z

    if-eq v4, p1, :cond_2a

    .line 1058
    iput-boolean p1, p0, mRingbackRequested:Z

    .line 1059
    iget-object v4, p0, mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1060
    .local v3, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    .line 1061
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    .line 1062
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$3;

    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$3;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Z)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c

    .line 1070
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_2a
    return-void
.end method

.method setState(I)V
    .registers 8
    .param p1, "state"    # I

    .prologue
    .line 1017
    iget v4, p0, mState:I

    if-eq v4, p1, :cond_2a

    .line 1018
    iput p1, p0, mState:I

    .line 1019
    iget-object v4, p0, mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1020
    .local v3, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    .line 1021
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    .line 1022
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$1;

    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$1;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c

    .line 1030
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_2a
    return-void
.end method

.method setStatusHints(Landroid/telecom/StatusHints;)V
    .registers 8
    .param p1, "statusHints"    # Landroid/telecom/StatusHints;

    .prologue
    .line 1199
    iput-object p1, p0, mStatusHints:Landroid/telecom/StatusHints;

    .line 1200
    iget-object v4, p0, mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1201
    .local v3, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    .line 1202
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    .line 1203
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$11;

    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$11;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/telecom/StatusHints;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 1210
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_26
    return-void
.end method

.method setVideoProvider(Landroid/telecom/RemoteConnection$VideoProvider;)V
    .registers 8
    .param p1, "videoProvider"    # Landroid/telecom/RemoteConnection$VideoProvider;

    .prologue
    .line 1169
    iput-object p1, p0, mVideoProvider:Landroid/telecom/RemoteConnection$VideoProvider;

    .line 1170
    iget-object v4, p0, mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1171
    .local v3, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    .line 1172
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    .line 1173
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$9;

    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$9;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$VideoProvider;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 1180
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_26
    return-void
.end method

.method setVideoState(I)V
    .registers 8
    .param p1, "videoState"    # I

    .prologue
    .line 1152
    iput p1, p0, mVideoState:I

    .line 1153
    iget-object v4, p0, mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 1154
    .local v3, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    move-object v1, p0

    .line 1155
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v0

    .line 1156
    .local v0, "callback":Landroid/telecom/RemoteConnection$Callback;
    invoke-virtual {v3}, Landroid/telecom/RemoteConnection$CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConnection$8;

    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConnection$8;-><init>(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection$Callback;Landroid/telecom/RemoteConnection;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 1163
    .end local v0    # "callback":Landroid/telecom/RemoteConnection$Callback;
    .end local v1    # "connection":Landroid/telecom/RemoteConnection;
    .end local v3    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_26
    return-void
.end method

.method public stopDtmfTone()V
    .registers 3

    .prologue
    .line 918
    :try_start_0
    iget-boolean v0, p0, mConnected:Z

    if-eqz v0, :cond_b

    .line 919
    iget-object v0, p0, mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->stopDtmfTone(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 923
    :cond_b
    :goto_b
    return-void

    .line 921
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public unhold()V
    .registers 3

    .prologue
    .line 872
    :try_start_0
    iget-boolean v0, p0, mConnected:Z

    if-eqz v0, :cond_b

    .line 873
    iget-object v0, p0, mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, mConnectionId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->unhold(Ljava/lang/String;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    .line 877
    :cond_b
    :goto_b
    return-void

    .line 875
    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public unregisterCallback(Landroid/telecom/RemoteConnection$Callback;)V
    .registers 5
    .param p1, "callback"    # Landroid/telecom/RemoteConnection$Callback;

    .prologue
    .line 670
    if-eqz p1, :cond_1f

    .line 671
    iget-object v2, p0, mCallbackRecords:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection$CallbackRecord;

    .line 672
    .local v1, "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection$CallbackRecord;->getCallback()Landroid/telecom/RemoteConnection$Callback;

    move-result-object v2

    if-ne v2, p1, :cond_8

    .line 673
    iget-object v2, p0, mCallbackRecords:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 678
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "record":Landroid/telecom/RemoteConnection$CallbackRecord;
    :cond_1f
    return-void
.end method
