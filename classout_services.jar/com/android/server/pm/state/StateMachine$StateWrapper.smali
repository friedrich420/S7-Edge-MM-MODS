.class public Lcom/android/server/pm/state/StateMachine$StateWrapper;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/state/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private allowedTransitions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TT;TS;>;"
        }
    .end annotation
.end field

.field private parent:Lcom/android/server/pm/state/StateMachine$StateWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/state/StateMachine$StateWrapper",
            "<TS;TT;TA;>;"
        }
    .end annotation
.end field

.field private state:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private stateMachine:Lcom/android/server/pm/state/StateMachine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/pm/state/StateMachine",
            "<TS;TT;TA;>;"
        }
    .end annotation
.end field

.field private triggerExceptionMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TT;",
            "Ljava/util/LinkedHashMap",
            "<TA;TS;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/server/pm/state/StateMachine;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/state/StateMachine",
            "<TS;TT;TA;>;TS;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/pm/state/StateMachine$StateWrapper;, "Lcom/android/server/pm/state/StateMachine$StateWrapper<TS;TT;TA;>;"
    .local p1, "stateMachine":Lcom/android/server/pm/state/StateMachine;, "Lcom/android/server/pm/state/StateMachine<TS;TT;TA;>;"
    .local p2, "state":Ljava/lang/Object;, "TS;"
    const/4 v1, 0x0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object v1, p0, state:Ljava/lang/Object;

    .line 219
    iput-object v1, p0, parent:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, allowedTransitions:Ljava/util/Map;

    .line 221
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, triggerExceptionMaps:Ljava/util/Map;

    .line 224
    iput-object p1, p0, stateMachine:Lcom/android/server/pm/state/StateMachine;

    .line 225
    iput-object p2, p0, state:Ljava/lang/Object;

    .line 226
    iput-object v1, p0, parent:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    .line 227
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/state/StateMachine;Ljava/lang/Object;Lcom/android/server/pm/state/StateMachine$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/server/pm/state/StateMachine;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lcom/android/server/pm/state/StateMachine$1;

    .prologue
    .line 216
    .local p0, "this":Lcom/android/server/pm/state/StateMachine$StateWrapper;, "Lcom/android/server/pm/state/StateMachine$StateWrapper<TS;TT;TA;>;"
    invoke-direct {p0, p1, p2}, <init>(Lcom/android/server/pm/state/StateMachine;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/state/StateMachine$StateWrapper;Ljava/lang/Object;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/state/StateMachine$StateWrapper;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 216
    invoke-direct {p0, p1}, isMyChild(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/state/StateMachine$StateWrapper;

    .prologue
    .line 216
    iget-object v0, p0, allowedTransitions:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/state/StateMachine$StateWrapper;

    .prologue
    .line 216
    iget-object v0, p0, state:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/state/StateMachine$StateWrapper;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/state/StateMachine$StateWrapper;

    .prologue
    .line 216
    iget-object v0, p0, triggerExceptionMaps:Ljava/util/Map;

    return-object v0
.end method

.method private getParent()Lcom/android/server/pm/state/StateMachine$StateWrapper;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/pm/state/StateMachine$StateWrapper",
            "<TS;TT;TA;>;"
        }
    .end annotation

    .prologue
    .line 234
    .local p0, "this":Lcom/android/server/pm/state/StateMachine$StateWrapper;, "Lcom/android/server/pm/state/StateMachine$StateWrapper<TS;TT;TA;>;"
    iget-object v0, p0, parent:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    return-object v0
.end method

.method private isMyChild(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)Z"
        }
    .end annotation

    .prologue
    .line 299
    .local p0, "this":Lcom/android/server/pm/state/StateMachine$StateWrapper;, "Lcom/android/server/pm/state/StateMachine$StateWrapper<TS;TT;TA;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    iget-object v1, p0, stateMachine:Lcom/android/server/pm/state/StateMachine;

    # invokes: Lcom/android/server/pm/state/StateMachine;->stateExists(Ljava/lang/Object;)Z
    invoke-static {v1, p1}, Lcom/android/server/pm/state/StateMachine;->access$500(Lcom/android/server/pm/state/StateMachine;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 300
    iget-object v1, p0, stateMachine:Lcom/android/server/pm/state/StateMachine;

    # getter for: Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/pm/state/StateMachine;->access$600(Lcom/android/server/pm/state/StateMachine;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    .line 302
    .local v0, "climbingState":Lcom/android/server/pm/state/StateMachine$StateWrapper;, "Lcom/android/server/pm/state/StateMachine$StateWrapper<TS;TT;TA;>;"
    :cond_14
    invoke-virtual {p0, v0}, equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 306
    const/4 v1, 0x1

    .line 316
    .end local v0    # "climbingState":Lcom/android/server/pm/state/StateMachine$StateWrapper;, "Lcom/android/server/pm/state/StateMachine$StateWrapper<TS;TT;TA;>;"
    :goto_1b
    return v1

    .line 309
    .restart local v0    # "climbingState":Lcom/android/server/pm/state/StateMachine$StateWrapper;, "Lcom/android/server/pm/state/StateMachine$StateWrapper<TS;TT;TA;>;"
    :cond_1c
    invoke-direct {v0}, getParent()Lcom/android/server/pm/state/StateMachine$StateWrapper;

    move-result-object v0

    .line 311
    if-nez v0, :cond_14

    .line 316
    .end local v0    # "climbingState":Lcom/android/server/pm/state/StateMachine$StateWrapper;, "Lcom/android/server/pm/state/StateMachine$StateWrapper<TS;TT;TA;>;"
    :cond_22
    const/4 v1, 0x0

    goto :goto_1b
.end method


# virtual methods
.method public addTrigger(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/pm/state/StateMachine$StateWrapper;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TS;)",
            "Lcom/android/server/pm/state/StateMachine$StateWrapper",
            "<TS;TT;TA;>;"
        }
    .end annotation

    .prologue
    .line 239
    .local p0, "this":Lcom/android/server/pm/state/StateMachine$StateWrapper;, "Lcom/android/server/pm/state/StateMachine$StateWrapper<TS;TT;TA;>;"
    .local p1, "trigger":Ljava/lang/Object;, "TT;"
    .local p2, "newState":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, allowedTransitions:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    return-object p0
