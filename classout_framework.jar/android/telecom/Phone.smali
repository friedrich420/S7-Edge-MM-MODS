.class public final Landroid/telecom/Phone;
.super Ljava/lang/Object;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/Phone$Listener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mCallAudioState:Landroid/telecom/CallAudioState;

.field private final mCallByTelecomCallId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private final mCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mCanAddCall:Z

.field private final mInCallAdapter:Landroid/telecom/InCallAdapter;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Phone$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUnmodifiableCalls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/telecom/InCallAdapter;)V
    .registers 3
    .param p1, "adapter"    # Landroid/telecom/InCallAdapter;

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mCallByTelecomCallId:Ljava/util/Map;

    .line 117
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, mCalls:Ljava/util/List;

    .line 120
    iget-object v0, p0, mCalls:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, mUnmodifiableCalls:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, mListeners:Ljava/util/List;

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, mCanAddCall:Z

    .line 131
    iput-object p1, p0, mInCallAdapter:Landroid/telecom/InCallAdapter;

    .line 132
    return-void
.end method

.method private checkCallTree(Landroid/telecom/ParcelableCall;)V
    .registers 9
    .param p1, "parcelableCall"    # Landroid/telecom/ParcelableCall;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 371
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getParentCallId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_28

    iget-object v1, p0, mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getParentCallId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 373
    const-string v1, "ParcelableCall %s has nonexistent parent %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getParentCallId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    :cond_28
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_63

    .line 377
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2f
    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_63

    .line 378
    iget-object v1, p0, mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_60

    .line 379
    const-string v1, "ParcelableCall %s has nonexistent child %s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getChildCallIds()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    :cond_60
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 384
    .end local v0    # "i":I
    :cond_63
    return-void
.end method

.method private fireBringToForeground(Z)V
    .registers 5
    .param p1, "showDialpad"    # Z

    .prologue
    .line 359
    iget-object v2, p0, mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 360
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Phone$Listener;->onBringToForeground(Landroid/telecom/Phone;Z)V

    goto :goto_6

    .line 362
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    :cond_16
    return-void
.end method

.method private fireCallAdded(Landroid/telecom/Call;)V
    .registers 5
    .param p1, "call"    # Landroid/telecom/Call;

    .prologue
    .line 332
    iget-object v2, p0, mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 333
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Phone$Listener;->onCallAdded(Landroid/telecom/Phone;Landroid/telecom/Call;)V

    goto :goto_6

    .line 335
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    :cond_16
    return-void
.end method

.method private fireCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .registers 5
    .param p1, "audioState"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 344
    iget-object v2, p0, mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 345
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Phone$Listener;->onCallAudioStateChanged(Landroid/telecom/Phone;Landroid/telecom/CallAudioState;)V

    .line 346
    new-instance v2, Landroid/telecom/AudioState;

    invoke-direct {v2, p1}, Landroid/telecom/AudioState;-><init>(Landroid/telecom/CallAudioState;)V

    invoke-virtual {v1, p0, v2}, Landroid/telecom/Phone$Listener;->onAudioStateChanged(Landroid/telecom/Phone;Landroid/telecom/AudioState;)V

    goto :goto_6

    .line 348
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    :cond_1e
    return-void
.end method

.method private fireCallRemoved(Landroid/telecom/Call;)V
    .registers 5
    .param p1, "call"    # Landroid/telecom/Call;

    .prologue
    .line 338
    iget-object v2, p0, mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 339
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Phone$Listener;->onCallRemoved(Landroid/telecom/Phone;Landroid/telecom/Call;)V

    goto :goto_6

    .line 341
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    :cond_16
    return-void
.end method

.method private fireCanAddCallChanged(Z)V
    .registers 5
    .param p1, "canAddCall"    # Z

    .prologue
    .line 365
    iget-object v2, p0, mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 366
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Phone$Listener;->onCanAddCallChanged(Landroid/telecom/Phone;Z)V

    goto :goto_6

    .line 368
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    :cond_16
    return-void
.end method

