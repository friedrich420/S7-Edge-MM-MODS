.class Landroid/telecom/RemoteConnectionService$1;
.super Ljava/lang/Object;
.source "RemoteConnectionService.java"

# interfaces
.implements Lcom/android/internal/telecom/IConnectionServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/RemoteConnectionService;


# direct methods
.method constructor <init>(Landroid/telecom/RemoteConnectionService;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, this$0:Landroid/telecom/RemoteConnectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V
    .registers 8
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "parcel"    # Landroid/telecom/ParcelableConference;

    .prologue
    .line 190
    new-instance v1, Landroid/telecom/RemoteConference;

    iget-object v4, p0, this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;
    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->access$600(Landroid/telecom/RemoteConnectionService;)Lcom/android/internal/telecom/IConnectionService;

    move-result-object v4

    invoke-direct {v1, p1, v4}, Landroid/telecom/RemoteConference;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;)V

    .line 193
    .local v1, "conference":Landroid/telecom/RemoteConference;
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getConnectionIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 194
    .local v3, "id":Ljava/lang/String;
    iget-object v4, p0, this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;
    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/RemoteConnection;

    .line 195
    .local v0, "c":Landroid/telecom/RemoteConnection;
    if-eqz v0, :cond_13

    .line 196
    invoke-virtual {v1, v0}, Landroid/telecom/RemoteConference;->addConnection(Landroid/telecom/RemoteConnection;)V

    goto :goto_13

    .line 200
    .end local v0    # "c":Landroid/telecom/RemoteConnection;
    .end local v3    # "id":Ljava/lang/String;
    :cond_31
    invoke-virtual {v1}, Landroid/telecom/RemoteConference;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3c

    .line 219
    :goto_3b
    return-void

    .line 207
    :cond_3c
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getState()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/telecom/RemoteConference;->setState(I)V

    .line 208
    invoke-virtual {p2}, Landroid/telecom/ParcelableConference;->getConnectionCapabilities()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/telecom/RemoteConference;->setConnectionCapabilities(I)V

    .line 209
    iget-object v4, p0, this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mConferenceById:Ljava/util/Map;
    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->access$700(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    new-instance v4, Landroid/telecom/RemoteConnectionService$1$1;

    invoke-direct {v4, p0, p1}, Landroid/telecom/RemoteConnectionService$1$1;-><init>(Landroid/telecom/RemoteConnectionService$1;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/telecom/RemoteConference;->registerCallback(Landroid/telecom/RemoteConference$Callback;)V

    .line 218
    iget-object v4, p0, this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mOurConnectionServiceImpl:Landroid/telecom/ConnectionService;
    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->access$900(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/telecom/ConnectionService;->addRemoteConference(Landroid/telecom/RemoteConference;)V

    goto :goto_3b
.end method

.method public addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/telecom/ParcelableConnection;

    .prologue
    .line 317
    new-instance v0, Landroid/telecom/RemoteConnection;

    iget-object v1, p0, this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mOutgoingConnectionServiceRpc:Lcom/android/internal/telecom/IConnectionService;
    invoke-static {v1}, Landroid/telecom/RemoteConnectionService;->access$600(Landroid/telecom/RemoteConnectionService;)Lcom/android/internal/telecom/IConnectionService;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Landroid/telecom/RemoteConnection;-><init>(Ljava/lang/String;Lcom/android/internal/telecom/IConnectionService;Landroid/telecom/ParcelableConnection;)V

    .line 320
    .local v0, "remoteConnction":Landroid/telecom/RemoteConnection;
    iget-object v1, p0, this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mOurConnectionServiceImpl:Landroid/telecom/ConnectionService;
    invoke-static {v1}, Landroid/telecom/RemoteConnectionService;->access$900(Landroid/telecom/RemoteConnectionService;)Landroid/telecom/ConnectionService;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionService;->addRemoteExistingConnection(Landroid/telecom/RemoteConnection;)V

    .line 321
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 292
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V
    .registers 11
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "parcel"    # Landroid/telecom/ParcelableConnection;

    .prologue
    const/4 v6, 0x6

    .line 58
    iget-object v4, p0, this$0:Landroid/telecom/RemoteConnectionService;

    const-string v5, "handleCreateConnectionSuccessful"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v4, p1, v5}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v2

    .line 60
    .local v2, "connection":Landroid/telecom/RemoteConnection;
    # getter for: Landroid/telecom/RemoteConnectionService;->NULL_CONNECTION:Landroid/telecom/RemoteConnection;
    invoke-static {}, Landroid/telecom/RemoteConnectionService;->access$100()Landroid/telecom/RemoteConnection;

    move-result-object v4

    if-eq v2, v4, :cond_b4

    iget-object v4, p0, this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mPendingConnections:Ljava/util/Set;
    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->access$200(Landroid/telecom/RemoteConnectionService;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b4

    .line 61
    iget-object v4, p0, this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mPendingConnections:Ljava/util/Set;
    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->access$200(Landroid/telecom/RemoteConnectionService;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 63
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConnectionCapabilities()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/telecom/RemoteConnection;->setConnectionCapabilities(I)V

    .line 64
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandle()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_37

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v4

    if-eq v4, v6, :cond_42

    .line 66
    :cond_37
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandle()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getHandlePresentation()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/telecom/RemoteConnection;->setAddress(Landroid/net/Uri;I)V

    .line 68
    :cond_42
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4e

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v4

    if-eq v4, v6, :cond_59

    .line 70
    :cond_4e
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getCallerDisplayNamePresentation()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/telecom/RemoteConnection;->setCallerDisplayName(Ljava/lang/String;I)V

    .line 75
    :cond_59
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v4

    if-ne v4, v6, :cond_99

    .line 76
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/telecom/RemoteConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 80
    :goto_66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v1, "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getConferenceableConnectionIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_73
    :goto_73
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    .local v0, "confId":Ljava/lang/String;
    iget-object v4, p0, this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;
    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 83
    iget-object v4, p0, this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;
    invoke-static {v4}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_73

    .line 78
    .end local v0    # "confId":Ljava/lang/String;
    .end local v1    # "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_99
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getState()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/telecom/RemoteConnection;->setState(I)V

    goto :goto_66

    .line 86
    .restart local v1    # "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_a1
    invoke-virtual {v2, v1}, Landroid/telecom/RemoteConnection;->setConferenceableConnections(Ljava/util/List;)V

    .line 87
    invoke-virtual {p3}, Landroid/telecom/ParcelableConnection;->getVideoState()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/telecom/RemoteConnection;->setVideoState(I)V

    .line 88
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection;->getState()I

    move-result v4

    if-ne v4, v6, :cond_b4

    .line 91
    invoke-virtual {v2}, Landroid/telecom/RemoteConnection;->setDestroyed()V

    .line 94
    .end local v1    # "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_b4
    return-void
.end method

.method public onPostDialChar(Ljava/lang/String;C)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "nextChar"    # C

    .prologue
    .line 240
    iget-object v0, p0, this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "onPostDialChar"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->onPostDialChar(C)V

    .line 242
    return-void
.end method

.method public onPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "remaining"    # Ljava/lang/String;

    .prologue
    .line 234
    iget-object v0, p0, this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "onPostDialWait"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setPostDialWait(Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/android/internal/telecom/RemoteServiceCallback;

    .prologue
    .line 247
    return-void
.end method

.method public removeCall(Ljava/lang/String;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v0, p0, this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;
    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 224
    iget-object v0, p0, this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "removeCall"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/RemoteConnection;->setDestroyed()V

    .line 230
    :goto_18
    return-void

    .line 227
    :cond_19
    iget-object v0, p0, this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "removeCall"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$400(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/RemoteConference;->setDestroyed()V

    goto :goto_18
.end method

.method public setActive(Ljava/lang/String;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x4

    .line 98
    iget-object v0, p0, this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;
    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 99
    iget-object v0, p0, this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setActive"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telecom/RemoteConnection;->setState(I)V

    .line 105
    :goto_19
    return-void

    .line 102
    :cond_1a
    iget-object v0, p0, this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setActive"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$400(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telecom/RemoteConference;->setState(I)V

    goto :goto_19
.end method

.method public setAddress(Ljava/lang/String;Landroid/net/Uri;I)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "presentation"    # I

    .prologue
    .line 279
    iget-object v0, p0, this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setAddress"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/telecom/RemoteConnection;->setAddress(Landroid/net/Uri;I)V

    .line 281
    return-void
.end method

.method public setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callerDisplayName"    # Ljava/lang/String;
    .param p3, "presentation"    # I

    .prologue
    .line 286
    iget-object v0, p0, this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setCallerDisplayName"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/telecom/RemoteConnection;->setCallerDisplayName(Ljava/lang/String;I)V

    .line 288
    return-void
.end method

.method public setConferenceMergeFailed(Ljava/lang/String;)V
    .registers 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 184
    return-void
.end method

.method public final setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V
    .registers 8
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 298
    .local p2, "conferenceableConnectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v0, "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/RemoteConnection;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_9
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 300
    .local v2, "id":Ljava/lang/String;
    iget-object v3, p0, this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;
    invoke-static {v3}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 301
    iget-object v3, p0, this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;
    invoke-static {v3}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 305
    .end local v2    # "id":Ljava/lang/String;
    :cond_2f
    iget-object v3, p0, this$0:Landroid/telecom/RemoteConnectionService;

    # invokes: Landroid/telecom/RemoteConnectionService;->hasConnection(Ljava/lang/String;)Z
    invoke-static {v3, p1}, Landroid/telecom/RemoteConnectionService;->access$1000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 306
    iget-object v3, p0, this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v4, "setConferenceableConnections"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v3, p1, v4}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/telecom/RemoteConnection;->setConferenceableConnections(Ljava/util/List;)V

    .line 312
    :goto_43
    return-void

    .line 309
    :cond_44
    iget-object v3, p0, this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v4, "setConferenceableConnections"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;
    invoke-static {v3, p1, v4}, Landroid/telecom/RemoteConnectionService;->access$400(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/telecom/RemoteConference;->setConferenceableConnections(Ljava/util/List;)V

    goto :goto_43
.end method

.method public setConnectionCapabilities(Ljava/lang/String;I)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connectionCapabilities"    # I

    .prologue
    .line 149
    iget-object v0, p0, this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;
    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 150
    iget-object v0, p0, this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setConnectionCapabilities"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setConnectionCapabilities(I)V

    .line 156
    :goto_18
    return-void

    .line 153
    :cond_19
    iget-object v0, p0, this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setConnectionCapabilities"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$400(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConference;->setConnectionCapabilities(I)V

    goto :goto_18
.end method

.method public setDialing(Ljava/lang/String;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setDialing"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection;->setState(I)V

    .line 117
    return-void
.end method

.method public setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;

    .prologue
    .line 121
    iget-object v0, p0, this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;
    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 122
    iget-object v0, p0, this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setDisconnected"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    .line 128
    :goto_18
    return-void

    .line 125
    :cond_19
    iget-object v0, p0, this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setDisconnected"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$400(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConference;->setDisconnected(Landroid/telecom/DisconnectCause;)V

    goto :goto_18
.end method

.method public setExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 325
    iget-object v0, p0, this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;
    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 326
    iget-object v0, p0, this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setExtras"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setExtras(Landroid/os/Bundle;)V

    .line 332
    :goto_18
    return-void

    .line 329
    :cond_19
    iget-object v0, p0, this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setExtras"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$400(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConference;->setExtras(Landroid/os/Bundle;)V

    goto :goto_18
.end method

.method public setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "conferenceCallId"    # Ljava/lang/String;

    .prologue
    .line 161
    iget-object v2, p0, this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v3, "setIsConferenced"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v2, p1, v3}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v1

    .line 163
    .local v1, "connection":Landroid/telecom/RemoteConnection;
    # getter for: Landroid/telecom/RemoteConnectionService;->NULL_CONNECTION:Landroid/telecom/RemoteConnection;
    invoke-static {}, Landroid/telecom/RemoteConnectionService;->access$100()Landroid/telecom/RemoteConnection;

    move-result-object v2

    if-eq v1, v2, :cond_1e

    .line 164
    if-nez p2, :cond_1f

    .line 166
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection;->getConference()Landroid/telecom/RemoteConference;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 167
    invoke-virtual {v1}, Landroid/telecom/RemoteConnection;->getConference()Landroid/telecom/RemoteConference;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telecom/RemoteConference;->removeConnection(Landroid/telecom/RemoteConnection;)V

    .line 177
    :cond_1e
    :goto_1e
    return-void

    .line 170
    :cond_1f
    iget-object v2, p0, this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v3, "setIsConferenced"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;
    invoke-static {v2, p2, v3}, Landroid/telecom/RemoteConnectionService;->access$400(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    .line 172
    .local v0, "conference":Landroid/telecom/RemoteConference;
    # getter for: Landroid/telecom/RemoteConnectionService;->NULL_CONFERENCE:Landroid/telecom/RemoteConference;
    invoke-static {}, Landroid/telecom/RemoteConnectionService;->access$500()Landroid/telecom/RemoteConference;

    move-result-object v2

    if-eq v0, v2, :cond_1e

    .line 173
    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConference;->addConnection(Landroid/telecom/RemoteConnection;)V

    goto :goto_1e
.end method

.method public setIsVoipAudioMode(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isVoip"    # Z

    .prologue
    .line 267
    iget-object v0, p0, this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setIsVoipAudioMode"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setIsVoipAudioMode(Z)V

    .line 269
    return-void
.end method

.method public setOnHold(Ljava/lang/String;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x5

    .line 132
    iget-object v0, p0, this$0:Landroid/telecom/RemoteConnectionService;

    # getter for: Landroid/telecom/RemoteConnectionService;->mConnectionById:Ljava/util/Map;
    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 133
    iget-object v0, p0, this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setOnHold"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telecom/RemoteConnection;->setState(I)V

    .line 139
    :goto_19
    return-void

    .line 136
    :cond_1a
    iget-object v0, p0, this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setOnHold"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$400(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telecom/RemoteConference;->setState(I)V

    goto :goto_19
.end method

.method public setRingbackRequested(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "ringing"    # Z

    .prologue
    .line 143
    iget-object v0, p0, this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setRingbackRequested"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setRingbackRequested(Z)V

    .line 145
    return-void
.end method

.method public setRinging(Ljava/lang/String;)V
    .registers 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setRinging"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/telecom/RemoteConnection;->setState(I)V

    .line 111
    return-void
.end method

.method public setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "statusHints"    # Landroid/telecom/StatusHints;

    .prologue
    .line 273
    iget-object v0, p0, this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setStatusHints"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setStatusHints(Landroid/telecom/StatusHints;)V

    .line 275
    return-void
.end method

.method public setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;)V
    .registers 6
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoProvider"    # Lcom/android/internal/telecom/IVideoProvider;

    .prologue
    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, "remoteVideoProvider":Landroid/telecom/RemoteConnection$VideoProvider;
    if-eqz p2, :cond_8

    .line 253
    new-instance v0, Landroid/telecom/RemoteConnection$VideoProvider;

    .end local v0    # "remoteVideoProvider":Landroid/telecom/RemoteConnection$VideoProvider;
    invoke-direct {v0, p2}, Landroid/telecom/RemoteConnection$VideoProvider;-><init>(Lcom/android/internal/telecom/IVideoProvider;)V

    .line 255
    .restart local v0    # "remoteVideoProvider":Landroid/telecom/RemoteConnection$VideoProvider;
    :cond_8
    iget-object v1, p0, this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v2, "setVideoProvider"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v1, p1, v2}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telecom/RemoteConnection;->setVideoProvider(Landroid/telecom/RemoteConnection$VideoProvider;)V

    .line 257
    return-void
.end method

.method public setVideoState(Ljava/lang/String;I)V
    .registers 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .prologue
    .line 261
    iget-object v0, p0, this$0:Landroid/telecom/RemoteConnectionService;

    const-string/jumbo v1, "setVideoState"

    # invokes: Landroid/telecom/RemoteConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;
    invoke-static {v0, p1, v1}, Landroid/telecom/RemoteConnectionService;->access$000(Landroid/telecom/RemoteConnectionService;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/RemoteConnection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/RemoteConnection;->setVideoState(I)V

    .line 263
    return-void
.end method
