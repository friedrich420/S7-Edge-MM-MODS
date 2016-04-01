.class public final Landroid/telecom/RemoteConference;
.super Ljava/lang/Object;
.source "RemoteConference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/RemoteConference$Callback;
    }
.end annotation


# instance fields
.field private final mCallbackRecords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/telecom/CallbackRecord",
            "<",
            "Landroid/telecom/RemoteConference$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mChildConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

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

.field private mConnectionCapabilities:I

.field private final mConnectionService:Lcom/android/internal/telecom/IConnectionService;

.field private mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private mExtras:Landroid/os/Bundle;

.field private final mId:Ljava/lang/String;

.field private mState:I

.field private final mUnmodifiableChildConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnmodifiableConferenceableConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/RemoteConnection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "connectionService"    # Lcom/android/internal/telecom/IConnectionService;

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, mCallbackRecords:Ljava/util/Set;

    .line 126
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, mChildConnections:Ljava/util/List;

    .line 127
    iget-object v0, p0, mChildConnections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, mUnmodifiableChildConnections:Ljava/util/List;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mConferenceableConnections:Ljava/util/List;

    .line 130
    iget-object v0, p0, mConferenceableConnections:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, mUnmodifiableConferenceableConnections:Ljava/util/List;

    .line 133
    const/4 v0, 0x1

    iput v0, p0, mState:I

    .line 140
    iput-object p1, p0, mId:Ljava/lang/String;

    .line 141
    iput-object p2, p0, mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    .line 142
    return-void
.end method

.method static synthetic access$000(Landroid/telecom/RemoteConference;)I
    .registers 2
    .param p0, "x0"    # Landroid/telecom/RemoteConference;

    .prologue
    .line 42
    iget v0, p0, mConnectionCapabilities:I

    return v0
.end method

