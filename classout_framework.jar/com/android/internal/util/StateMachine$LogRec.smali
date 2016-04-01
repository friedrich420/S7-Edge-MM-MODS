.class public Lcom/android/internal/util/StateMachine$LogRec;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogRec"
.end annotation


# instance fields
.field private mDstState:Lcom/android/internal/util/IState;

.field private mInfo:Ljava/lang/String;

.field private mOrgState:Lcom/android/internal/util/IState;

.field private mSm:Lcom/android/internal/util/StateMachine;

.field private mState:Lcom/android/internal/util/IState;

.field private mTime:J

.field private mWhat:I


# direct methods
.method constructor <init>(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V
    .registers 7
    .param p1, "sm"    # Lcom/android/internal/util/StateMachine;
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "info"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/util/IState;
    .param p5, "orgState"    # Lcom/android/internal/util/IState;
    .param p6, "transToState"    # Lcom/android/internal/util/IState;

    .prologue
    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 470
    invoke-virtual/range {p0 .. p6}, update(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V

    .line 471
    return-void
.end method


# virtual methods
.method public getDestState()Lcom/android/internal/util/IState;
    .registers 2

    .prologue
    .line 522
    iget-object v0, p0, mDstState:Lcom/android/internal/util/IState;

    return-object v0
.end method

.method public getInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 508
    iget-object v0, p0, mInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalState()Lcom/android/internal/util/IState;
    .registers 2

    .prologue
    .line 529
    iget-object v0, p0, mOrgState:Lcom/android/internal/util/IState;

    return-object v0
.end method

.method public getState()Lcom/android/internal/util/IState;
    .registers 2

    .prologue
    .line 515
    iget-object v0, p0, mState:Lcom/android/internal/util/IState;

    return-object v0
.end method

.method public getTime()J
    .registers 3

    .prologue
    .line 494
    iget-wide v0, p0, mTime:J

    return-wide v0
.end method

.method public getWhat()J
    .registers 3

    .prologue
    .line 501
    iget v0, p0, mWhat:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 535
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "time="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 537
    .local v0, "c":Ljava/util/Calendar;
    iget-wide v4, p0, mTime:J

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 538
    const-string v3, "%tm-%td %tH:%tM:%tS.%tL"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const/4 v5, 0x3

    aput-object v0, v4, v5

    const/4 v5, 0x4

    aput-object v0, v4, v5

    const/4 v5, 0x5

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    const-string v3, " processed="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    iget-object v3, p0, mState:Lcom/android/internal/util/IState;

    if-nez v3, :cond_a2

    const-string v3, "<null>"

    :goto_3d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    const-string v3, " org="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    iget-object v3, p0, mOrgState:Lcom/android/internal/util/IState;

    if-nez v3, :cond_a9

    const-string v3, "<null>"

    :goto_4b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    const-string v3, " dest="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    iget-object v3, p0, mDstState:Lcom/android/internal/util/IState;

    if-nez v3, :cond_b0

    const-string v3, "<null>"

    :goto_59
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    const-string v3, " what="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    iget-object v3, p0, mSm:Lcom/android/internal/util/StateMachine;

    if-eqz v3, :cond_b7

    iget-object v3, p0, mSm:Lcom/android/internal/util/StateMachine;

    iget v4, p0, mWhat:I

    invoke-virtual {v3, v4}, Lcom/android/internal/util/StateMachine;->getWhatToString(I)Ljava/lang/String;

    move-result-object v2

    .line 547
    .local v2, "what":Ljava/lang/String;
    :goto_6d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ba

    .line 548
    iget v3, p0, mWhat:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 549
    const-string v3, "(0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    iget v3, p0, mWhat:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    :goto_8b
    iget-object v3, p0, mInfo:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9d

    .line 556
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    iget-object v3, p0, mInfo:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    :cond_9d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 540
    .end local v2    # "what":Ljava/lang/String;
    :cond_a2
    iget-object v3, p0, mState:Lcom/android/internal/util/IState;

    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_3d

    .line 542
    :cond_a9
    iget-object v3, p0, mOrgState:Lcom/android/internal/util/IState;

    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_4b

    .line 544
    :cond_b0
    iget-object v3, p0, mDstState:Lcom/android/internal/util/IState;

    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_59

    .line 546
    :cond_b7
    const-string v2, ""

    goto :goto_6d

    .line 553
    .restart local v2    # "what":Ljava/lang/String;
    :cond_ba
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8b
.end method

.method public update(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V
    .registers 9
    .param p1, "sm"    # Lcom/android/internal/util/StateMachine;
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "info"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/util/IState;
    .param p5, "orgState"    # Lcom/android/internal/util/IState;
    .param p6, "dstState"    # Lcom/android/internal/util/IState;

    .prologue
    .line 481
    iput-object p1, p0, mSm:Lcom/android/internal/util/StateMachine;

    .line 482
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, mTime:J

    .line 483
    if-eqz p2, :cond_17

    iget v0, p2, Landroid/os/Message;->what:I

    :goto_c
    iput v0, p0, mWhat:I

    .line 484
    iput-object p3, p0, mInfo:Ljava/lang/String;

    .line 485
    iput-object p4, p0, mState:Lcom/android/internal/util/IState;

    .line 486
    iput-object p5, p0, mOrgState:Lcom/android/internal/util/IState;

    .line 487
    iput-object p6, p0, mDstState:Lcom/android/internal/util/IState;

    .line 488
    return-void

    .line 483
    :cond_17
    const/4 v0, 0x0

    goto :goto_c
.end method
