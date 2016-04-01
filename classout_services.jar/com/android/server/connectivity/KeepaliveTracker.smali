.class public Lcom/android/server/connectivity/KeepaliveTracker;
.super Ljava/lang/Object;
.source "KeepaliveTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final PERMISSION:Ljava/lang/String; = "android.permission.PACKET_KEEPALIVE_OFFLOAD"

.field private static final TAG:Ljava/lang/String; = "KeepaliveTracker"


# instance fields
.field private final mConnectivityServiceHandler:Landroid/os/Handler;

.field private final mKeepalives:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mKeepalives:Ljava/util/HashMap;

    .line 73
    iput-object p1, p0, mConnectivityServiceHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/KeepaliveTracker;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/connectivity/KeepaliveTracker;

    .prologue
    .line 60
    iget-object v0, p0, mConnectivityServiceHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private findFirstFreeSlot(Lcom/android/server/connectivity/NetworkAgentInfo;)I
    .registers 5
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 231
    iget-object v2, p0, mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 232
    .local v0, "networkKeepalives":Ljava/util/HashMap;
    if-nez v0, :cond_14

    .line 233
    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "networkKeepalives":Ljava/util/HashMap;
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 234
    .restart local v0    # "networkKeepalives":Ljava/util/HashMap;
    iget-object v2, p0, mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_14
    const/4 v1, 0x1

    .local v1, "slot":I
    :goto_15
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    if-gt v1, v2, :cond_25

    .line 241
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_26

    .line 245
    :cond_25
    return v1

    .line 240
    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_15
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 9
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .prologue
    .line 363
    const-string v5, "Packet keepalives:"

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 365
    iget-object v5, p0, mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 366
    .local v3, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-virtual {v3}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    .line 368
    iget-object v5, p0, mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_38
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_79

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 369
    .local v4, "slot":I
    iget-object v5, p0, mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 370
    .local v2, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_38

    .line 372
    .end local v2    # "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    .end local v4    # "slot":I
    :cond_79
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    goto :goto_12

    .line 374
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    :cond_7d
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    .line 375
    return-void
.end method

.method public handleCheckKeepalivesStillValid(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .registers 10
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .prologue
    .line 287
    iget-object v6, p0, mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 288
    .local v3, "networkKeepalives":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;>;"
    if-eqz v3, :cond_6b

    .line 289
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v2, "invalidKeepalives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 291
    .local v4, "slot":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    # invokes: Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->isValid()I
    invoke-static {v6}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->access$100(Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;)I

    move-result v0

    .line 292
    .local v0, "error":I
    if-eqz v0, :cond_17

    .line 293
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 296
    .end local v0    # "error":I
    .end local v4    # "slot":I
    :cond_47
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 297
    .local v5, "slotAndError":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, p1, v7, v6}, handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    goto :goto_4b

    .line 300
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "invalidKeepalives":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;>;"
    .end local v5    # "slotAndError":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_6b
    return-void
.end method

.method public handleEventPacketKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/os/Message;)V
    .registers 10
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "message"    # Landroid/os/Message;

    .prologue
    .line 303
    iget v3, p2, Landroid/os/Message;->arg1:I

    .line 304
    .local v3, "slot":I
    iget v2, p2, Landroid/os/Message;->arg2:I

    .line 306
    .local v2, "reason":I
    const/4 v1, 0x0

    .line 308
    .local v1, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    :try_start_5
    iget-object v4, p0, mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    move-object v1, v0
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_19} :catch_d5

    .line 310
    :goto_19
    if-nez v1, :cond_42

    .line 311
    const-string v4, "KeepaliveTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event for unknown keepalive "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :goto_41
    return-void

    .line 315
    :cond_42
    if-nez v2, :cond_75

    iget-boolean v4, v1, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->isStarted:Z

    if-nez v4, :cond_75

    .line 317
    const-string v4, "KeepaliveTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Started keepalive "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->isStarted:Z

    .line 319
    invoke-virtual {v1, v3, v2}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->notifyMessenger(II)V

    goto :goto_41

    .line 322
    :cond_75
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->isStarted:Z

    .line 323
    if-nez v2, :cond_a4

    .line 324
    const-string v4, "KeepaliveTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Successfully stopped keepalive "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :goto_a0
    invoke-virtual {p0, p1, v3, v2}, handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    goto :goto_41

    .line 326
    :cond_a4
    const-string v4, "KeepaliveTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Keepalive "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a0

    .line 309
    :catch_d5
    move-exception v4

    goto/16 :goto_19
.end method

.method public handleStartKeepalive(Landroid/os/Message;)V
    .registers 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 249
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 250
    .local v0, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    invoke-virtual {v0}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->getNai()Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v1

    .line 251
    .local v1, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-direct {p0, v1}, findFirstFreeSlot(Lcom/android/server/connectivity/NetworkAgentInfo;)I

    move-result v2

    .line 252
    .local v2, "slot":I
    iget-object v3, p0, mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-virtual {v0, v2}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->start(I)V

    .line 254
    return-void
.end method