.method static synthetic access$100(Landroid/telecom/RemoteConference;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Landroid/telecom/RemoteConference;

    .prologue
    .line 42
    iget-object v0, p0, mUnmodifiableConferenceableConnections:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method addConnection(Landroid/telecom/RemoteConnection;)V
    .registers 8
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 194
    iget-object v4, p0, mChildConnections:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 195
    iget-object v4, p0, mChildConnections:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    invoke-virtual {p1, p0}, Landroid/telecom/RemoteConnection;->setConference(Landroid/telecom/RemoteConference;)V

    .line 197
    iget-object v4, p0, mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallbackRecord;

    .line 198
    .local v3, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v1, p0

    .line 199
    .local v1, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    .line 200
    .local v0, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConference$3;

    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConference$3;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConnection;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_16

    .line 208
    .end local v0    # "callback":Landroid/telecom/RemoteConference$Callback;
    .end local v1    # "conference":Landroid/telecom/RemoteConference;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    :cond_36
    return-void
.end method

.method public disconnect()V
    .registers 3

    .prologue
    .line 338
    :try_start_0
    iget-object v0, p0, mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, mId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->disconnect(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 341
    :goto_7
    return-void

    .line 339
    :catch_8
    move-exception v0

    goto :goto_7
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
    .line 479
    iget-object v0, p0, mUnmodifiableConferenceableConnections:Ljava/util/List;

    return-object v0
.end method

.method public final getConnectionCapabilities()I
    .registers 2

    .prologue
    .line 321
    iget v0, p0, mConnectionCapabilities:I

    return v0
.end method

.method public final getConnections()Ljava/util/List;
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
    .line 302
    iget-object v0, p0, mUnmodifiableChildConnections:Ljava/util/List;

    return-object v0
.end method

.method public getDisconnectCause()Landroid/telecom/DisconnectCause;
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 330
    iget-object v0, p0, mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, mId:Ljava/lang/String;

    return-object v0
.end method

.method public final getState()I
    .registers 2

    .prologue
    .line 311
    iget v0, p0, mState:I

    return v0
.end method

.method public hold()V
    .registers 3

    .prologue
    .line 397
    :try_start_0
    iget-object v0, p0, mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, mId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->hold(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 400
    :goto_7
    return-void

    .line 398
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public merge()V
    .registers 3

    .prologue
    .line 371
    :try_start_0
    iget-object v0, p0, mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, mId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->mergeConference(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 374
    :goto_7
    return-void

    .line 372
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public playDtmfTone(C)V
    .registers 4
    .param p1, "digit"    # C

    .prologue
    .line 430
    :try_start_0
    iget-object v0, p0, mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, mId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telecom/IConnectionService;->playDtmfTone(Ljava/lang/String;C)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 433
    :goto_7
    return-void

    .line 431
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public final registerCallback(Landroid/telecom/RemoteConference$Callback;)V
    .registers 3
    .param p1, "callback"    # Landroid/telecom/RemoteConference$Callback;

    .prologue
    .line 488
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0, p1, v0}, registerCallback(Landroid/telecom/RemoteConference$Callback;Landroid/os/Handler;)V

    .line 489
    return-void
.end method

.method public final registerCallback(Landroid/telecom/RemoteConference$Callback;Landroid/os/Handler;)V
    .registers 5
    .param p1, "callback"    # Landroid/telecom/RemoteConference$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 499
    invoke-virtual {p0, p1}, unregisterCallback(Landroid/telecom/RemoteConference$Callback;)V

    .line 500
    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    .line 501
    iget-object v0, p0, mCallbackRecords:Ljava/util/Set;

    new-instance v1, Landroid/telecom/CallbackRecord;

    invoke-direct {v1, p1, p2}, Landroid/telecom/CallbackRecord;-><init>(Ljava/lang/Object;Landroid/os/Handler;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_11
    return-void
.end method

.method removeConnection(Landroid/telecom/RemoteConnection;)V
    .registers 8
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 212
    iget-object v4, p0, mChildConnections:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 213
    iget-object v4, p0, mChildConnections:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 214
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/telecom/RemoteConnection;->setConference(Landroid/telecom/RemoteConference;)V

    .line 215
    iget-object v4, p0, mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallbackRecord;

    .line 216
    .local v3, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v1, p0

    .line 217
    .local v1, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    .line 218
    .local v0, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConference$4;

    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConference$4;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConnection;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_17

    .line 226
    .end local v0    # "callback":Landroid/telecom/RemoteConference$Callback;
    .end local v1    # "conference":Landroid/telecom/RemoteConference;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    :cond_37
    return-void
.end method

.method public separate(Landroid/telecom/RemoteConnection;)V
    .registers 4
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 351
    iget-object v0, p0, mChildConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 353
    :try_start_8
    iget-object v0, p0, mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    invoke-virtual {p1}, Landroid/telecom/RemoteConnection;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->splitFromConference(Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_12

    .line 357
    :cond_11
    :goto_11
    return-void

    .line 354
    :catch_12
    move-exception v0

    goto :goto_11
.end method

.method public setAudioState(Landroid/telecom/AudioState;)V
    .registers 3
    .param p1, "state"    # Landroid/telecom/AudioState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 458
    new-instance v0, Landroid/telecom/CallAudioState;

    invoke-direct {v0, p1}, Landroid/telecom/CallAudioState;-><init>(Landroid/telecom/AudioState;)V

    invoke-virtual {p0, v0}, setCallAudioState(Landroid/telecom/CallAudioState;)V

    .line 459
    return-void
.end method

.method public setCallAudioState(Landroid/telecom/CallAudioState;)V
    .registers 4
    .param p1, "state"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 467
    :try_start_0
    iget-object v0, p0, mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, mId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telecom/IConnectionService;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 470
    :goto_7
    return-void

    .line 468
    :catch_8
    move-exception v0

    goto :goto_7
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
    .line 248
    .local p1, "conferenceableConnections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    iget-object v4, p0, mConferenceableConnections:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 249
    iget-object v4, p0, mConferenceableConnections:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 250
    iget-object v4, p0, mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallbackRecord;

    .line 251
    .local v3, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v1, p0

    .line 252
    .local v1, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    .line 253
    .local v0, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConference$6;

    invoke-direct {v5, p0, v0, v1}, Landroid/telecom/RemoteConference$6;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_10

    .line 261
    .end local v0    # "callback":Landroid/telecom/RemoteConference$Callback;
    .end local v1    # "conference":Landroid/telecom/RemoteConference;
    .end local v3    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    :cond_30
    return-void
.end method

.method setConnectionCapabilities(I)V
    .registers 8
    .param p1, "connectionCapabilities"    # I

    .prologue
    .line 230
    iget v4, p0, mConnectionCapabilities:I

    if-eq v4, p1, :cond_2c

    .line 231
    iput p1, p0, mConnectionCapabilities:I

    .line 232
    iget-object v4, p0, mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallbackRecord;

    .line 233
    .local v3, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v1, p0

    .line 234
    .local v1, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    .line 235
    .local v0, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConference$5;

    invoke-direct {v5, p0, v0, v1}, Landroid/telecom/RemoteConference$5;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_c

    .line 244
    .end local v0    # "callback":Landroid/telecom/RemoteConference$Callback;
    .end local v1    # "conference":Landroid/telecom/RemoteConference;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    :cond_2c
    return-void
.end method

.method setDestroyed()V
    .registers 8

    .prologue
    .line 151
    iget-object v5, p0, mChildConnections:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/RemoteConnection;

    .line 152
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/telecom/RemoteConnection;->setConference(Landroid/telecom/RemoteConference;)V

    goto :goto_6

    .line 154
    .end local v2    # "connection":Landroid/telecom/RemoteConnection;
    :cond_17
    iget-object v5, p0, mCallbackRecords:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telecom/CallbackRecord;

    .line 155
    .local v4, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v1, p0

    .line 156
    .local v1, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v4}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    .line 157
    .local v0, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v4}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Landroid/telecom/RemoteConference$1;

    invoke-direct {v6, p0, v0, v1}, Landroid/telecom/RemoteConference$1;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1d

    .line 164
    .end local v0    # "callback":Landroid/telecom/RemoteConference$Callback;
    .end local v1    # "conference":Landroid/telecom/RemoteConference;
    .end local v4    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    :cond_3d
    return-void
.end method

.method setDisconnected(Landroid/telecom/DisconnectCause;)V
    .registers 8
    .param p1, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    const/4 v5, 0x6

    .line 265
    iget v4, p0, mState:I

    if-eq v4, v5, :cond_30

    .line 266
    iput-object p1, p0, mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 267
    invoke-virtual {p0, v5}, setState(I)V

    .line 268
    iget-object v4, p0, mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallbackRecord;

    .line 269
    .local v3, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v1, p0

    .line 270
    .local v1, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    .line 271
    .local v0, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConference$7;

    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConference$7;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;Landroid/telecom/DisconnectCause;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_10

    .line 279
    .end local v0    # "callback":Landroid/telecom/RemoteConference$Callback;
    .end local v1    # "conference":Landroid/telecom/RemoteConference;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    :cond_30
    return-void
.end method

.method setExtras(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 283
    iput-object p1, p0, mExtras:Landroid/os/Bundle;

    .line 284
    iget-object v4, p0, mCallbackRecords:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/CallbackRecord;

    .line 285
    .local v3, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v1, p0

    .line 286
    .local v1, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConference$Callback;

    .line 287
    .local v0, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v3}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Landroid/telecom/RemoteConference$8;

    invoke-direct {v5, p0, v0, v1, p1}, Landroid/telecom/RemoteConference$8;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;Landroid/os/Bundle;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 294
    .end local v0    # "callback":Landroid/telecom/RemoteConference$Callback;
    .end local v1    # "conference":Landroid/telecom/RemoteConference;
    .end local v3    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    :cond_28
    return-void
.end method

.method setState(I)V
    .registers 11
    .param p1, "newState"    # I

    .prologue
    .line 168
    const/4 v0, 0x4

    if-eq p1, v0, :cond_19

    const/4 v0, 0x5

    if-eq p1, v0, :cond_19

    const/4 v0, 0x6

    if-eq p1, v0, :cond_19

    .line 171
    const-string v0, "Unsupported state transition for Conference call."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v5

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    :cond_18
    return-void

    .line 176
    :cond_19
    iget v0, p0, mState:I

    if-eq v0, p1, :cond_18

    .line 177
    iget v4, p0, mState:I

    .line 178
    .local v4, "oldState":I
    iput p1, p0, mState:I

    .line 179
    iget-object v0, p0, mCallbackRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telecom/CallbackRecord;

    .line 180
    .local v7, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    move-object v3, p0

    .line 181
    .local v3, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {v7}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/RemoteConference$Callback;

    .line 182
    .local v2, "callback":Landroid/telecom/RemoteConference$Callback;
    invoke-virtual {v7}, Landroid/telecom/CallbackRecord;->getHandler()Landroid/os/Handler;

    move-result-object v8

    new-instance v0, Landroid/telecom/RemoteConference$2;

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/telecom/RemoteConference$2;-><init>(Landroid/telecom/RemoteConference;Landroid/telecom/RemoteConference$Callback;Landroid/telecom/RemoteConference;II)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_27
.end method

.method public stopDtmfTone()V
    .registers 3

    .prologue
    .line 442
    :try_start_0
    iget-object v0, p0, mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, mId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->stopDtmfTone(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 445
    :goto_7
    return-void

    .line 443
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public swap()V
    .registers 3

    .prologue
    .line 387
    :try_start_0
    iget-object v0, p0, mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, mId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->swapConference(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 390
    :goto_7
    return-void

    .line 388
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public unhold()V
    .registers 3

    .prologue
    .line 407
    :try_start_0
    iget-object v0, p0, mConnectionService:Lcom/android/internal/telecom/IConnectionService;

    iget-object v1, p0, mId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/IConnectionService;->unhold(Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 410
    :goto_7
    return-void

    .line 408
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public final unregisterCallback(Landroid/telecom/RemoteConference$Callback;)V
    .registers 5
    .param p1, "callback"    # Landroid/telecom/RemoteConference$Callback;

    .prologue
    .line 513
    if-eqz p1, :cond_1f

    .line 514
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

    check-cast v1, Landroid/telecom/CallbackRecord;

    .line 515
    .local v1, "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    invoke-virtual {v1}, Landroid/telecom/CallbackRecord;->getCallback()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_8

    .line 516
    iget-object v2, p0, mCallbackRecords:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 521
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "record":Landroid/telecom/CallbackRecord;, "Landroid/telecom/CallbackRecord<Landroid/telecom/RemoteConference$Callback;>;"
    :cond_1f
    return-void
.end method
