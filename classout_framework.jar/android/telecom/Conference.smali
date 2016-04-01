.class public abstract Landroid/telecom/Conference;
.super Landroid/telecom/Conferenceable;
.source "Conference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Conference$Listener;
    }
.end annotation


# static fields
.field public static final CONNECT_TIME_NOT_SPECIFIED:J


# instance fields
.field private mCallAudioState:Landroid/telecom/CallAudioState;

.field private final mChildConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final mConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectTimeMillis:J

.field private mConnectionCapabilities:I

.field private final mConnectionDeathListener:Landroid/telecom/Connection$Listener;

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private mDisconnectMessage:Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/Conference$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

.field private mState:I

.field private mStatusHints:Landroid/telecom/StatusHints;

.field private final mUnmodifiableChildConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnmodifiableConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/telecom/PhoneAccountHandle;)V
    .registers 4
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/telecom/Conferenceable;-><init>()V

    .line 60
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, mListeners:Ljava/util/Set;

    .line 61
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, mChildConnections:Ljava/util/List;

    .line 62
    iget-object v0, p0, mChildConnections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, mUnmodifiableChildConnections:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mConferenceableConnections:Ljava/util/List;

    .line 65
    iget-object v0, p0, mConferenceableConnections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, mUnmodifiableConferenceableConnections:Ljava/util/List;

    .line 70
    const/4 v0, 0x1

    iput v0, p0, mState:I

    .line 74
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mConnectTimeMillis:J

    .line 78
    new-instance v0, Landroid/telecom/Conference$1;

    invoke-direct {v0, p0}, Landroid/telecom/Conference$1;-><init>(Landroid/telecom/Conference;)V

    iput-object v0, p0, mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    .line 93
    iput-object p1, p0, mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    .line 94
    return-void
.end method

.method static synthetic access$000(Landroid/telecom/Conference;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Landroid/telecom/Conference;

    .prologue
    .line 35
    iget-object v0, p0, mConferenceableConnections:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Landroid/telecom/Conference;)V
    .registers 1
    .param p0, "x0"    # Landroid/telecom/Conference;

    .prologue
    .line 35
    invoke-direct {p0}, fireOnConferenceableConnectionsChanged()V

    return-void
.end method

.method public static can(II)Z
    .registers 3
    .param p0, "capabilities"    # I
    .param p1, "capability"    # I

    .prologue
    .line 142
    and-int v0, p0, p1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private final clearConferenceableList()V
    .registers 4

    .prologue
    .line 579
    iget-object v2, p0, mConferenceableConnections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 580
    .local v0, "c":Landroid/telecom/Connection;
    iget-object v2, p0, mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, v2}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    goto :goto_6

    .line 582
    .end local v0    # "c":Landroid/telecom/Connection;
    :cond_18
    iget-object v2, p0, mConferenceableConnections:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 583
    return-void
.end method

.method private final fireOnConferenceableConnectionsChanged()V
    .registers 4

    .prologue
    .line 433
    iget-object v2, p0, mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 434
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {p0}, getConferenceableConnections()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Conference$Listener;->onConferenceableConnectionsChanged(Landroid/telecom/Conference;Ljava/util/List;)V

    goto :goto_6

    .line 436
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    :cond_1a
    return-void
.end method

.method private setState(I)V
    .registers 9
    .param p1, "newState"    # I

    .prologue
    .line 561
    const/4 v3, 0x4

    if-eq p1, v3, :cond_19

    const/4 v3, 0x5

    if-eq p1, v3, :cond_19

    const/4 v3, 0x6

    if-eq p1, v3, :cond_19

    .line 564
    const-string v3, "Unsupported state transition for Conference call."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 576
    :cond_18
    return-void

    .line 569
    :cond_19
    iget v3, p0, mState:I

    if-eq v3, p1, :cond_18

    .line 570
    iget v2, p0, mState:I

    .line 571
    .local v2, "oldState":I
    iput p1, p0, mState:I

    .line 572
    iget-object v3, p0, mListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 573
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, v2, p1}, Landroid/telecom/Conference$Listener;->onStateChanged(Landroid/telecom/Conference;II)V

    goto :goto_27
.end method


# virtual methods
.method public addCapability(I)V
    .registers 3
    .param p1, "capability"    # I

    .prologue
    .line 173
    iget v0, p0, mConnectionCapabilities:I

    or-int/2addr v0, p1

    iput v0, p0, mConnectionCapabilities:I

    .line 174
    return-void