.method private fireChangeInContent(I)V
    .registers 5
    .param p1, "contentObserver"    # I

    .prologue
    .line 352
    iget-object v2, p0, mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/Phone$Listener;

    .line 353
    .local v1, "listener":Landroid/telecom/Phone$Listener;
    invoke-virtual {v1, p0, p1}, Landroid/telecom/Phone$Listener;->onChangeInContent(Landroid/telecom/Phone;I)V

    goto :goto_6

    .line 355
    .end local v1    # "listener":Landroid/telecom/Phone$Listener;
    :cond_16
    return-void
.end method


# virtual methods
.method public final addListener(Landroid/telecom/Phone$Listener;)V
    .registers 3
    .param p1, "listener"    # Landroid/telecom/Phone$Listener;

    .prologue
    .line 220
    iget-object v0, p0, mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method public final canAddCall()Z
    .registers 2

    .prologue
    .line 249
    iget-boolean v0, p0, mCanAddCall:Z

    return v0
.end method

.method final destroy()V
    .registers 6

    .prologue
    .line 203
    iget-object v3, p0, mCalls:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Call;

    .line 204
    .local v0, "call":Landroid/telecom/Call;
    invoke-virtual {v0}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    .line 205
    .local v2, "videoCall":Landroid/telecom/InCallService$VideoCall;
    if-eqz v2, :cond_1b

    .line 206
    invoke-virtual {v2}, Landroid/telecom/InCallService$VideoCall;->destroy()V

    .line 208
    :cond_1b
    invoke-virtual {v0}, Landroid/telecom/Call;->getState()I

    move-result v3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_6

    .line 209
    invoke-virtual {v0}, Landroid/telecom/Call;->internalSetDisconnected()V

    goto :goto_6

    .line 212
    .end local v0    # "call":Landroid/telecom/Call;
    .end local v2    # "videoCall":Landroid/telecom/InCallService$VideoCall;
    :cond_26
    return-void
.end method

.method public final getAudioState()Landroid/telecom/AudioState;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 319
    new-instance v0, Landroid/telecom/AudioState;

    iget-object v1, p0, mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-direct {v0, v1}, Landroid/telecom/AudioState;-><init>(Landroid/telecom/CallAudioState;)V

    return-object v0
.end method

.method public final getCallAudioState()Landroid/telecom/CallAudioState;
    .registers 2

    .prologue
    .line 328
    iget-object v0, p0, mCallAudioState:Landroid/telecom/CallAudioState;

    return-object v0
.end method

.method public final getCalls()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, mUnmodifiableCalls:Ljava/util/List;

    return-object v0
.end method

.method final internalAddCall(Landroid/telecom/ParcelableCall;)V
    .registers 6
    .param p1, "parcelableCall"    # Landroid/telecom/ParcelableCall;

    .prologue
    .line 135
    new-instance v0, Landroid/telecom/Call;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getState()I

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/telecom/Call;-><init>(Landroid/telecom/Phone;Ljava/lang/String;Landroid/telecom/InCallAdapter;I)V

    .line 137
    .local v0, "call":Landroid/telecom/Call;
    iget-object v1, p0, mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v1, p0, mCalls:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-direct {p0, p1}, checkCallTree(Landroid/telecom/ParcelableCall;)V

    .line 140
    iget-object v1, p0, mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Landroid/telecom/Call;->internalUpdate(Landroid/telecom/ParcelableCall;Ljava/util/Map;)V

    .line 141
    invoke-direct {p0, v0}, fireCallAdded(Landroid/telecom/Call;)V

    .line 142
    return-void
.end method

.method final internalBringToForeground(Z)V
    .registers 2
    .param p1, "showDialpad"    # Z

    .prologue
    .line 189
    invoke-direct {p0, p1}, fireBringToForeground(Z)V

    .line 190
    return-void
.end method

.method final internalCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .registers 3
    .param p1, "callAudioState"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 171
    iget-object v0, p0, mCallAudioState:Landroid/telecom/CallAudioState;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 172
    iput-object p1, p0, mCallAudioState:Landroid/telecom/CallAudioState;

    .line 173
    invoke-direct {p0, p1}, fireCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 175
    :cond_d
    return-void
.end method

.method final internalChangeInContent(I)V
    .registers 2
    .param p1, "contentObserver"    # I

    .prologue
    .line 180
    invoke-direct {p0, p1}, fireChangeInContent(I)V

    .line 181
    return-void
.end method

