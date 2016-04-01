.class public Lcom/android/internal/util/StateMachine;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/StateMachine$1;,
        Lcom/android/internal/util/StateMachine$SmHandler;,
        Lcom/android/internal/util/StateMachine$LogRecords;,
        Lcom/android/internal/util/StateMachine$LogRec;
    }
.end annotation


# static fields
.field public static final HANDLED:Z = true

.field public static final NOT_HANDLED:Z = false

.field private static final SM_INIT_CMD:I = -0x2

.field private static final SM_QUIT_CMD:I = -0x1


# instance fields
.field private mName:Ljava/lang/String;

.field private mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

.field private mSmThread:Landroid/os/HandlerThread;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1258
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, mSmThread:Landroid/os/HandlerThread;

    .line 1259
    iget-object v1, p0, mSmThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 1260
    iget-object v1, p0, mSmThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1262
    .local v0, "looper":Landroid/os/Looper;
    invoke-direct {p0, p1, v0}, initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1263
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1280
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1281
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/os/Looper;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1271
    invoke-direct {p0, p1, p2}, initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V

    .line 1272
    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/util/StateMachine;)Landroid/os/HandlerThread;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/util/StateMachine;

    .prologue
    .line 421
    iget-object v0, p0, mSmThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/util/StateMachine;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/util/StateMachine;
    .param p1, "x1"    # Landroid/os/HandlerThread;

    .prologue
    .line 421
    iput-object p1, p0, mSmThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/internal/util/StateMachine;Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$SmHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/util/StateMachine;
    .param p1, "x1"    # Lcom/android/internal/util/StateMachine$SmHandler;

    .prologue
    .line 421
    iput-object p1, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    return-object p1
.end method