.end method

.method public final addConnection(Landroid/telecom/Connection;)Z
    .registers 8
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 355
    const-string v4, "Connection=%s, connection="

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v3

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 356
    if-eqz p1, :cond_39

    iget-object v4, p0, mChildConnections:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 357
    invoke-virtual {p1, p0}, Landroid/telecom/Connection;->setConference(Landroid/telecom/Conference;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 358
    iget-object v3, p0, mChildConnections:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    invoke-virtual {p0, p1}, onConnectionAdded(Landroid/telecom/Connection;)V

    .line 360
    iget-object v3, p0, mListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 361
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Conference$Listener;->onConnectionAdded(Landroid/telecom/Conference;Landroid/telecom/Connection;)V

    goto :goto_29

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    :cond_39
    move v2, v3

    .line 366
    :cond_3a
    return v2
.end method

.method public final addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;
    .registers 3
    .param p1, "listener"    # Landroid/telecom/Conference$Listener;

    .prologue
    .line 476
    iget-object v0, p0, mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 477
    return-object p0
.end method

.method public can(I)Z
    .registers 3
    .param p1, "capability"    # I

    .prologue
    .line 153
    iget v0, p0, mConnectionCapabilities:I

    invoke-static {v0, p1}, can(II)Z

    move-result v0

    return v0
.end method

.method public final destroy()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 449
    const-string v3, "destroying conference : %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    iget-object v3, p0, mChildConnections:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 452
    .local v0, "connection":Landroid/telecom/Connection;
    const-string/jumbo v3, "removing connection %s"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    invoke-virtual {p0, v0}, removeConnection(Landroid/telecom/Connection;)V

    goto :goto_11

    .line 457
    .end local v0    # "connection":Landroid/telecom/Connection;
    :cond_2b
    iget v3, p0, mState:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_41

    .line 458
    const-string/jumbo v3, "setting to disconnected"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    new-instance v3, Landroid/telecom/DisconnectCause;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/telecom/DisconnectCause;-><init>(I)V

    invoke-virtual {p0, v3}, setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 463
    :cond_41
    iget-object v3, p0, mListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Conference$Listener;

    .line 464
    .local v2, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v2, p0}, Landroid/telecom/Conference$Listener;->onDestroyed(Landroid/telecom/Conference;)V

    goto :goto_47

    .line 466
    .end local v2    # "l":Landroid/telecom/Conference$Listener;
    :cond_57
    return-void
.end method

.method public final getAudioState()Landroid/telecom/AudioState;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 186
    new-instance v0, Landroid/telecom/AudioState;

    iget-object v1, p0, mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-direct {v0, v1}, Landroid/telecom/AudioState;-><init>(Landroid/telecom/CallAudioState;)V

    return-object v0
.end method

.method public final getCallAudioState()Landroid/telecom/CallAudioState;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, mCallAudioState:Landroid/telecom/CallAudioState;

    return-object v0
.end method

.method public final getConferenceableConnections()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 442
    iget-object v0, p0, mUnmodifiableConferenceableConnections:Ljava/util/List;

    return-object v0
.end method

.method public final getConnectTimeMillis()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 533
    invoke-virtual {p0}, getConnectionTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getConnectionCapabilities()I
    .registers 2

    .prologue
    .line 130
    iget v0, p0, mConnectionCapabilities:I

    return v0
.end method

.method public final getConnectionTime()J
    .registers 3

    .prologue
    .line 544
    iget-wide v0, p0, mConnectTimeMillis:J

    return-wide v0
.end method

.method public final getConnections()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    iget-object v0, p0, mUnmodifiableChildConnections:Ljava/util/List;

    return-object v0
.end method

.method public final getDisconnectCause()Landroid/telecom/DisconnectCause;
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 633
    iget-object v0, p0, mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, mPhoneAccount:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getPrimaryConnection()Landroid/telecom/Connection;
    .registers 3

    .prologue
    .line 501
    iget-object v0, p0, mUnmodifiableChildConnections:Ljava/util/List;

    if-eqz v0, :cond_c

    iget-object v0, p0, mUnmodifiableChildConnections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 502
    :cond_c
    const/4 v0, 0x0

    .line 504
    :goto_d
    return-object v0

    :cond_e
    iget-object v0, p0, mUnmodifiableChildConnections:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    goto :goto_d
.end method