.method public handleStopAllKeepalives(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    .registers 7
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "reason"    # I

    .prologue
    .line 257
    iget-object v3, p0, mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 258
    .local v2, "networkKeepalives":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;>;"
    if-eqz v2, :cond_2a

    .line 259
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 260
    .local v1, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    invoke-virtual {v1, p2}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->stop(I)V

    goto :goto_12

    .line 262
    .end local v1    # "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    :cond_22
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 263
    iget-object v3, p0, mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2a
    return-void
.end method

.method public handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V
    .registers 10
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "slot"    # I
    .param p3, "reason"    # I

    .prologue
    .line 268
    if-nez p1, :cond_27

    const-string v2, "(null)"

    .line 269
    .local v2, "networkName":Ljava/lang/String;
    :goto_4
    iget-object v3, p0, mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 270
    .local v1, "networkKeepalives":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;>;"
    if-nez v1, :cond_2c

    .line 271
    const-string v3, "KeepaliveTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to stop keepalive on nonexistent network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_26
    :goto_26
    return-void

    .line 268
    .end local v1    # "networkKeepalives":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;>;"
    .end local v2    # "networkName":Ljava/lang/String;
    :cond_27
    invoke-virtual {p1}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 274
    .restart local v1    # "networkKeepalives":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;>;"
    .restart local v2    # "networkName":Ljava/lang/String;
    :cond_2c
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    .line 275
    .local v0, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    if-nez v0, :cond_5b

    .line 276
    const-string v3, "KeepaliveTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempt to stop nonexistent keepalive "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_26

    .line 279
    :cond_5b
    invoke-virtual {v0, p3}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->stop(I)V

    .line 280
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 282
    iget-object v3, p0, mKeepalives:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26
.end method

.method notifyMessenger(Landroid/os/Messenger;II)V
    .registers 6
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "slot"    # I
    .param p3, "err"    # I

    .prologue
    .line 218
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 219
    .local v0, "message":Landroid/os/Message;
    const v1, 0x8100d

    iput v1, v0, Landroid/os/Message;->what:I

    .line 220
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 221
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 222
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 224
    :try_start_10
    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_13} :catch_14

    .line 228
    :goto_13
    return-void

    .line 225
    :catch_14
    move-exception v1

    goto :goto_13
.end method

.method public startNattKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;ILandroid/os/Messenger;Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 20
    .param p1, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p2, "intervalSeconds"    # I
    .param p3, "messenger"    # Landroid/os/Messenger;
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "srcAddrString"    # Ljava/lang/String;
    .param p6, "srcPort"    # I
    .param p7, "dstAddrString"    # Ljava/lang/String;
    .param p8, "dstPort"    # I

    .prologue
    .line 334
    if-nez p1, :cond_9

    .line 335
    const/4 v2, -0x1

    const/16 v3, -0x14

    invoke-virtual {p0, p3, v2, v3}, notifyMessenger(Landroid/os/Messenger;II)V

    .line 360
    :goto_8
    return-void

    .line 341
    :cond_9
    :try_start_9
    invoke-static/range {p5 .. p5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    .line 342
    .local v10, "srcAddress":Ljava/net/InetAddress;
    invoke-static/range {p7 .. p7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_10} :catch_4c

    move-result-object v8

    .line 350
    .local v8, "dstAddress":Ljava/net/InetAddress;
    const/16 v2, 0x1194

    :try_start_13
    move/from16 v0, p6

    invoke-static {v10, v0, v8, v2}, Lcom/android/server/connectivity/KeepalivePacketData;->nattKeepalivePacket(Ljava/net/InetAddress;ILjava/net/InetAddress;I)Lcom/android/server/connectivity/KeepalivePacketData;
    :try_end_18
    .catch Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException; {:try_start_13 .. :try_end_18} :catch_54

    move-result-object v6

    .line 356
    .local v6, "packet":Lcom/android/server/connectivity/KeepalivePacketData;
    new-instance v1, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;-><init>(Lcom/android/server/connectivity/KeepaliveTracker;Landroid/os/Messenger;Landroid/os/IBinder;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/KeepalivePacketData;I)V

    .line 357
    .local v1, "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    const-string v2, "KeepaliveTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created keepalive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v2, p0, mConnectivityServiceHandler:Landroid/os/Handler;

    const v3, 0x8100b

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8

    .line 343
    .end local v1    # "ki":Lcom/android/server/connectivity/KeepaliveTracker$KeepaliveInfo;
    .end local v6    # "packet":Lcom/android/server/connectivity/KeepalivePacketData;
    .end local v8    # "dstAddress":Ljava/net/InetAddress;
    .end local v10    # "srcAddress":Ljava/net/InetAddress;
    :catch_4c
    move-exception v9

    .line 344
    .local v9, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, -0x1

    const/16 v3, -0x15

    invoke-virtual {p0, p3, v2, v3}, notifyMessenger(Landroid/os/Messenger;II)V

    goto :goto_8

    .line 352
    .end local v9    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v8    # "dstAddress":Ljava/net/InetAddress;
    .restart local v10    # "srcAddress":Ljava/net/InetAddress;
    :catch_54
    move-exception v9

    .line 353
    .local v9, "e":Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;
    const/4 v2, -0x1

    iget v3, v9, Lcom/android/server/connectivity/KeepalivePacketData$InvalidPacketException;->error:I

    invoke-virtual {p0, p3, v2, v3}, notifyMessenger(Landroid/os/Messenger;II)V

    goto :goto_8
.end method
