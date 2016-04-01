.class Lcom/android/internal/util/StateMachine$SmHandler;
.super Landroid/os/Handler;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;,
        Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;,
        Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    }
.end annotation


# static fields
.field private static final mSmHandlerObj:Ljava/lang/Object;


# instance fields
.field private mDbg:Z

.field private mDeferredMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mDestState:Lcom/android/internal/util/State;

.field private mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

.field private mHasQuit:Z

.field private mInitialState:Lcom/android/internal/util/State;

.field private mIsConstructionCompleted:Z

.field private mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

.field private mMsg:Landroid/os/Message;

.field private mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

.field private mSm:Lcom/android/internal/util/StateMachine;

.field private mStateInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/util/State;",
            "Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

.field private mStateStackTopIndex:I

.field private mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

.field private mTempStateStackCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 684
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, mSmHandlerObj:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/os/Looper;Lcom/android/internal/util/StateMachine;)V
    .registers 5
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "sm"    # Lcom/android/internal/util/StateMachine;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1179
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 678
    iput-boolean v0, p0, mHasQuit:Z

    .line 681
    iput-boolean v0, p0, mDbg:Z

    .line 690
    new-instance v0, Lcom/android/internal/util/StateMachine$LogRecords;

    invoke-direct {v0, v1}, Lcom/android/internal/util/StateMachine$LogRecords;-><init>(Lcom/android/internal/util/StateMachine$1;)V

    iput-object v0, p0, mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    .line 699
    const/4 v0, -0x1

    iput v0, p0, mStateStackTopIndex:I

    .line 708
    new-instance v0, Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;-><init>(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/StateMachine$1;)V

    iput-object v0, p0, mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    .line 711
    new-instance v0, Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;-><init>(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/StateMachine$1;)V

    iput-object v0, p0, mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    .line 741
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mStateInfo:Ljava/util/HashMap;

    .line 750
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mDeferredMessages:Ljava/util/ArrayList;

    .line 1180
    iput-object p2, p0, mSm:Lcom/android/internal/util/StateMachine;

    .line 1182
    iget-object v0, p0, mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    invoke-direct {p0, v0, v1}, addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1183
    iget-object v0, p0, mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    invoke-direct {p0, v0, v1}, addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1184
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Looper;Lcom/android/internal/util/StateMachine;Lcom/android/internal/util/StateMachine$1;)V
    .registers 4
    .param p1, "x0"    # Landroid/os/Looper;
    .param p2, "x1"    # Lcom/android/internal/util/StateMachine;
    .param p3, "x2"    # Lcom/android/internal/util/StateMachine$1;

    .prologue
    .line 675
    invoke-direct {p0, p1, p2}, <init>(Landroid/os/Looper;Lcom/android/internal/util/StateMachine;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/util/StateMachine$SmHandler;)Landroid/os/Message;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/util/StateMachine$SmHandler;

    .prologue
    .line 675
    invoke-direct {p0}, getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/util/StateMachine$SmHandler;

    .prologue
    .line 675
    invoke-direct {p0}, getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/IState;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/util/StateMachine$SmHandler;

    .prologue
    .line 675
    invoke-direct {p0}, getDestState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/IState;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/util/StateMachine$SmHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 675
    invoke-direct {p0, p1}, transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/util/StateMachine$SmHandler;

    .prologue
    .line 675
    iget-object v0, p0, mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/util/StateMachine$SmHandler;Landroid/os/Message;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/util/StateMachine$SmHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 675
    invoke-direct {p0, p1}, deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/util/StateMachine$SmHandler;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/util/StateMachine$SmHandler;

    .prologue
    .line 675
    iget-boolean v0, p0, mDbg:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$LogRecords;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/util/StateMachine$SmHandler;

    .prologue
    .line 675
    iget-object v0, p0, mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/util/StateMachine$SmHandler;)[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/util/StateMachine$SmHandler;

    .prologue
    .line 675
    iget-object v0, p0, mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/util/StateMachine$SmHandler;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/util/StateMachine$SmHandler;

    .prologue
    .line 675
    iget v0, p0, mStateStackTopIndex:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/State;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/util/StateMachine$SmHandler;

    .prologue
    .line 675
    iget-object v0, p0, mDestState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/util/StateMachine$SmHandler;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/util/StateMachine$SmHandler;

    .prologue
    .line 675
    iget-object v0, p0, mDeferredMessages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/util/StateMachine$SmHandler;Landroid/os/Message;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/internal/util/StateMachine$SmHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 675
    invoke-direct {p0, p1}, isQuit(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/internal/util/StateMachine$SmHandler;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/util/StateMachine$SmHandler;

    .prologue
    .line 675
    invoke-direct {p0}, quit()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/internal/util/StateMachine$SmHandler;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/util/StateMachine$SmHandler;

    .prologue
    .line 675
    invoke-direct {p0}, quitNow()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/util/StateMachine$SmHandler;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/util/StateMachine$SmHandler;

    .prologue
    .line 675
    invoke-direct {p0}, isDbg()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/internal/util/StateMachine$SmHandler;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/util/StateMachine$SmHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 675
    invoke-direct {p0, p1}, setDbg(Z)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/internal/util/StateMachine$SmHandler;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/util/StateMachine$SmHandler;

    .prologue
    .line 675
    invoke-direct {p0}, completeConstruction()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/util/StateMachine$SmHandler;

    .prologue
    .line 675
    iget-object v0, p0, mSm:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/util/StateMachine$SmHandler;
    .param p1, "x1"    # Lcom/android/internal/util/State;
    .param p2, "x2"    # Lcom/android/internal/util/State;

    .prologue
    .line 675
    invoke-direct {p0, p1, p2}, addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/State;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/util/StateMachine$SmHandler;
    .param p1, "x1"    # Lcom/android/internal/util/State;

    .prologue
    .line 675
    invoke-direct {p0, p1}, setInitialState(Lcom/android/internal/util/State;)V

    return-void
.end method

.method private final addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .registers 9
    .param p1, "state"    # Lcom/android/internal/util/State;
    .param p2, "parent"    # Lcom/android/internal/util/State;

    .prologue
    const/4 v5, 0x0

    .line 1142
    iget-boolean v2, p0, mDbg:Z

    if-eqz v2, :cond_2f

    .line 1143
    iget-object v3, p0, mSm:Lcom/android/internal/util/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStateInternal: E state="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",parent="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez p2, :cond_65

    const-string v2, ""

    :goto_24
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1146
    :cond_2f
    const/4 v0, 0x0

    .line 1147
    .local v0, "parentStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    if-eqz p2, :cond_40

    .line 1148
    iget-object v2, p0, mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "parentStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    check-cast v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1149
    .restart local v0    # "parentStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    if-nez v0, :cond_40

    .line 1151
    invoke-direct {p0, p2, v5}, addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    move-result-object v0

    .line 1154
    :cond_40
    iget-object v2, p0, mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1155
    .local v1, "stateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    if-nez v1, :cond_54

    .line 1156
    new-instance v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .end local v1    # "stateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    invoke-direct {v1, p0, v5}, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;-><init>(Lcom/android/internal/util/StateMachine$SmHandler;Lcom/android/internal/util/StateMachine$1;)V

    .line 1157
    .restart local v1    # "stateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    iget-object v2, p0, mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    :cond_54
    iget-object v2, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    if-eqz v2, :cond_6a

    iget-object v2, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    if-eq v2, v0, :cond_6a

    .line 1163
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "state already added"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1143
    .end local v0    # "parentStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .end local v1    # "stateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    :cond_65
    invoke-virtual {p2}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_24

    .line 1165
    .restart local v0    # "parentStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .restart local v1    # "stateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    :cond_6a
    iput-object p1, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    .line 1166
    iput-object v0, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1167
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->active:Z

    .line 1168
    iget-boolean v2, p0, mDbg:Z

    if-eqz v2, :cond_8d

    iget-object v2, p0, mSm:Lcom/android/internal/util/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addStateInternal: X stateInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1169
    :cond_8d
    return-object v1
.end method

.method private final cleanupAfterQuitting()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 902
    iget-object v0, p0, mSm:Lcom/android/internal/util/StateMachine;

    # getter for: Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/internal/util/StateMachine;->access$400(Lcom/android/internal/util/StateMachine;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 904
    invoke-virtual {p0}, getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 905
    iget-object v0, p0, mSm:Lcom/android/internal/util/StateMachine;

    # setter for: Lcom/android/internal/util/StateMachine;->mSmThread:Landroid/os/HandlerThread;
    invoke-static {v0, v1}, Lcom/android/internal/util/StateMachine;->access$402(Lcom/android/internal/util/StateMachine;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 908
    :cond_15
    iget-object v0, p0, mSm:Lcom/android/internal/util/StateMachine;

    # setter for: Lcom/android/internal/util/StateMachine;->mSmHandler:Lcom/android/internal/util/StateMachine$SmHandler;
    invoke-static {v0, v1}, Lcom/android/internal/util/StateMachine;->access$502(Lcom/android/internal/util/StateMachine;Lcom/android/internal/util/StateMachine$SmHandler;)Lcom/android/internal/util/StateMachine$SmHandler;

    .line 909
    iput-object v1, p0, mSm:Lcom/android/internal/util/StateMachine;

    .line 910
    iput-object v1, p0, mMsg:Landroid/os/Message;

    .line 911
    iget-object v0, p0, mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine$LogRecords;->cleanup()V

    .line 912
    iput-object v1, p0, mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 913
    iput-object v1, p0, mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 914
    iget-object v0, p0, mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 915
    iput-object v1, p0, mInitialState:Lcom/android/internal/util/State;

    .line 916
    iput-object v1, p0, mDestState:Lcom/android/internal/util/State;

    .line 917
    iget-object v0, p0, mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 918
    const/4 v0, 0x1

    iput-boolean v0, p0, mHasQuit:Z

    .line 919
    return-void
.end method

.method private final completeConstruction()V
    .registers 9

    .prologue
    .line 925
    iget-boolean v5, p0, mDbg:Z

    if-eqz v5, :cond_b

    iget-object v5, p0, mSm:Lcom/android/internal/util/StateMachine;

    const-string v6, "completeConstruction: E"

    invoke-virtual {v5, v6}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 931
    :cond_b
    const/4 v3, 0x0

    .line 932
    .local v3, "maxDepth":I
    iget-object v5, p0, mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 933
    .local v4, "si":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    const/4 v0, 0x0

    .line 934
    .local v0, "depth":I
    move-object v1, v4

    .local v1, "i":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    :goto_24
    if-eqz v1, :cond_2b

    .line 935
    iget-object v1, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 934
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 937
    :cond_2b
    if-ge v3, v0, :cond_16

    .line 938
    move v3, v0

    goto :goto_16

    .line 941
    .end local v0    # "depth":I
    .end local v1    # "i":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .end local v4    # "si":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    :cond_2f
    iget-boolean v5, p0, mDbg:Z

    if-eqz v5, :cond_4b

    iget-object v5, p0, mSm:Lcom/android/internal/util/StateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "completeConstruction: maxDepth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 943
    :cond_4b
    new-array v5, v3, [Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iput-object v5, p0, mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 944
    new-array v5, v3, [Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iput-object v5, p0, mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 945
    invoke-direct {p0}, setupInitialStateStack()V

    .line 948
    const/4 v5, -0x2

    sget-object v6, mSmHandlerObj:Ljava/lang/Object;

    invoke-virtual {p0, v5, v6}, obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 950
    iget-boolean v5, p0, mDbg:Z

    if-eqz v5, :cond_6b

    iget-object v5, p0, mSm:Lcom/android/internal/util/StateMachine;

    const-string v6, "completeConstruction: X"

    invoke-virtual {v5, v6}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 951
    :cond_6b
    return-void
.end method

.method private final deferMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1200
    iget-boolean v1, p0, mDbg:Z

    if-eqz v1, :cond_1e

    iget-object v1, p0, mSm:Lcom/android/internal/util/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deferMessage: msg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1203
    :cond_1e
    invoke-virtual {p0}, obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1204
    .local v0, "newMsg":Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 1206
    iget-object v1, p0, mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1207
    return-void
.end method

.method private final getCurrentMessage()Landroid/os/Message;
    .registers 2

    .prologue
    .line 1115
    iget-object v0, p0, mMsg:Landroid/os/Message;

    return-object v0
.end method

.method private final getCurrentState()Lcom/android/internal/util/IState;
    .registers 3

    .prologue
    .line 1122
    iget-object v0, p0, mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v1, p0, mStateStackTopIndex:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    return-object v0
.end method

.method private final getDestState()Lcom/android/internal/util/IState;
    .registers 2

    .prologue
    .line 1129
    iget-object v0, p0, mDestState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method private final invokeEnterMethods(I)V
    .registers 6
    .param p1, "stateStackEnteringIndex"    # I

    .prologue
    .line 1007
    move v0, p1

    .local v0, "i":I
    :goto_1
    iget v1, p0, mStateStackTopIndex:I

    if-gt v0, v1, :cond_3e

    .line 1008
    iget-boolean v1, p0, mDbg:Z

    if-eqz v1, :cond_2b

    iget-object v1, p0, mSm:Lcom/android/internal/util/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeEnterMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v3}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1009
    :cond_2b
    iget-object v1, p0, mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v1}, Lcom/android/internal/util/State;->enter()V

    .line 1010
    iget-object v1, p0, mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->active:Z

    .line 1007
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1012
    :cond_3e
    return-void
.end method

.method private final invokeExitMethods(Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;)V
    .registers 6
    .param p1, "commonStateInfo"    # Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .prologue
    .line 994
    :goto_0
    iget v1, p0, mStateStackTopIndex:I

    if-ltz v1, :cond_47

    iget-object v1, p0, mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v2, p0, mStateStackTopIndex:I

    aget-object v1, v1, v2

    if-eq v1, p1, :cond_47

    .line 995
    iget-object v1, p0, mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v2, p0, mStateStackTopIndex:I

    aget-object v1, v1, v2

    iget-object v0, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    .line 996
    .local v0, "curState":Lcom/android/internal/util/State;
    iget-boolean v1, p0, mDbg:Z

    if-eqz v1, :cond_34

    iget-object v1, p0, mSm:Lcom/android/internal/util/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invokeExitMethods: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 997
    :cond_34
    invoke-virtual {v0}, Lcom/android/internal/util/State;->exit()V

    .line 998
    iget-object v1, p0, mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v2, p0, mStateStackTopIndex:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->active:Z

    .line 999
    iget v1, p0, mStateStackTopIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, mStateStackTopIndex:I

    goto :goto_0

    .line 1001
    .end local v0    # "curState":Lcom/android/internal/util/State;
    :cond_47
    return-void
.end method

.method private final isDbg()Z
    .registers 2

    .prologue
    .line 1228
    iget-boolean v0, p0, mDbg:Z

    return v0
.end method

.method private final isQuit(Landroid/os/Message;)Z
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1223
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, mSmHandlerObj:Ljava/lang/Object;

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private final moveDeferredMessageAtFrontOfQueue()V
    .registers 6

    .prologue
    .line 1024
    iget-object v2, p0, mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_37

    .line 1025
    iget-object v2, p0, mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 1026
    .local v0, "curMsg":Landroid/os/Message;
    iget-boolean v2, p0, mDbg:Z

    if-eqz v2, :cond_31

    iget-object v2, p0, mSm:Lcom/android/internal/util/StateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "moveDeferredMessageAtFrontOfQueue; what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1027
    :cond_31
    invoke-virtual {p0, v0}, sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1024
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 1029
    .end local v0    # "curMsg":Landroid/os/Message;
    :cond_37
    iget-object v2, p0, mDeferredMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1030
    return-void
.end method

.method private final moveTempStateStackToStateStack()I
    .registers 8

    .prologue
    .line 1040
    iget v3, p0, mStateStackTopIndex:I

    add-int/lit8 v2, v3, 0x1

    .line 1041
    .local v2, "startingIndex":I
    iget v3, p0, mTempStateStackCount:I

    add-int/lit8 v0, v3, -0x1

    .line 1042
    .local v0, "i":I
    move v1, v2

    .line 1043
    .local v1, "j":I
    :goto_9
    if-ltz v0, :cond_3f

    .line 1044
    iget-boolean v3, p0, mDbg:Z

    if-eqz v3, :cond_32

    iget-object v3, p0, mSm:Lcom/android/internal/util/StateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveTempStackToStateStack: i="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",j="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1045
    :cond_32
    iget-object v3, p0, mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget-object v4, p0, mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    aget-object v4, v4, v0

    aput-object v4, v3, v1

    .line 1046
    add-int/lit8 v1, v1, 0x1

    .line 1047
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 1050
    :cond_3f
    add-int/lit8 v3, v1, -0x1

    iput v3, p0, mStateStackTopIndex:I

    .line 1051
    iget-boolean v3, p0, mDbg:Z

    if-eqz v3, :cond_82

    .line 1052
    iget-object v3, p0, mSm:Lcom/android/internal/util/StateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "moveTempStackToStateStack: X mStateStackTop="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, mStateStackTopIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",startingIndex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",Top="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v6, p0, mStateStackTopIndex:I

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v5}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1056
    :cond_82
    return v2
.end method

.method private performTransitions(Lcom/android/internal/util/State;Landroid/os/Message;)V
    .registers 14
    .param p1, "msgProcessedState"    # Lcom/android/internal/util/State;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 818
    iget-object v0, p0, mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v1, p0, mStateStackTopIndex:I

    aget-object v0, v0, v1

    iget-object v5, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    .line 825
    .local v5, "orgState":Lcom/android/internal/util/State;
    iget-object v0, p0, mSm:Lcom/android/internal/util/StateMachine;

    iget-object v1, p0, mMsg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->recordLogRec(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v1, mSmHandlerObj:Ljava/lang/Object;

    if-eq v0, v1, :cond_60

    const/4 v9, 0x1

    .line 827
    .local v9, "recordLogMsg":Z
    :goto_19
    iget-object v0, p0, mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine$LogRecords;->logOnlyTransitions()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 829
    iget-object v0, p0, mDestState:Lcom/android/internal/util/State;

    if-eqz v0, :cond_39

    .line 830
    iget-object v0, p0, mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    iget-object v1, p0, mSm:Lcom/android/internal/util/StateMachine;

    iget-object v2, p0, mMsg:Landroid/os/Message;

    iget-object v3, p0, mSm:Lcom/android/internal/util/StateMachine;

    iget-object v4, p0, mMsg:Landroid/os/Message;

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, mDestState:Lcom/android/internal/util/State;

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/StateMachine$LogRecords;->add(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V

    .line 839
    :cond_39
    :goto_39
    iget-object v8, p0, mDestState:Lcom/android/internal/util/State;

    .line 840
    .local v8, "destState":Lcom/android/internal/util/State;
    if-eqz v8, :cond_7c

    .line 845
    :goto_3d
    iget-boolean v0, p0, mDbg:Z

    if-eqz v0, :cond_48

    iget-object v0, p0, mSm:Lcom/android/internal/util/StateMachine;

    const-string v1, "handleMessage: new destination call exit/enter"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 852
    :cond_48
    invoke-direct {p0, v8}, setupTempStateStackWithStatesToEnter(Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    move-result-object v7

    .line 853
    .local v7, "commonStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    invoke-direct {p0, v7}, invokeExitMethods(Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;)V

    .line 854
    invoke-direct {p0}, moveTempStateStackToStateStack()I

    move-result v10

    .line 855
    .local v10, "stateStackEnteringIndex":I
    invoke-direct {p0, v10}, invokeEnterMethods(I)V

    .line 863
    invoke-direct {p0}, moveDeferredMessageAtFrontOfQueue()V

    .line 865
    iget-object v0, p0, mDestState:Lcom/android/internal/util/State;

    if-eq v8, v0, :cond_79

    .line 867
    iget-object v8, p0, mDestState:Lcom/android/internal/util/State;

    .line 872
    goto :goto_3d

    .line 825
    .end local v7    # "commonStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .end local v8    # "destState":Lcom/android/internal/util/State;
    .end local v9    # "recordLogMsg":Z
    .end local v10    # "stateStackEnteringIndex":I
    :cond_60
    const/4 v9, 0x0

    goto :goto_19

    .line 833
    .restart local v9    # "recordLogMsg":Z
    :cond_62
    if-eqz v9, :cond_39

    .line 835
    iget-object v0, p0, mLogRecords:Lcom/android/internal/util/StateMachine$LogRecords;

    iget-object v1, p0, mSm:Lcom/android/internal/util/StateMachine;

    iget-object v2, p0, mMsg:Landroid/os/Message;

    iget-object v3, p0, mSm:Lcom/android/internal/util/StateMachine;

    iget-object v4, p0, mMsg:Landroid/os/Message;

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->getLogRecString(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, mDestState:Lcom/android/internal/util/State;

    move-object v4, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/StateMachine$LogRecords;->add(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V

    goto :goto_39

    .line 873
    .restart local v7    # "commonStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .restart local v8    # "destState":Lcom/android/internal/util/State;
    .restart local v10    # "stateStackEnteringIndex":I
    :cond_79
    const/4 v0, 0x0

    iput-object v0, p0, mDestState:Lcom/android/internal/util/State;

    .line 880
    .end local v7    # "commonStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .end local v10    # "stateStackEnteringIndex":I
    :cond_7c
    if-eqz v8, :cond_8a

    .line 881
    iget-object v0, p0, mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    if-ne v8, v0, :cond_8b

    .line 885
    iget-object v0, p0, mSm:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->onQuitting()V

    .line 886
    invoke-direct {p0}, cleanupAfterQuitting()V

    .line 896
    :cond_8a
    :goto_8a
    return-void

    .line 887
    :cond_8b
    iget-object v0, p0, mHaltingState:Lcom/android/internal/util/StateMachine$SmHandler$HaltingState;

    if-ne v8, v0, :cond_8a

    .line 893
    iget-object v0, p0, mSm:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v0}, Lcom/android/internal/util/StateMachine;->onHalting()V

    goto :goto_8a
.end method

.method private final processMsg(Landroid/os/Message;)Lcom/android/internal/util/State;
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 960
    iget-object v1, p0, mStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v2, p0, mStateStackTopIndex:I

    aget-object v0, v1, v2

    .line 961
    .local v0, "curStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    iget-boolean v1, p0, mDbg:Z

    if-eqz v1, :cond_29

    .line 962
    iget-object v1, p0, mSm:Lcom/android/internal/util/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processMsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v3}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 965
    :cond_29
    invoke-direct {p0, p1}, isQuit(Landroid/os/Message;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 966
    iget-object v1, p0, mQuittingState:Lcom/android/internal/util/StateMachine$SmHandler$QuittingState;

    invoke-direct {p0, v1}, transitionTo(Lcom/android/internal/util/IState;)V

    .line 985
    :cond_34
    :goto_34
    if-eqz v0, :cond_6e

    iget-object v1, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    :goto_38
    return-object v1

    .line 980
    :cond_39
    iget-boolean v1, p0, mDbg:Z

    if-eqz v1, :cond_5c

    .line 981
    iget-object v1, p0, mSm:Lcom/android/internal/util/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processMsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v3}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 968
    :cond_5c
    iget-object v1, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->state:Lcom/android/internal/util/State;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/State;->processMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 972
    iget-object v0, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 973
    if-nez v0, :cond_39

    .line 977
    iget-object v1, p0, mSm:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/StateMachine;->unhandledMessage(Landroid/os/Message;)V

    goto :goto_34

    .line 985
    :cond_6e
    const/4 v1, 0x0

    goto :goto_38
.end method

.method private final quit()V
    .registers 3

    .prologue
    .line 1211
    iget-boolean v0, p0, mDbg:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, mSm:Lcom/android/internal/util/StateMachine;

    const-string/jumbo v1, "quit:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1212
    :cond_c
    const/4 v0, -0x1

    sget-object v1, mSmHandlerObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, sendMessage(Landroid/os/Message;)Z

    .line 1213
    return-void
.end method

.method private final quitNow()V
    .registers 3

    .prologue
    .line 1217
    iget-boolean v0, p0, mDbg:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, mSm:Lcom/android/internal/util/StateMachine;

    const-string/jumbo v1, "quitNow:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1218
    :cond_c
    const/4 v0, -0x1

    sget-object v1, mSmHandlerObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1219
    return-void
.end method

.method private final setDbg(Z)V
    .registers 2
    .param p1, "dbg"    # Z

    .prologue
    .line 1233
    iput-boolean p1, p0, mDbg:Z

    .line 1234
    return-void
.end method

.method private final setInitialState(Lcom/android/internal/util/State;)V
    .registers 5
    .param p1, "initialState"    # Lcom/android/internal/util/State;

    .prologue
    .line 1188
    iget-boolean v0, p0, mDbg:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, mSm:Lcom/android/internal/util/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInitialState: initialState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1189
    :cond_21
    iput-object p1, p0, mInitialState:Lcom/android/internal/util/State;

    .line 1190
    return-void
.end method

.method private final setupInitialStateStack()V
    .registers 5

    .prologue
    .line 1095
    iget-boolean v1, p0, mDbg:Z

    if-eqz v1, :cond_23

    .line 1096
    iget-object v1, p0, mSm:Lcom/android/internal/util/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setupInitialStateStack: E mInitialState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {v3}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1099
    :cond_23
    iget-object v1, p0, mStateInfo:Ljava/util/HashMap;

    iget-object v2, p0, mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1100
    .local v0, "curStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    const/4 v1, 0x0

    iput v1, p0, mTempStateStackCount:I

    :goto_30
    if-eqz v0, :cond_41

    .line 1101
    iget-object v1, p0, mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v2, p0, mTempStateStackCount:I

    aput-object v0, v1, v2

    .line 1102
    iget-object v0, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1100
    iget v1, p0, mTempStateStackCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mTempStateStackCount:I

    goto :goto_30

    .line 1106
    :cond_41
    const/4 v1, -0x1

    iput v1, p0, mStateStackTopIndex:I

    .line 1108
    invoke-direct {p0}, moveTempStateStackToStateStack()I

    .line 1109
    return-void
.end method

.method private final setupTempStateStackWithStatesToEnter(Lcom/android/internal/util/State;)Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    .registers 6
    .param p1, "destState"    # Lcom/android/internal/util/State;

    .prologue
    .line 1077
    const/4 v1, 0x0

    iput v1, p0, mTempStateStackCount:I

    .line 1078
    iget-object v1, p0, mStateInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1080
    .local v0, "curStateInfo":Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;
    :cond_b
    iget-object v1, p0, mTempStateStack:[Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    iget v2, p0, mTempStateStackCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, mTempStateStackCount:I

    aput-object v0, v1, v2

    .line 1081
    iget-object v0, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->parentStateInfo:Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;

    .line 1082
    if-eqz v0, :cond_1d

    iget-boolean v1, v0, Lcom/android/internal/util/StateMachine$SmHandler$StateInfo;->active:Z

    if-eqz v1, :cond_b

    .line 1084
    :cond_1d
    iget-boolean v1, p0, mDbg:Z

    if-eqz v1, :cond_46

    .line 1085
    iget-object v1, p0, mSm:Lcom/android/internal/util/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setupTempStateStackWithStatesToEnter: X mTempStateStackCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mTempStateStackCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",curStateInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1088
    :cond_46
    return-object v0
.end method

.method private final transitionTo(Lcom/android/internal/util/IState;)V
    .registers 5
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    .prologue
    .line 1194
    check-cast p1, Lcom/android/internal/util/State;

    .end local p1    # "destState":Lcom/android/internal/util/IState;
    iput-object p1, p0, mDestState:Lcom/android/internal/util/State;

    .line 1195
    iget-boolean v0, p0, mDbg:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, mSm:Lcom/android/internal/util/StateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "transitionTo: destState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mDestState:Lcom/android/internal/util/State;

    invoke-virtual {v2}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 1196
    :cond_27
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 781
    iget-boolean v1, p0, mHasQuit:Z

    if-nez v1, :cond_3f

    .line 782
    iget-boolean v1, p0, mDbg:Z

    if-eqz v1, :cond_22

    iget-object v1, p0, mSm:Lcom/android/internal/util/StateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: E msg.what="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 785
    :cond_22
    iput-object p1, p0, mMsg:Landroid/os/Message;

    .line 788
    const/4 v0, 0x0

    .line 789
    .local v0, "msgProcessedState":Lcom/android/internal/util/State;
    iget-boolean v1, p0, mIsConstructionCompleted:Z

    if-eqz v1, :cond_40

    .line 791
    invoke-direct {p0, p1}, processMsg(Landroid/os/Message;)Lcom/android/internal/util/State;

    move-result-object v0

    .line 801
    :goto_2d
    invoke-direct {p0, v0, p1}, performTransitions(Lcom/android/internal/util/State;Landroid/os/Message;)V

    .line 804
    iget-boolean v1, p0, mDbg:Z

    if-eqz v1, :cond_3f

    iget-object v1, p0, mSm:Lcom/android/internal/util/StateMachine;

    if-eqz v1, :cond_3f

    iget-object v1, p0, mSm:Lcom/android/internal/util/StateMachine;

    const-string v2, "handleMessage: X"

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 806
    .end local v0    # "msgProcessedState":Lcom/android/internal/util/State;
    :cond_3f
    return-void

    .line 792
    .restart local v0    # "msgProcessedState":Lcom/android/internal/util/State;
    :cond_40
    iget-boolean v1, p0, mIsConstructionCompleted:Z

    if-nez v1, :cond_5b

    iget-object v1, p0, mMsg:Landroid/os/Message;

    iget v1, v1, Landroid/os/Message;->what:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_5b

    iget-object v1, p0, mMsg:Landroid/os/Message;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    sget-object v2, mSmHandlerObj:Ljava/lang/Object;

    if-ne v1, v2, :cond_5b

    .line 795
    const/4 v1, 0x1

    iput-boolean v1, p0, mIsConstructionCompleted:Z

    .line 796
    const/4 v1, 0x0

    invoke-direct {p0, v1}, invokeEnterMethods(I)V

    goto :goto_2d

    .line 798
    :cond_5b
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StateMachine.handleMessage: The start method not called, received msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