.method public final getState()I
    .registers 2

    .prologue
    .line 120
    iget v0, p0, mState:I

    return v0
.end method

.method public final getStatusHints()Landroid/telecom/StatusHints;
    .registers 2

    .prologue
    .line 612
    iget-object v0, p0, mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .registers 2

    .prologue
    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoState()I
    .registers 2

    .prologue
    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method public onAudioStateChanged(Landroid/telecom/AudioState;)V
    .registers 2
    .param p1, "state"    # Landroid/telecom/AudioState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 274
    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .registers 2
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 281
    return-void
.end method

.method public onConnectionAdded(Landroid/telecom/Connection;)V
    .registers 2
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 288
    return-void
.end method

.method public onDisconnect()V
    .registers 1

    .prologue
    .line 215
    return-void
.end method

.method public onHold()V
    .registers 1

    .prologue
    .line 234
    return-void
.end method

.method public onMerge()V
    .registers 1

    .prologue
    .line 245
    return-void
.end method

.method public onMerge(Landroid/telecom/Connection;)V
    .registers 2
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 229
    return-void
.end method

.method public onPlayDtmfTone(C)V
    .registers 2
    .param p1, "c"    # C

    .prologue
    .line 258
    return-void
.end method

.method public onSeparate(Landroid/telecom/Connection;)V
    .registers 2
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 222
    return-void
.end method

.method public onStopDtmfTone()V
    .registers 1

    .prologue
    .line 263
    return-void
.end method

.method public onSwap()V
    .registers 1

    .prologue
    .line 251
    return-void
.end method

.method public onUnhold()V
    .registers 1

    .prologue
    .line 239
    return-void
.end method

.method public removeCapability(I)V
    .registers 4
    .param p1, "capability"    # I

    .prologue
    .line 163
    iget v0, p0, mConnectionCapabilities:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, mConnectionCapabilities:I

    .line 164
    return-void
.end method

.method public final removeConnection(Landroid/telecom/Connection;)V
    .registers 8
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 375
    const-string/jumbo v2, "removing %s from %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, mChildConnections:Ljava/util/List;

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    if-eqz p1, :cond_34

    iget-object v2, p0, mChildConnections:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 377
    invoke-virtual {p1}, Landroid/telecom/Connection;->resetConference()V

    .line 378
    iget-object v2, p0, mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 379
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Conference$Listener;->onConnectionRemoved(Landroid/telecom/Conference;Landroid/telecom/Connection;)V

    goto :goto_24

    .line 382
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    :cond_34
    return-void
.end method

.method public final removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;
    .registers 3
    .param p1, "listener"    # Landroid/telecom/Conference$Listener;

    .prologue
    .line 488
    iget-object v0, p0, mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 489
    return-object p0
.end method

.method public final setActive()V
    .registers 2

    .prologue
    .line 308
    const/4 v0, 0x4

    invoke-direct {p0, v0}, setState(I)V

    .line 309
    return-void
.end method

.method final setCallAudioState(Landroid/telecom/CallAudioState;)V
    .registers 5
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 554
    const-string/jumbo v0, "setCallAudioState %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 555
    iput-object p1, p0, mCallAudioState:Landroid/telecom/CallAudioState;

    .line 556
    invoke-virtual {p0}, getAudioState()Landroid/telecom/AudioState;

    move-result-object v0

    invoke-virtual {p0, v0}, onAudioStateChanged(Landroid/telecom/AudioState;)V

    .line 557
    invoke-virtual {p0, p1}, onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 558
    return-void
.end method

