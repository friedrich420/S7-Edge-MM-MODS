.class Lcom/android/internal/util/StateMachine$LogRecords;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogRecords"
.end annotation


# static fields
.field private static final DEFAULT_SIZE:I = 0x14


# instance fields
.field private mCount:I

.field private mLogOnlyTransitions:Z

.field private mLogRecVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/internal/util/StateMachine$LogRec;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxSize:I

.field private mOldestIndex:I


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 578
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, mLogRecVector:Ljava/util/Vector;

    .line 579
    const/16 v0, 0x14

    iput v0, p0, mMaxSize:I

    .line 580
    iput v1, p0, mOldestIndex:I

    .line 581
    iput v1, p0, mCount:I

    .line 582
    iput-boolean v1, p0, mLogOnlyTransitions:Z

    .line 588
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/util/StateMachine$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/internal/util/StateMachine$1;

    .prologue
    .line 574
    invoke-direct {p0}, <init>()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/util/StateMachine$LogRecords;)Ljava/util/Vector;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/util/StateMachine$LogRecords;

    .prologue
    .line 574
    iget-object v0, p0, mLogRecVector:Ljava/util/Vector;

    return-object v0
.end method


# virtual methods
.method declared-synchronized add(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V
    .registers 15
    .param p1, "sm"    # Lcom/android/internal/util/StateMachine;
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "messageInfo"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/util/IState;
    .param p5, "orgState"    # Lcom/android/internal/util/IState;
    .param p6, "transToState"    # Lcom/android/internal/util/IState;

    .prologue
    .line 661
    monitor-enter p0

    :try_start_1
    iget v1, p0, mCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mCount:I

    .line 662
    iget-object v1, p0, mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget v2, p0, mMaxSize:I

    if-ge v1, v2, :cond_23

    .line 663
    iget-object v7, p0, mLogRecVector:Ljava/util/Vector;

    new-instance v0, Lcom/android/internal/util/StateMachine$LogRec;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/util/StateMachine$LogRec;-><init>(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V

    invoke-virtual {v7, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_46

    .line 672
    :goto_21
    monitor-exit p0

    return-void

    .line 665
    :cond_23
    :try_start_23
    iget-object v1, p0, mLogRecVector:Ljava/util/Vector;

    iget v2, p0, mOldestIndex:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/StateMachine$LogRec;

    .line 666
    .local v0, "pmi":Lcom/android/internal/util/StateMachine$LogRec;
    iget v1, p0, mOldestIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mOldestIndex:I

    .line 667
    iget v1, p0, mOldestIndex:I

    iget v2, p0, mMaxSize:I

    if-lt v1, v2, :cond_3c

    .line 668
    const/4 v1, 0x0

    iput v1, p0, mOldestIndex:I

    :cond_3c
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 670
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/util/StateMachine$LogRec;->update(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V
    :try_end_45
    .catchall {:try_start_23 .. :try_end_45} :catchall_46

    goto :goto_21

    .line 661
    .end local v0    # "pmi":Lcom/android/internal/util/StateMachine$LogRec;
    :catchall_46
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized cleanup()V
    .registers 2

    .prologue
    .line 627
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 628
    monitor-exit p0

    return-void

    .line 627
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized count()I
    .registers 2

    .prologue
    .line 620
    monitor-enter p0

    :try_start_1
    iget v0, p0, mCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized get(I)Lcom/android/internal/util/StateMachine$LogRec;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 636
    monitor-enter p0

    :try_start_1
    iget v1, p0, mOldestIndex:I

    add-int v0, v1, p1

    .line 637
    .local v0, "nextIndex":I
    iget v1, p0, mMaxSize:I

    if-lt v0, v1, :cond_c

    .line 638
    iget v1, p0, mMaxSize:I

    sub-int/2addr v0, v1

    .line 640
    :cond_c
    invoke-virtual {p0}, size()I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_1e

    move-result v1

    if-lt v0, v1, :cond_15

    .line 641
    const/4 v1, 0x0

    .line 643
    :goto_13
    monitor-exit p0

    return-object v1

    :cond_15
    :try_start_15
    iget-object v1, p0, mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/StateMachine$LogRec;
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_1e

    goto :goto_13

    .line 636
    .end local v0    # "nextIndex":I
    :catchall_1e
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method declared-synchronized logOnlyTransitions()Z
    .registers 2

    .prologue
    .line 606
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, mLogOnlyTransitions:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setLogOnlyTransitions(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .prologue
    .line 602
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, mLogOnlyTransitions:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 603
    monitor-exit p0

    return-void

    .line 602
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setSize(I)V
    .registers 3
    .param p1, "maxSize"    # I

    .prologue
    .line 596
    monitor-enter p0

    :try_start_1
    iput p1, p0, mMaxSize:I

    .line 597
    const/4 v0, 0x0

    iput v0, p0, mCount:I

    .line 598
    iget-object v0, p0, mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 599
    monitor-exit p0

    return-void

    .line 596
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized size()I
    .registers 2

    .prologue
    .line 613
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