.method final internalGetCallByTelecomId(Ljava/lang/String;)Landroid/telecom/Call;
    .registers 3
    .param p1, "telecomId"    # Ljava/lang/String;

    .prologue
    .line 185
    iget-object v0, p0, mCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Call;

    return-object v0
.end method

.method final internalRemoveCall(Landroid/telecom/Call;)V
    .registers 5
    .param p1, "call"    # Landroid/telecom/Call;

    .prologue
    .line 145
    iget-object v1, p0, mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/telecom/Call;->internalGetCallId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v1, p0, mCalls:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 148
    invoke-virtual {p1}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    .line 149
    .local v0, "videoCall":Landroid/telecom/InCallService$VideoCall;
    if-eqz v0, :cond_17

    .line 150
    invoke-virtual {v0}, Landroid/telecom/InCallService$VideoCall;->destroy()V

    .line 152
    :cond_17
    invoke-direct {p0, p1}, fireCallRemoved(Landroid/telecom/Call;)V

    .line 153
    return-void
.end method

.method final internalSetCanAddCall(Z)V
    .registers 3
    .param p1, "canAddCall"    # Z

    .prologue
    .line 193
    iget-boolean v0, p0, mCanAddCall:Z

    if-eq v0, p1, :cond_9

    .line 194
    iput-boolean p1, p0, mCanAddCall:Z

    .line 195
    invoke-direct {p0, p1}, fireCanAddCallChanged(Z)V

    .line 197
    :cond_9
    return-void
.end method

.method final internalSetPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "telecomId"    # Ljava/lang/String;
    .param p2, "remaining"    # Ljava/lang/String;

    .prologue
    .line 164
    iget-object v1, p0, mCallByTelecomCallId:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Call;

    .line 165
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_d

    .line 166
    invoke-virtual {v0, p2}, Landroid/telecom/Call;->internalSetPostDialWait(Ljava/lang/String;)V

    .line 168
    :cond_d
    return-void
.end method

.method final internalUpdateCall(Landroid/telecom/ParcelableCall;)V
    .registers 5
    .param p1, "parcelableCall"    # Landroid/telecom/ParcelableCall;

    .prologue
    .line 156
    iget-object v1, p0, mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/telecom/ParcelableCall;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Call;

    .line 157
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_16

    .line 158
    invoke-direct {p0, p1}, checkCallTree(Landroid/telecom/ParcelableCall;)V

    .line 159
    iget-object v1, p0, mCallByTelecomCallId:Ljava/util/Map;

    invoke-virtual {v0, p1, v1}, Landroid/telecom/Call;->internalUpdate(Landroid/telecom/ParcelableCall;Ljava/util/Map;)V

    .line 161
    :cond_16
    return-void
.end method

.method public final removeListener(Landroid/telecom/Phone$Listener;)V
    .registers 3
    .param p1, "listener"    # Landroid/telecom/Phone$Listener;

    .prologue
    .line 229
    if-eqz p1, :cond_7

    .line 230
    iget-object v0, p0, mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 232
    :cond_7
    return-void
.end method

.method public final requestRcsObserver(II)V
    .registers 4
    .param p1, "rcsObserver"    # I
    .param p2, "registerUnregister"    # I

    .prologue
    .line 270
    iget-object v0, p0, mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0, p1, p2}, Landroid/telecom/InCallAdapter;->requestRcsObserver(II)V

    .line 271
    return-void
.end method

.method public final setAudioRoute(I)V
    .registers 3
    .param p1, "route"    # I

    .prologue
    .line 281
    iget-object v0, p0, mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallAdapter;->setAudioRoute(I)V

    .line 282
    return-void
.end method

.method public final setMuted(Z)V
    .registers 3
    .param p1, "state"    # Z

    .prologue
    .line 259
    iget-object v0, p0, mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallAdapter;->mute(Z)V

    .line 260
    return-void
.end method

.method public final setProximitySensorOff(Z)V
    .registers 3
    .param p1, "screenOnImmediately"    # Z

    .prologue
    .line 308
    iget-object v0, p0, mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallAdapter;->turnProximitySensorOff(Z)V

    .line 309
    return-void
.end method

.method public final setProximitySensorOn()V
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, mInCallAdapter:Landroid/telecom/InCallAdapter;

    invoke-virtual {v0}, Landroid/telecom/InCallAdapter;->turnProximitySensorOn()V

    .line 294
    return-void
.end method