.method public final setConferenceableConnections(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 390
    .local p1, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    invoke-direct {p0}, clearConferenceableList()V

    .line 391
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 394
    .local v0, "c":Landroid/telecom/Connection;
    iget-object v2, p0, mConferenceableConnections:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 395
    iget-object v2, p0, mConnectionDeathListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {v0, v2}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 396
    iget-object v2, p0, mConferenceableConnections:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 399
    .end local v0    # "c":Landroid/telecom/Connection;
    :cond_26
    invoke-direct {p0}, fireOnConferenceableConnectionsChanged()V

    .line 400
    return-void
.end method

.method public final setConnectTimeMillis(J)V
    .registers 4
    .param p1, "connectTimeMillis"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 514
    invoke-virtual {p0, p1, p2}, setConnectionTime(J)V

    .line 515
    return-void
.end method

.method public final setConnectionCapabilities(I)V
    .registers 5
    .param p1, "connectionCapabilities"    # I

    .prologue
    .line 339
    iget v2, p0, mConnectionCapabilities:I

    if-eq p1, v2, :cond_1e

    .line 340
    iput p1, p0, mConnectionCapabilities:I

    .line 342
    iget-object v2, p0, mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 343
    .local v1, "l":Landroid/telecom/Conference$Listener;
    iget v2, p0, mConnectionCapabilities:I

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Conference$Listener;->onConnectionCapabilitiesChanged(Landroid/telecom/Conference;I)V

    goto :goto_c

    .line 346
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    :cond_1e
    return-void
.end method

.method public final setConnectionTime(J)V
    .registers 4
    .param p1, "connectionTimeMillis"    # J

    .prologue
    .line 523
    iput-wide p1, p0, mConnectTimeMillis:J

    .line 524
    return-void
.end method

.method public final setDialing()V
    .registers 2

    .prologue
    .line 301
    const/4 v0, 0x3

    invoke-direct {p0, v0}, setState(I)V

    .line 302
    return-void
.end method

.method public final setDisconnected(Landroid/telecom/DisconnectCause;)V
    .registers 5
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 318
    iput-object p1, p0, mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 319
    const/4 v2, 0x6

    invoke-direct {p0, v2}, setState(I)V

    .line 320
    iget-object v2, p0, mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 321
    .local v1, "l":Landroid/telecom/Conference$Listener;
    iget-object v2, p0, mDisconnectCause:Landroid/telecom/DisconnectCause;

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Conference$Listener;->onDisconnected(Landroid/telecom/Conference;Landroid/telecom/DisconnectCause;)V

    goto :goto_c

    .line 323
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    :cond_1e
    return-void
.end method

.method public final setExtras(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 623
    iput-object p1, p0, mExtras:Landroid/os/Bundle;

    .line 624
    iget-object v2, p0, mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 625
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Conference$Listener;->onExtrasChanged(Landroid/telecom/Conference;Landroid/os/Bundle;)V

    goto :goto_8

    .line 627
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    :cond_18
    return-void
.end method

.method public final setOnHold()V
    .registers 2

    .prologue
    .line 294
    const/4 v0, 0x5

    invoke-direct {p0, v0}, setState(I)V

    .line 295
    return-void
.end method

.method public final setStatusHints(Landroid/telecom/StatusHints;)V
    .registers 5
    .param p1, "statusHints"    # Landroid/telecom/StatusHints;

    .prologue
    .line 602
    iput-object p1, p0, mStatusHints:Landroid/telecom/StatusHints;

    .line 603
    iget-object v2, p0, mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 604
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Conference$Listener;->onStatusHintsChanged(Landroid/telecom/Conference;Landroid/telecom/StatusHints;)V

    goto :goto_8

    .line 606
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    :cond_18
    return-void
.end method

.method public final setVideoProvider(Landroid/telecom/Connection;Landroid/telecom/Connection$VideoProvider;)V
    .registers 8
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .prologue
    .line 425
    const-string/jumbo v2, "setVideoProvider Conference: %s Connection: %s VideoState: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    iget-object v2, p0, mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 428
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p2}, Landroid/telecom/Conference$Listener;->onVideoProviderChanged(Landroid/telecom/Conference;Landroid/telecom/Connection$VideoProvider;)V

    goto :goto_18

    .line 430
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    :cond_28
    return-void
.end method

.method public final setVideoState(Landroid/telecom/Connection;I)V
    .registers 9
    .param p1, "c"    # Landroid/telecom/Connection;
    .param p2, "videoState"    # I

    .prologue
    .line 412
    const-string/jumbo v2, "setVideoState Conference: %s Connection: %s VideoState: %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    iget-object v2, p0, mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Conference$Listener;

    .line 415
    .local v1, "l":Landroid/telecom/Conference$Listener;
    invoke-virtual {v1, p0, p2}, Landroid/telecom/Conference$Listener;->onVideoStateChanged(Landroid/telecom/Conference;I)V

    goto :goto_1c

    .line 417
    .end local v1    # "l":Landroid/telecom/Conference$Listener;
    :cond_2c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 587
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "[State: %s,Capabilites: %s, VideoState: %s, VideoProvider: %s, ThisObject %s]"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, mState:I

    invoke-static {v4}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, mConnectionCapabilities:I

    invoke-static {v4}, Landroid/telecom/Call$Details;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p0}, getVideoState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0}, getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