.end method

.method public addTriggerException(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/server/pm/state/StateMachine$StateWrapper;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TA;TS;)",
            "Lcom/android/server/pm/state/StateMachine$StateWrapper",
            "<TS;TT;TA;>;"
        }
    .end annotation

    .prologue
    .line 248
    .local p0, "this":Lcom/android/server/pm/state/StateMachine$StateWrapper;, "Lcom/android/server/pm/state/StateMachine$StateWrapper<TS;TT;TA;>;"
    .local p1, "trigger":Ljava/lang/Object;, "TT;"
    .local p2, "attribute":Ljava/lang/Object;, "TA;"
    .local p3, "newState":Ljava/lang/Object;, "TS;"
    iget-object v1, p0, triggerExceptionMaps:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    .line 249
    .local v0, "triggerExceptions":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TA;TS;>;"
    if-nez v0, :cond_14

    .line 250
    new-instance v0, Ljava/util/LinkedHashMap;

    .end local v0    # "triggerExceptions":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TA;TS;>;"
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 251
    .restart local v0    # "triggerExceptions":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<TA;TS;>;"
    iget-object v1, p0, triggerExceptionMaps:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_14
    invoke-virtual {v0, p2, p3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    return-object p0
.end method

.method public childOf(Ljava/lang/Object;)Lcom/android/server/pm/state/StateMachine$StateWrapper;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)",
            "Lcom/android/server/pm/state/StateMachine$StateWrapper",
            "<TS;TT;TA;>;"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, "this":Lcom/android/server/pm/state/StateMachine$StateWrapper;, "Lcom/android/server/pm/state/StateMachine$StateWrapper<TS;TT;TA;>;"
    .local p1, "state":Ljava/lang/Object;, "TS;"
    iget-object v0, p0, stateMachine:Lcom/android/server/pm/state/StateMachine;

    # invokes: Lcom/android/server/pm/state/StateMachine;->stateExists(Ljava/lang/Object;)Z
    invoke-static {v0, p1}, Lcom/android/server/pm/state/StateMachine;->access$500(Lcom/android/server/pm/state/StateMachine;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 264
    iget-object v0, p0, stateMachine:Lcom/android/server/pm/state/StateMachine;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/state/StateMachine;->addState(Ljava/lang/Object;)Lcom/android/server/pm/state/StateMachine$StateWrapper;

    .line 267
    :cond_d
    invoke-direct {p0, p1}, isMyChild(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 271
    iget-object v0, p0, stateMachine:Lcom/android/server/pm/state/StateMachine;

    # getter for: Lcom/android/server/pm/state/StateMachine;->states:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/pm/state/StateMachine;->access$600(Lcom/android/server/pm/state/StateMachine;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    iput-object v0, p0, parent:Lcom/android/server/pm/state/StateMachine$StateWrapper;

    .line 277
    :cond_21
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 283
    .local p0, "this":Lcom/android/server/pm/state/StateMachine$StateWrapper;, "Lcom/android/server/pm/state/StateMachine$StateWrapper<TS;TT;TA;>;"
    instance-of v0, p1, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    if-eqz v0, :cond_12

    .line 284
    check-cast p1, Lcom/android/server/pm/state/StateMachine$StateWrapper;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v0, p1, state:Ljava/lang/Object;

    iget-object v1, p0, state:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 285
    const/4 v0, 0x1

    .line 288
    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method getState()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "this":Lcom/android/server/pm/state/StateMachine$StateWrapper;, "Lcom/android/server/pm/state/StateMachine$StateWrapper<TS;TT;TA;>;"
    iget-object v0, p0, state:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 293
    .local p0, "this":Lcom/android/server/pm/state/StateMachine$StateWrapper;, "Lcom/android/server/pm/state/StateMachine$StateWrapper<TS;TT;TA;>;"
    iget-object v0, p0, state:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