.method private initStateMachine(Ljava/lang/String;Landroid/os/Looper;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1248
    iput-object p1, p0, mName:Ljava/lang/String;

    .line 1249
    new-instance v0, Lcom/android/internal/util/StateMachine$SmHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;-><init>(Landroid/os/Looper;Lcom/android/internal/util/StateMachine;Lcom/android/internal/util/StateMachine$1;)V

    iput-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1250
    return-void
.end method


# virtual methods
.method protected addLogRec(Ljava/lang/String;)V
    .registers 10
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1492
    iget-object v7, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1493
    .local v7, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v7, :cond_5

    .line 1496
    :goto_4
    return-void

    .line 1494
    :cond_5
    # getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;
    invoke-static {v7}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1700(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v0

    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v7}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1000(Lcom/android/internal/util/StateMachine$SmHandler;)Landroid/os/Message;

    move-result-object v2

    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v7}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1100(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/IState;

    move-result-object v4

    # getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    invoke-static {v7}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1900(Lcom/android/internal/util/StateMachine$SmHandler;)[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    move-result-object v1

    # getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mStateStackTopIndex:I
    invoke-static {v7}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2000(Lcom/android/internal/util/StateMachine$SmHandler;)I

    move-result v3

    aget-object v1, v1, v3

    iget-object v5, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    # getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mDestState:Lcom/android/internal/util/State;
    invoke-static {v7}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2100(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/State;

    move-result-object v6

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/StateMachine$LogRecords;->add(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V

    goto :goto_4
.end method

.method protected final addState(Lcom/android/internal/util/State;)V
    .registers 4
    .param p1, "state"    # Lcom/android/internal/util/State;

    .prologue
    .line 1297
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    const/4 v1, 0x0

    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    invoke-static {v0, p1, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$800(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1298
    return-void
.end method

.method protected final addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V
    .registers 4
    .param p1, "state"    # Lcom/android/internal/util/State;
    .param p2, "parent"    # Lcom/android/internal/util/State;

    .prologue
    .line 1289
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    invoke-static {v0, p1, p2}, Lcom/android/internal/util/StateMachine$SmHandler;->access$800(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1290
    return-void
.end method

.method public final copyLogRecs()Ljava/util/Collection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/util/StateMachine$LogRec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1475
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 1476
    .local v3, "vlr":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/android/internal/util/StateMachine$LogRec;>;"
    iget-object v2, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1477
    .local v2, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-eqz v2, :cond_25

    .line 1478
    # getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;
    invoke-static {v2}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1700(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v4

    # getter for: Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;
    invoke-static {v4}, Lcom/android/internal/util/StateMachine$LogRecords;->access$1800(Lcom/android/internal/util/StateMachine$LogRecords;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/StateMachine$LogRec;

    .line 1479
    .local v1, "lr":Lcom/android/internal/util/StateMachine$LogRec;
    invoke-virtual {v3, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 1482
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "lr":Lcom/android/internal/util/StateMachine$LogRec;
    :cond_25
    return-object v3
.end method

.method protected final deferMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1380
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->deferMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1500(Lcom/android/internal/util/StateMachine$SmHandler;Landroid/os/Message;)V

    .line 1381
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1979
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1980
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " total records="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, getLogRecCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1981
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_35
    invoke-virtual {p0}, getLogRecSize()I

    move-result v1

    if-ge v0, v1, :cond_69

    .line 1982
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " rec["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, getLogRec(I)Lcom/android/internal/util/StateMachine$LogRec;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/util/StateMachine$LogRec;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1983
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1981
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 1985
    :cond_69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "curState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1986
    return-void
.end method

.method protected final getCurrentMessage()Landroid/os/Message;
    .registers 3

    .prologue
    .line 1315
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1316
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_6

    const/4 v1, 0x0

    .line 1317
    :goto_5
    return-object v1

    :cond_6
    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1000(Lcom/android/internal/util/StateMachine$SmHandler;)Landroid/os/Message;

    move-result-object v1

    goto :goto_5
.end method

.method protected final getCurrentState()Lcom/android/internal/util/IState;
    .registers 3

    .prologue
    .line 1325
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1326
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_6

    const/4 v1, 0x0

    .line 1327
    :goto_5
    return-object v1

    :cond_6
    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1100(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/IState;

    move-result-object v1

    goto :goto_5
.end method

.method protected final getDestState()Lcom/android/internal/util/IState;
    .registers 3

    .prologue
    .line 1336
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1337
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_6

    const/4 v1, 0x0

    .line 1338
    :goto_5
    return-object v1

    :cond_6
    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->getDestState()Lcom/android/internal/util/IState;
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1200(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/IState;

    move-result-object v1

    goto :goto_5
.end method

.method public final getHandler()Landroid/os/Handler;
    .registers 2

    .prologue
    .line 1527
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    return-object v0
.end method

.method public final getLogRec(I)Lcom/android/internal/util/StateMachine$LogRec;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 1466
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1467
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_6

    const/4 v1, 0x0

    .line 1468
    :goto_5
    return-object v1

    :cond_6
    # getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1700(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/util/StateMachine$LogRecords;->get(I)Lcom/android/internal/util/StateMachine$LogRec;

    move-result-object v1

    goto :goto_5
.end method

.method public final getLogRecCount()I
    .registers 3

    .prologue
    .line 1456
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1457
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_6

    const/4 v1, 0x0

    .line 1458
    :goto_5
    return v1

    :cond_6
    # getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1700(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/util/StateMachine$LogRecords;->count()I

    move-result v1

    goto :goto_5
.end method

.method public final getLogRecSize()I
    .registers 3

    .prologue
    .line 1446
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1447
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_6

    const/4 v1, 0x0

    .line 1448
    :goto_5
    return v1

    :cond_6
    # getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1700(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/util/StateMachine$LogRecords;->size()I

    move-result v1

    goto :goto_5
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1513
    const-string v0, ""

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1420
    iget-object v0, p0, mName:Ljava/lang/String;

    return-object v0
.end method

.method protected getWhatToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "what"    # I

    .prologue
    .line 1520
    const/4 v0, 0x0

    return-object v0
.end method

.method protected haltedProcessMessage(Landroid/os/Message;)V
    .registers 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1397
    return-void
.end method

.method public isDbg()Z
    .registers 3

    .prologue
    .line 1938
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1939
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_6

    const/4 v1, 0x0

    .line 1941
    :goto_5
    return v1

    :cond_6
    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->isDbg()Z
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2600(Lcom/android/internal/util/StateMachine$SmHandler;)Z

    move-result v1

    goto :goto_5
.end method

.method protected final isQuit(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1905
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1906
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_d

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    const/4 v1, 0x1

    .line 1908
    :goto_a
    return v1

    .line 1906
    :cond_b
    const/4 v1, 0x0

    goto :goto_a

    .line 1908
    :cond_d
    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->isQuit(Landroid/os/Message;)Z
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2300(Lcom/android/internal/util/StateMachine$SmHandler;Landroid/os/Message;)Z

    move-result v1

    goto :goto_a
.end method

.method protected log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2014
    iget-object v0, p0, mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    return-void
.end method

.method protected logAndAddLogRec(Ljava/lang/String;)V
    .registers 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2004
    invoke-virtual {p0, p1}, addLogRec(Ljava/lang/String;)V

    .line 2005
    invoke-virtual {p0, p1}, log(Ljava/lang/String;)V

    .line 2006
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2023
    iget-object v0, p0, mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2059
    iget-object v0, p0, mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 2069
    iget-object v0, p0, mName:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2070
    return-void
.end method

.method protected logi(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2041
    iget-object v0, p0, mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    return-void
.end method

.method protected logv(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2032
    iget-object v0, p0, mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    return-void
.end method

.method protected logw(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 2050
    iget-object v0, p0, mName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2051
    return-void
.end method

.method public final obtainMessage()Landroid/os/Message;
    .registers 2

    .prologue
    .line 1541
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(I)Landroid/os/Message;
    .registers 3
    .param p1, "what"    # I

    .prologue
    .line 1556
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(II)Landroid/os/Message;
    .registers 5
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 1591
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(III)Landroid/os/Message;
    .registers 5
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 1609
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;
    .registers 6
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1628
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .registers 4
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1573
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected onHalting()V
    .registers 1

    .prologue
    .line 1405
    return-void
.end method

.method protected onQuitting()V
    .registers 1

    .prologue
    .line 1414
    return-void
.end method

.method protected final quit()V
    .registers 2

    .prologue
    .line 1916
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1917
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    .line 1920
    :goto_4
    return-void

    .line 1919
    :cond_5
    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->quit()V
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2400(Lcom/android/internal/util/StateMachine$SmHandler;)V

    goto :goto_4
.end method

.method protected final quitNow()V
    .registers 2

    .prologue
    .line 1927
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1928
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    .line 1931
    :goto_4
    return-void

    .line 1930
    :cond_5
    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->quitNow()V
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2500(Lcom/android/internal/util/StateMachine$SmHandler;)V

    goto :goto_4
.end method

.method protected recordLogRec(Landroid/os/Message;)Z
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1502
    const/4 v0, 0x1

    return v0
.end method

.method protected final removeDeferredMessages(I)V
    .registers 6
    .param p1, "what"    # I

    .prologue
    .line 1889
    iget-object v2, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1890
    .local v2, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v2, :cond_5

    .line 1897
    :cond_4
    return-void

    .line 1892
    :cond_5
    # getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mDeferredMessages:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2200(Lcom/android/internal/util/StateMachine$SmHandler;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1893
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/Message;>;"
    :cond_d
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1894
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 1895
    .local v1, "msg":Landroid/os/Message;
    iget v3, v1, Landroid/os/Message;->what:I

    if-ne v3, p1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_d
.end method

.method protected final removeMessages(I)V
    .registers 3
    .param p1, "what"    # I

    .prologue
    .line 1879
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1880
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    .line 1883
    :goto_4
    return-void

    .line 1882
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->removeMessages(I)V

    goto :goto_4
.end method

.method public final sendMessage(I)V
    .registers 4
    .param p1, "what"    # I

    .prologue
    .line 1638
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1639
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    .line 1642
    :goto_4
    return-void

    .line 1641
    :cond_5
    invoke-virtual {p0, p1}, obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method public final sendMessage(II)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 1664
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1665
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    .line 1668
    :goto_4
    return-void

    .line 1667
    :cond_5
    invoke-virtual {p0, p1, p2}, obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method public final sendMessage(III)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 1677
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1678
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    .line 1681
    :goto_4
    return-void

    .line 1680
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method public final sendMessage(IIILjava/lang/Object;)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1690
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1691
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    .line 1694
    :goto_4
    return-void

    .line 1693
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method public final sendMessage(ILjava/lang/Object;)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1651
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1652
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    .line 1655
    :goto_4
    return-void

    .line 1654
    :cond_5
    invoke-virtual {p0, p1, p2}, obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method public final sendMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1703
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1704
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    .line 1707
    :goto_4
    return-void

    .line 1706
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method protected final sendMessageAtFrontOfQueue(I)V
    .registers 4
    .param p1, "what"    # I

    .prologue
    .line 1796
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1797
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    .line 1800
    :goto_4
    return-void

    .line 1799
    :cond_5
    invoke-virtual {p0, p1}, obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method protected final sendMessageAtFrontOfQueue(II)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "arg1"    # I

    .prologue
    .line 1824
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1825
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    .line 1828
    :goto_4
    return-void

    .line 1827
    :cond_5
    invoke-virtual {p0, p1, p2}, obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method protected final sendMessageAtFrontOfQueue(III)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .prologue
    .line 1839
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1840
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    .line 1843
    :goto_4
    return-void

    .line 1842
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method protected final sendMessageAtFrontOfQueue(IIILjava/lang/Object;)V
    .registers 7
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1853
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1854
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    .line 1857
    :goto_4
    return-void

    .line 1856
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method protected final sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1810
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1811
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    .line 1814
    :goto_4
    return-void

    .line 1813
    :cond_5
    invoke-virtual {p0, p1, p2}, obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method protected final sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1867
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1868
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    .line 1871
    :goto_4
    return-void

    .line 1870
    :cond_5
    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_4
.end method

.method public final sendMessageDelayed(IIIJ)V
    .registers 8
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "delayMillis"    # J

    .prologue
    .line 1755
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1756
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    .line 1759
    :goto_4
    return-void

    .line 1758
    :cond_5
    invoke-virtual {p0, p1, p2, p3}, obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p5}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4
.end method

.method public final sendMessageDelayed(IIILjava/lang/Object;J)V
    .registers 10
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "delayMillis"    # J

    .prologue
    .line 1769
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1770
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    .line 1773
    :goto_4
    return-void

    .line 1772
    :cond_5
    invoke-virtual {p0, p1, p2, p3, p4}, obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p5, p6}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4
.end method

.method public final sendMessageDelayed(IIJ)V
    .registers 8
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "delayMillis"    # J

    .prologue
    .line 1742
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1743
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    .line 1746
    :goto_4
    return-void

    .line 1745
    :cond_5
    invoke-virtual {p0, p1, p2}, obtainMessage(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4
.end method

.method public final sendMessageDelayed(IJ)V
    .registers 6
    .param p1, "what"    # I
    .param p2, "delayMillis"    # J

    .prologue
    .line 1716
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1717
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    .line 1720
    :goto_4
    return-void

    .line 1719
    :cond_5
    invoke-virtual {p0, p1}, obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4
.end method

.method public final sendMessageDelayed(ILjava/lang/Object;J)V
    .registers 8
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "delayMillis"    # J

    .prologue
    .line 1729
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1730
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    .line 1733
    :goto_4
    return-void

    .line 1732
    :cond_5
    invoke-virtual {p0, p1, p2}, obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4
.end method

.method public final sendMessageDelayed(Landroid/os/Message;J)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "delayMillis"    # J

    .prologue
    .line 1782
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1783
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    .line 1786
    :goto_4
    return-void

    .line 1785
    :cond_5
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/util/StateMachine$SmHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4
.end method

.method public setDbg(Z)V
    .registers 3
    .param p1, "dbg"    # Z

    .prologue
    .line 1951
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1952
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    .line 1955
    :goto_4
    return-void

    .line 1954
    :cond_5
    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->setDbg(Z)V
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2700(Lcom/android/internal/util/StateMachine$SmHandler;Z)V

    goto :goto_4
.end method

.method protected final setInitialState(Lcom/android/internal/util/State;)V
    .registers 3
    .param p1, "initialState"    # Lcom/android/internal/util/State;

    .prologue
    .line 1307
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->setInitialState(Lcom/android/internal/util/State;)V
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$900(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;)V

    .line 1308
    return-void
.end method

.method public final setLogOnlyTransitions(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 1438
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    # getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1700(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$LogRecords;->setLogOnlyTransitions(Z)V

    .line 1439
    return-void
.end method

.method public final setLogRecSize(I)V
    .registers 3
    .param p1, "maxSize"    # I

    .prologue
    .line 1429
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    # getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1700(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/util/StateMachine$LogRecords;->setSize(I)V

    .line 1430
    return-void
.end method

.method public start()V
    .registers 2

    .prologue
    .line 1962
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    .line 1963
    .local v0, "smh":Lcom/android/internal/util/StateMachine$SmHandler;
    if-nez v0, :cond_5

    .line 1967
    :goto_4
    return-void

    .line 1966
    :cond_5
    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->completeConstruction()V
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$2800(Lcom/android/internal/util/StateMachine$SmHandler;)V

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1990
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 1991
    .local v1, "sr":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 1992
    .local v0, "pr":Ljava/io/PrintWriter;
    invoke-virtual {p0, v2, v0, v2}, dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1993
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1994
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 1995
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected final transitionTo(Lcom/android/internal/util/IState;)V
    .registers 3
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    .prologue
    .line 1356
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, p1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1300(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/IState;)V

    .line 1357
    return-void
.end method

.method protected final transitionToHaltingState()V
    .registers 3

    .prologue
    .line 1367
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    iget-object v1, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    # getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;
    invoke-static {v1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1400(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    move-result-object v1

    # invokes: Lcom/android/internal/util/StateMachine$SmHandler;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1300(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/IState;)V

    .line 1368
    return-void
.end method

.method protected unhandledMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1389
    iget-object v0, p0, mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;

    # getter for: Lcom/android/internal/util/StateMachine$SmHandler;->mDbg:Z
    invoke-static {v0}, Lcom/android/internal/util/StateMachine$SmHandler;->access$1600(Lcom/android/internal/util/StateMachine$SmHandler;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - unhandledMessage: msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, loge(Ljava/lang/String;)V

    .line 1390
    :cond_20
    return-void
.end method
