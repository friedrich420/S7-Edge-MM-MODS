.class public final Landroid/view/InputEventConsistencyVerifier;
.super Ljava/lang/Object;
.source "InputEventConsistencyVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InputEventConsistencyVerifier$KeyState;
    }
.end annotation


# static fields
.field private static final EVENT_TYPE_GENERIC_MOTION:Ljava/lang/String; = "GenericMotionEvent"

.field private static final EVENT_TYPE_KEY:Ljava/lang/String; = "KeyEvent"

.field private static final EVENT_TYPE_TOUCH:Ljava/lang/String; = "TouchEvent"

.field private static final EVENT_TYPE_TRACKBALL:Ljava/lang/String; = "TrackballEvent"

.field public static final FLAG_RAW_DEVICE_INPUT:I = 0x1

.field private static final IS_ENG_BUILD:Z

.field private static final RECENT_EVENTS_TO_LOG:I = 0x5


# instance fields
.field private mButtonsPressed:I

.field private final mCaller:Ljava/lang/Object;

.field private mCurrentEvent:Landroid/view/InputEvent;

.field private mCurrentEventType:Ljava/lang/String;

.field private final mFlags:I

.field private mHoverEntered:Z

.field private mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

.field private mLastEventSeq:I

.field private mLastEventType:Ljava/lang/String;

.field private mLastNestingLevel:I

.field private final mLogTag:Ljava/lang/String;

.field private mMostRecentEventIndex:I

.field private mRecentEvents:[Landroid/view/InputEvent;

.field private mRecentEventsUnhandled:[Z

.field private mTouchEventStreamDeviceId:I

.field private mTouchEventStreamIsTainted:Z

.field private mTouchEventStreamPointers:I

.field private mTouchEventStreamSource:I

.field private mTouchEventStreamUnhandled:Z

.field private mTrackballDown:Z

.field private mTrackballUnhandled:Z

.field private mViolationMessage:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, IS_ENG_BUILD:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .registers 4
    .param p1, "caller"    # Ljava/lang/Object;
    .param p2, "flags"    # I

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Ljava/lang/Object;ILjava/lang/String;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILjava/lang/String;)V
    .registers 5
    .param p1, "caller"    # Ljava/lang/Object;
    .param p2, "flags"    # I
    .param p3, "logTag"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, -0x1

    iput v0, p0, mTouchEventStreamDeviceId:I

    .line 129
    iput-object p1, p0, mCaller:Ljava/lang/Object;

    .line 130
    iput p2, p0, mFlags:I

    .line 131
    if-eqz p3, :cond_f

    .end local p3    # "logTag":Ljava/lang/String;
    :goto_c
    iput-object p3, p0, mLogTag:Ljava/lang/String;

    .line 132
    return-void

    .line 131
    .restart local p3    # "logTag":Ljava/lang/String;
    :cond_f
    const-string p3, "InputEventConsistencyVerifier"

    goto :goto_c
.end method

.method private addKeyState(III)V
    .registers 6
    .param p1, "deviceId"    # I
    .param p2, "source"    # I
    .param p3, "keyCode"    # I

    .prologue
    .line 762
    invoke-static {p1, p2, p3}, Landroid/view/InputEventConsistencyVerifier$KeyState;->obtain(III)Landroid/view/InputEventConsistencyVerifier$KeyState;

    move-result-object v0

    .line 763
    .local v0, "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    iget-object v1, p0, mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iput-object v1, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 764
    iput-object v0, p0, mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 765
    return-void
.end method

.method private static appendEvent(Ljava/lang/StringBuilder;ILandroid/view/InputEvent;Z)V
    .registers 8
    .param p0, "message"    # Ljava/lang/StringBuilder;
    .param p1, "index"    # I
    .param p2, "event"    # Landroid/view/InputEvent;
    .param p3, "unhandled"    # Z

    .prologue
    .line 719
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": sent at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/InputEvent;->getEventTimeNano()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 720
    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    if-eqz p3, :cond_1d

    .line 722
    const-string v0, "(unhandled) "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    :cond_1d
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 725
    return-void
.end method

.method private ensureActionButtonIsNonZeroForThisAction(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 629
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    .line 630
    .local v0, "actionButton":I
    if-nez v0, :cond_24

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No action button set. Action button should always be non-zero for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, problem(Ljava/lang/String;)V

    .line 635
    :cond_24
    return-void
.end method

.method private ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 638
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 639
    .local v0, "historySize":I
    if-eqz v0, :cond_2e

    .line 640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "History size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but it should always be 0 for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, problem(Ljava/lang/String;)V

    .line 643
    :cond_2e
    return-void
.end method

.method private ensureMetaStateIsNormalized(I)V
    .registers 7
    .param p1, "metaState"    # I

    .prologue
    .line 613
    invoke-static {p1}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v0

    .line 614
    .local v0, "normalizedMetaState":I
    if-eq v0, p1, :cond_20

    .line 615
    const-string v1, "Metastate not normalized.  Was 0x%08x but expected 0x%08x."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, problem(Ljava/lang/String;)V

    .line 618
    :cond_20
    return-void
.end method

.method private ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V
    .registers 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 621
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 622
    .local v0, "pointerCount":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2f

    .line 623
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pointer count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but it should always be 1 for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, problem(Ljava/lang/String;)V

    .line 626
    :cond_2f
    return-void
.end method

.method private findKeyState(IIIZ)Landroid/view/InputEventConsistencyVerifier$KeyState;
    .registers 9
    .param p1, "deviceId"    # I
    .param p2, "source"    # I
    .param p3, "keyCode"    # I
    .param p4, "remove"    # Z

    .prologue
    const/4 v2, 0x0

    .line 740
    const/4 v0, 0x0

    .line 741
    .local v0, "last":Landroid/view/InputEventConsistencyVerifier$KeyState;
    iget-object v1, p0, mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 742
    .local v1, "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    :goto_4
    if-eqz v1, :cond_26

    .line 743
    iget v3, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->deviceId:I

    if-ne v3, p1, :cond_22

    iget v3, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->source:I

    if-ne v3, p2, :cond_22

    iget v3, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->keyCode:I

    if-ne v3, p3, :cond_22

    .line 745
    if-eqz p4, :cond_1c

    .line 746
    if-eqz v0, :cond_1d

    .line 747
    iget-object v3, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iput-object v3, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 751
    :goto_1a
    iput-object v2, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 758
    .end local v1    # "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    :cond_1c
    :goto_1c
    return-object v1

    .line 749
    .restart local v1    # "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    :cond_1d
    iget-object v3, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iput-object v3, p0, mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    goto :goto_1a

    .line 755
    :cond_22
    move-object v0, v1

    .line 756
    iget-object v1, v1, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    goto :goto_4

    :cond_26
    move-object v1, v2

    .line 758
    goto :goto_1c
.end method

.method private finishEvent()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 669
    iget-object v3, p0, mViolationMessage:Ljava/lang/StringBuilder;

    if-eqz v3, :cond_63

    iget-object v3, p0, mViolationMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_63

    .line 670
    iget-object v3, p0, mCurrentEvent:Landroid/view/InputEvent;

    invoke-virtual {v3}, Landroid/view/InputEvent;->isTainted()Z

    move-result v3

    if-nez v3, :cond_5e

    .line 672
    iget-object v3, p0, mViolationMessage:Ljava/lang/StringBuilder;

    const-string v4, "\n  in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mCaller:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 673
    iget-object v3, p0, mViolationMessage:Ljava/lang/StringBuilder;

    const-string v4, "\n  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    iget-object v3, p0, mViolationMessage:Ljava/lang/StringBuilder;

    iget-object v4, p0, mCurrentEvent:Landroid/view/InputEvent;

    invoke-static {v3, v6, v4, v6}, appendEvent(Ljava/lang/StringBuilder;ILandroid/view/InputEvent;Z)V

    .line 676
    iget-object v3, p0, mRecentEvents:[Landroid/view/InputEvent;

    if-eqz v3, :cond_4d

    .line 677
    iget-object v3, p0, mViolationMessage:Ljava/lang/StringBuilder;

    const-string v4, "\n  -- recent events --"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3e
    if-ge v1, v7, :cond_4d

    .line 679
    iget v3, p0, mMostRecentEventIndex:I

    add-int/lit8 v3, v3, 0x5

    sub-int/2addr v3, v1

    rem-int/lit8 v2, v3, 0x5

    .line 681
    .local v2, "index":I
    iget-object v3, p0, mRecentEvents:[Landroid/view/InputEvent;

    aget-object v0, v3, v2

    .line 682
    .local v0, "event":Landroid/view/InputEvent;
    if-nez v0, :cond_97

    .line 690
    .end local v0    # "event":Landroid/view/InputEvent;
    .end local v1    # "i":I
    .end local v2    # "index":I
    :cond_4d
    iget-object v3, p0, mLogTag:Ljava/lang/String;

    iget-object v4, p0, mViolationMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v3, p0, mCurrentEvent:Landroid/view/InputEvent;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/InputEvent;->setTainted(Z)V

    .line 696
    :cond_5e
    iget-object v3, p0, mViolationMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 700
    :cond_63
    iget-object v3, p0, mRecentEvents:[Landroid/view/InputEvent;

    if-nez v3, :cond_6f

    .line 701
    new-array v3, v7, [Landroid/view/InputEvent;

    iput-object v3, p0, mRecentEvents:[Landroid/view/InputEvent;

    .line 702
    new-array v3, v7, [Z

    iput-object v3, p0, mRecentEventsUnhandled:[Z

    .line 704
    :cond_6f
    iget v3, p0, mMostRecentEventIndex:I

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v2, v3, 0x5

    .line 705
    .restart local v2    # "index":I
    iput v2, p0, mMostRecentEventIndex:I

    .line 706
    iget-object v3, p0, mRecentEvents:[Landroid/view/InputEvent;

    aget-object v3, v3, v2

    if-eqz v3, :cond_84

    .line 707
    iget-object v3, p0, mRecentEvents:[Landroid/view/InputEvent;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/view/InputEvent;->recycle()V

    .line 709
    :cond_84
    iget-object v3, p0, mRecentEvents:[Landroid/view/InputEvent;

    iget-object v4, p0, mCurrentEvent:Landroid/view/InputEvent;

    invoke-virtual {v4}, Landroid/view/InputEvent;->copy()Landroid/view/InputEvent;

    move-result-object v4

    aput-object v4, v3, v2

    .line 710
    iget-object v3, p0, mRecentEventsUnhandled:[Z

    aput-boolean v6, v3, v2

    .line 713
    iput-object v8, p0, mCurrentEvent:Landroid/view/InputEvent;

    .line 714
    iput-object v8, p0, mCurrentEventType:Ljava/lang/String;

    .line 715
    return-void

    .line 685
    .restart local v0    # "event":Landroid/view/InputEvent;
    .restart local v1    # "i":I
    :cond_97
    iget-object v3, p0, mViolationMessage:Ljava/lang/StringBuilder;

    const-string v4, "\n  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    iget-object v3, p0, mViolationMessage:Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, mRecentEventsUnhandled:[Z

    aget-boolean v5, v5, v2

    invoke-static {v3, v4, v0, v5}, appendEvent(Ljava/lang/StringBuilder;ILandroid/view/InputEvent;Z)V

    .line 678
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e
.end method

.method public static isInstrumentationEnabled()Z
    .registers 1

    .prologue
    .line 139
    sget-boolean v0, IS_ENG_BUILD:Z

    return v0
.end method

.method private problem(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 728
    iget-object v0, p0, mViolationMessage:Ljava/lang/StringBuilder;

    if-nez v0, :cond_b

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, mViolationMessage:Ljava/lang/StringBuilder;

    .line 731
    :cond_b
    iget-object v0, p0, mViolationMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_26

    .line 732
    iget-object v0, p0, mViolationMessage:Ljava/lang/StringBuilder;

    iget-object v1, p0, mCurrentEventType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    :goto_20
    iget-object v0, p0, mViolationMessage:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    return-void

    .line 734
    :cond_26
    iget-object v0, p0, mViolationMessage:Ljava/lang/StringBuilder;

    const-string v1, "\n  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20
.end method

.method private startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "nestingLevel"    # I
    .param p3, "eventType"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 647
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v0

    .line 648
    .local v0, "seq":I
    iget v2, p0, mLastEventSeq:I

    if-ne v0, v2, :cond_12

    iget v2, p0, mLastNestingLevel:I

    if-ge p2, v2, :cond_12

    iget-object v2, p0, mLastEventType:Ljava/lang/String;

    if-ne p3, v2, :cond_12

    .line 665
    :goto_11
    return v1

    .line 653
    :cond_12
    if-lez p2, :cond_20

    .line 654
    iput v0, p0, mLastEventSeq:I

    .line 655
    iput-object p3, p0, mLastEventType:Ljava/lang/String;

    .line 656
    iput p2, p0, mLastNestingLevel:I

    .line 663
    :goto_1a
    iput-object p1, p0, mCurrentEvent:Landroid/view/InputEvent;

    .line 664
    iput-object p3, p0, mCurrentEventType:Ljava/lang/String;

    .line 665
    const/4 v1, 0x1

    goto :goto_11

    .line 658
    :cond_20
    const/4 v2, -0x1

    iput v2, p0, mLastEventSeq:I

    .line 659
    const/4 v2, 0x0

    iput-object v2, p0, mLastEventType:Ljava/lang/String;

    .line 660
    iput v1, p0, mLastNestingLevel:I

    goto :goto_1a
.end method


# virtual methods
.method public onGenericMotionEvent(Landroid/view/MotionEvent;I)V
    .registers 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "nestingLevel"    # I

    .prologue
    const/16 v7, 0x40

    const/16 v6, 0x20

    .line 464
    const-string v4, "GenericMotionEvent"

    invoke-direct {p0, p1, p2, v4}, startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 568
    :goto_c
    return-void

    .line 469
    :cond_d
    :try_start_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    invoke-direct {p0, v4}, ensureMetaStateIsNormalized(I)V

    .line 471
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 472
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v3

    .line 473
    .local v3, "source":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    .line 474
    .local v2, "buttonState":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v1

    .line 475
    .local v1, "actionButton":I
    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_131

    .line 476
    packed-switch v0, :pswitch_data_144

    .line 552
    const-string v4, "Invalid action for generic pointer event."

    invoke-direct {p0, v4}, problem(Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_d .. :try_end_30} :catchall_3b

    .line 566
    :cond_30
    :goto_30
    invoke-direct {p0}, finishEvent()V

    goto :goto_c

    .line 478
    :pswitch_34
    :try_start_34
    invoke-direct {p0, p1}, ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 479
    const/4 v4, 0x1

    iput-boolean v4, p0, mHoverEntered:Z
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_3b

    goto :goto_30

    .line 566
    .end local v0    # "action":I
    .end local v1    # "actionButton":I
    .end local v2    # "buttonState":I
    .end local v3    # "source":I
    :catchall_3b
    move-exception v4

    invoke-direct {p0}, finishEvent()V

    throw v4

    .line 482
    .restart local v0    # "action":I
    .restart local v1    # "actionButton":I
    .restart local v2    # "buttonState":I
    .restart local v3    # "source":I
    :pswitch_40
    :try_start_40
    invoke-direct {p0, p1}, ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    goto :goto_30

    .line 485
    :pswitch_44
    invoke-direct {p0, p1}, ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 486
    iget-boolean v4, p0, mHoverEntered:Z

    if-nez v4, :cond_50

    .line 487
    const-string v4, "ACTION_HOVER_EXIT without prior ACTION_HOVER_ENTER"

    invoke-direct {p0, v4}, problem(Ljava/lang/String;)V

    .line 489
    :cond_50
    const/4 v4, 0x0

    iput-boolean v4, p0, mHoverEntered:Z

    goto :goto_30

    .line 492
    :pswitch_54
    invoke-direct {p0, p1}, ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 493
    invoke-direct {p0, p1}, ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    goto :goto_30

    .line 496
    :pswitch_5b
    invoke-direct {p0, p1}, ensureActionButtonIsNonZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 497
    iget v4, p0, mButtonsPressed:I

    and-int/2addr v4, v1

    if-eqz v4, :cond_85

    .line 498
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Action button for ACTION_BUTTON_PRESS event is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", but it has already been pressed and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "has yet to be released."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, problem(Ljava/lang/String;)V

    .line 503
    :cond_85
    iget v4, p0, mButtonsPressed:I

    or-int/2addr v4, v1

    iput v4, p0, mButtonsPressed:I

    .line 508
    if-ne v1, v6, :cond_b8

    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_b8

    .line 510
    iget v4, p0, mButtonsPressed:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, mButtonsPressed:I

    .line 516
    :cond_96
    :goto_96
    iget v4, p0, mButtonsPressed:I

    if-eq v4, v2, :cond_30

    .line 517
    const-string v4, "Reported button state differs from expected button state based on press and release events. Is 0x%08x but expected 0x%08x."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, mButtonsPressed:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, problem(Ljava/lang/String;)V

    goto/16 :goto_30

    .line 511
    :cond_b8
    if-ne v1, v7, :cond_96

    and-int/lit8 v4, v2, 0x4

    if-eqz v4, :cond_96

    .line 513
    iget v4, p0, mButtonsPressed:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, mButtonsPressed:I

    goto :goto_96

    .line 524
    :pswitch_c5
    invoke-direct {p0, p1}, ensureActionButtonIsNonZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 525
    iget v4, p0, mButtonsPressed:I

    and-int/2addr v4, v1

    if-eq v4, v1, :cond_ef

    .line 526
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Action button for ACTION_BUTTON_RELEASE event is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", but it was either never pressed or has "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "already been released."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, problem(Ljava/lang/String;)V

    .line 531
    :cond_ef
    iget v4, p0, mButtonsPressed:I

    xor-int/lit8 v5, v1, -0x1

    and-int/2addr v4, v5

    iput v4, p0, mButtonsPressed:I

    .line 536
    if-ne v1, v6, :cond_124

    and-int/lit8 v4, v2, 0x2

    if-nez v4, :cond_124

    .line 538
    iget v4, p0, mButtonsPressed:I

    and-int/lit8 v4, v4, -0x3

    iput v4, p0, mButtonsPressed:I

    .line 544
    :cond_102
    :goto_102
    iget v4, p0, mButtonsPressed:I

    if-eq v4, v2, :cond_30

    .line 545
    const-string v4, "Reported button state differs from expected button state based on press and release events. Is 0x%08x but expected 0x%08x."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, p0, mButtonsPressed:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, problem(Ljava/lang/String;)V

    goto/16 :goto_30

    .line 539
    :cond_124
    if-ne v1, v7, :cond_102

    and-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_102

    .line 541
    iget v4, p0, mButtonsPressed:I

    and-int/lit8 v4, v4, -0x5

    iput v4, p0, mButtonsPressed:I

    goto :goto_102

    .line 555
    :cond_131
    and-int/lit8 v4, v3, 0x10

    if-eqz v4, :cond_30

    .line 556
    packed-switch v0, :pswitch_data_154

    .line 561
    const-string v4, "Invalid action for generic joystick event."

    invoke-direct {p0, v4}, problem(Ljava/lang/String;)V

    goto/16 :goto_30

    .line 558
    :pswitch_13f
    invoke-direct {p0, p1}, ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V
    :try_end_142
    .catchall {:try_start_40 .. :try_end_142} :catchall_3b

    goto/16 :goto_30

    .line 476
    :pswitch_data_144
    .packed-switch 0x7
        :pswitch_40
        :pswitch_54
        :pswitch_34
        :pswitch_44
        :pswitch_5b
        :pswitch_c5
    .end packed-switch

    .line 556
    :pswitch_data_154
    .packed-switch 0x2
        :pswitch_13f
    .end packed-switch
.end method

.method public onInputEvent(Landroid/view/InputEvent;I)V
    .registers 6
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "nestingLevel"    # I

    .prologue
    .line 173
    instance-of v2, p1, Landroid/view/KeyEvent;

    if-eqz v2, :cond_b

    move-object v0, p1

    .line 174
    check-cast v0, Landroid/view/KeyEvent;

    .line 175
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {p0, v0, p2}, onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 186
    .end local v0    # "keyEvent":Landroid/view/KeyEvent;
    :goto_a
    return-void

    :cond_b
    move-object v1, p1

    .line 177
    check-cast v1, Landroid/view/MotionEvent;

    .line 178
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 179
    invoke-virtual {p0, v1, p2}, onTouchEvent(Landroid/view/MotionEvent;I)V

    goto :goto_a

    .line 180
    :cond_18
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_24

    .line 181
    invoke-virtual {p0, v1, p2}, onTrackballEvent(Landroid/view/MotionEvent;I)V

    goto :goto_a

    .line 183
    :cond_24
    invoke-virtual {p0, v1, p2}, onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    goto :goto_a
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .registers 10
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "nestingLevel"    # I

    .prologue
    .line 198
    const-string v5, "KeyEvent"

    invoke-direct {p0, p1, p2, v5}, startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 248
    :goto_8
    return-void

    .line 203
    :cond_9
    :try_start_9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    invoke-direct {p0, v5}, ensureMetaStateIsNormalized(I)V

    .line 205
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 206
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v1

    .line 207
    .local v1, "deviceId":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getSource()I

    move-result v3

    .line 208
    .local v3, "source":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 209
    .local v2, "keyCode":I
    packed-switch v0, :pswitch_data_82

    .line 241
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid action "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/view/KeyEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for key event."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, problem(Ljava/lang/String;)V
    :try_end_43
    .catchall {:try_start_9 .. :try_end_43} :catchall_56

    .line 246
    :cond_43
    :goto_43
    :pswitch_43
    invoke-direct {p0}, finishEvent()V

    goto :goto_8

    .line 211
    :pswitch_47
    const/4 v5, 0x0

    :try_start_48
    invoke-direct {p0, v1, v3, v2, v5}, findKeyState(IIIZ)Landroid/view/InputEventConsistencyVerifier$KeyState;

    move-result-object v4

    .line 212
    .local v4, "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    if-eqz v4, :cond_6d

    .line 217
    iget-boolean v5, v4, Landroid/view/InputEventConsistencyVerifier$KeyState;->unhandled:Z

    if-eqz v5, :cond_5b

    .line 218
    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/view/InputEventConsistencyVerifier$KeyState;->unhandled:Z
    :try_end_55
    .catchall {:try_start_48 .. :try_end_55} :catchall_56

    goto :goto_43

    .line 246
    .end local v0    # "action":I
    .end local v1    # "deviceId":I
    .end local v2    # "keyCode":I
    .end local v3    # "source":I
    .end local v4    # "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    :catchall_56
    move-exception v5

    invoke-direct {p0}, finishEvent()V

    throw v5

    .line 219
    .restart local v0    # "action":I
    .restart local v1    # "deviceId":I
    .restart local v2    # "keyCode":I
    .restart local v3    # "source":I
    .restart local v4    # "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    :cond_5b
    :try_start_5b
    iget v5, p0, mFlags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_43

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_43

    .line 221
    const-string v5, "ACTION_DOWN but key is already down and this event is not a key repeat."

    invoke-direct {p0, v5}, problem(Ljava/lang/String;)V

    goto :goto_43

    .line 225
    :cond_6d
    invoke-direct {p0, v1, v3, v2}, addKeyState(III)V

    goto :goto_43

    .line 230
    .end local v4    # "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    :pswitch_71
    const/4 v5, 0x1

    invoke-direct {p0, v1, v3, v2, v5}, findKeyState(IIIZ)Landroid/view/InputEventConsistencyVerifier$KeyState;

    move-result-object v4

    .line 231
    .restart local v4    # "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    if-nez v4, :cond_7e

    .line 232
    const-string v5, "ACTION_UP but key was not down."

    invoke-direct {p0, v5}, problem(Ljava/lang/String;)V

    goto :goto_43

    .line 234
    :cond_7e
    invoke-virtual {v4}, Landroid/view/InputEventConsistencyVerifier$KeyState;->recycle()V
    :try_end_81
    .catchall {:try_start_5b .. :try_end_81} :catchall_56

    goto :goto_43

    .line 209
    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_47
        :pswitch_71
        :pswitch_43
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;I)V
    .registers 16
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "nestingLevel"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 323
    const-string v12, "TouchEvent"

    invoke-direct {p0, p1, p2, v12}, startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 452
    :goto_a
    return-void

    .line 327
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 328
    .local v0, "action":I
    if-eqz v0, :cond_17

    const/4 v12, 0x3

    if-eq v0, v12, :cond_17

    const/4 v12, 0x4

    if-ne v0, v12, :cond_e8

    :cond_17
    move v7, v11

    .line 330
    .local v7, "newStream":Z
    :goto_18
    if-eqz v7, :cond_28

    iget-boolean v12, p0, mTouchEventStreamIsTainted:Z

    if-nez v12, :cond_22

    iget-boolean v12, p0, mTouchEventStreamUnhandled:Z

    if-eqz v12, :cond_28

    .line 331
    :cond_22
    iput-boolean v10, p0, mTouchEventStreamIsTainted:Z

    .line 332
    iput-boolean v10, p0, mTouchEventStreamUnhandled:Z

    .line 333
    iput v10, p0, mTouchEventStreamPointers:I

    .line 335
    :cond_28
    iget-boolean v10, p0, mTouchEventStreamIsTainted:Z

    if-eqz v10, :cond_2f

    .line 336
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->setTainted(Z)V

    .line 340
    :cond_2f
    :try_start_2f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    invoke-direct {p0, v10}, ensureMetaStateIsNormalized(I)V

    .line 342
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v3

    .line 343
    .local v3, "deviceId":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v9

    .line 345
    .local v9, "source":I
    if-nez v7, :cond_8d

    iget v10, p0, mTouchEventStreamDeviceId:I

    const/4 v12, -0x1

    if-eq v10, v12, :cond_8d

    iget v10, p0, mTouchEventStreamDeviceId:I

    if-ne v10, v3, :cond_4d

    iget v10, p0, mTouchEventStreamSource:I

    if-eq v10, v9, :cond_8d

    .line 348
    :cond_4d
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Touch event stream contains events from multiple sources: previous device id "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v12, p0, mTouchEventStreamDeviceId:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ", previous source "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v12, p0, mTouchEventStreamSource:I

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ", new device id "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ", new source "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, problem(Ljava/lang/String;)V

    .line 354
    :cond_8d
    iput v3, p0, mTouchEventStreamDeviceId:I

    .line 355
    iput v9, p0, mTouchEventStreamSource:I

    .line 357
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    .line 358
    .local v8, "pointerCount":I
    and-int/lit8 v10, v9, 0x2

    if-eqz v10, :cond_21f

    .line 359
    packed-switch v0, :pswitch_data_226

    .line 399
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 400
    .local v2, "actionMasked":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 401
    .local v1, "actionIndex":I
    const/4 v10, 0x5

    if-ne v2, v10, :cond_195

    .line 402
    iget v10, p0, mTouchEventStreamPointers:I

    if-nez v10, :cond_b3

    .line 403
    const-string v10, "ACTION_POINTER_DOWN but no other pointers were down."

    invoke-direct {p0, v10}, problem(Ljava/lang/String;)V

    .line 404
    const/4 v10, 0x1

    iput-boolean v10, p0, mTouchEventStreamIsTainted:Z

    .line 406
    :cond_b3
    if-ltz v1, :cond_b7

    if-lt v1, v8, :cond_162

    .line 407
    :cond_b7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ACTION_POINTER_DOWN index is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " but the pointer count is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, problem(Ljava/lang/String;)V

    .line 409
    const/4 v10, 0x1

    iput-boolean v10, p0, mTouchEventStreamIsTainted:Z

    .line 421
    :goto_e0
    invoke-direct {p0, p1}, ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V
    :try_end_e3
    .catchall {:try_start_2f .. :try_end_e3} :catchall_104

    .line 450
    .end local v1    # "actionIndex":I
    .end local v2    # "actionMasked":I
    :cond_e3
    :goto_e3
    invoke-direct {p0}, finishEvent()V

    goto/16 :goto_a

    .end local v3    # "deviceId":I
    .end local v7    # "newStream":Z
    .end local v8    # "pointerCount":I
    .end local v9    # "source":I
    :cond_e8
    move v7, v10

    .line 328
    goto/16 :goto_18

    .line 361
    .restart local v3    # "deviceId":I
    .restart local v7    # "newStream":Z
    .restart local v8    # "pointerCount":I
    .restart local v9    # "source":I
    :pswitch_eb
    :try_start_eb
    iget v10, p0, mTouchEventStreamPointers:I

    if-eqz v10, :cond_f4

    .line 362
    const-string v10, "ACTION_DOWN but pointers are already down.  Probably missing ACTION_UP from previous gesture."

    invoke-direct {p0, v10}, problem(Ljava/lang/String;)V

    .line 365
    :cond_f4
    invoke-direct {p0, p1}, ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 366
    invoke-direct {p0, p1}, ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 367
    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    shl-int v10, v11, v10

    iput v10, p0, mTouchEventStreamPointers:I
    :try_end_103
    .catchall {:try_start_eb .. :try_end_103} :catchall_104

    goto :goto_e3

    .line 450
    .end local v3    # "deviceId":I
    .end local v8    # "pointerCount":I
    .end local v9    # "source":I
    :catchall_104
    move-exception v10

    invoke-direct {p0}, finishEvent()V

    throw v10

    .line 370
    .restart local v3    # "deviceId":I
    .restart local v8    # "pointerCount":I
    .restart local v9    # "source":I
    :pswitch_109
    :try_start_109
    invoke-direct {p0, p1}, ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 371
    invoke-direct {p0, p1}, ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 372
    const/4 v10, 0x0

    iput v10, p0, mTouchEventStreamPointers:I

    .line 373
    const/4 v10, 0x0

    iput-boolean v10, p0, mTouchEventStreamIsTainted:Z

    goto :goto_e3

    .line 376
    :pswitch_116
    iget v10, p0, mTouchEventStreamPointers:I

    invoke-static {v10}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    .line 378
    .local v4, "expectedPointerCount":I
    if-eq v8, v4, :cond_e3

    .line 379
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ACTION_MOVE contained "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " pointers but there are currently "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " pointers down."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, problem(Ljava/lang/String;)V

    .line 382
    const/4 v10, 0x1

    iput-boolean v10, p0, mTouchEventStreamIsTainted:Z

    goto :goto_e3

    .line 387
    .end local v4    # "expectedPointerCount":I
    :pswitch_148
    const/4 v10, 0x0

    iput v10, p0, mTouchEventStreamPointers:I

    .line 388
    const/4 v10, 0x0

    iput-boolean v10, p0, mTouchEventStreamIsTainted:Z

    goto :goto_e3

    .line 391
    :pswitch_14f
    iget v10, p0, mTouchEventStreamPointers:I

    if-eqz v10, :cond_158

    .line 392
    const-string v10, "ACTION_OUTSIDE but pointers are still down."

    invoke-direct {p0, v10}, problem(Ljava/lang/String;)V

    .line 394
    :cond_158
    invoke-direct {p0, p1}, ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 395
    invoke-direct {p0, p1}, ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    .line 396
    const/4 v10, 0x0

    iput-boolean v10, p0, mTouchEventStreamIsTainted:Z

    goto :goto_e3

    .line 411
    .restart local v1    # "actionIndex":I
    .restart local v2    # "actionMasked":I
    :cond_162
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 412
    .local v5, "id":I
    shl-int v6, v11, v5

    .line 413
    .local v6, "idBit":I
    iget v10, p0, mTouchEventStreamPointers:I

    and-int/2addr v10, v6

    if-eqz v10, :cond_18e

    .line 414
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ACTION_POINTER_DOWN specified pointer id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " which is already down."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, problem(Ljava/lang/String;)V

    .line 416
    const/4 v10, 0x1

    iput-boolean v10, p0, mTouchEventStreamIsTainted:Z

    goto/16 :goto_e0

    .line 418
    :cond_18e
    iget v10, p0, mTouchEventStreamPointers:I

    or-int/2addr v10, v6

    iput v10, p0, mTouchEventStreamPointers:I

    goto/16 :goto_e0

    .line 422
    .end local v5    # "id":I
    .end local v6    # "idBit":I
    :cond_195
    const/4 v10, 0x6

    if-ne v2, v10, :cond_1fd

    .line 423
    if-ltz v1, :cond_19c

    if-lt v1, v8, :cond_1ca

    .line 424
    :cond_19c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ACTION_POINTER_UP index is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " but the pointer count is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, problem(Ljava/lang/String;)V

    .line 426
    const/4 v10, 0x1

    iput-boolean v10, p0, mTouchEventStreamIsTainted:Z

    .line 438
    :goto_1c5
    invoke-direct {p0, p1}, ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    goto/16 :goto_e3

    .line 428
    :cond_1ca
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 429
    .restart local v5    # "id":I
    shl-int v6, v11, v5

    .line 430
    .restart local v6    # "idBit":I
    iget v10, p0, mTouchEventStreamPointers:I

    and-int/2addr v10, v6

    if-nez v10, :cond_1f5

    .line 431
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ACTION_POINTER_UP specified pointer id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " which is not currently down."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, problem(Ljava/lang/String;)V

    .line 433
    const/4 v10, 0x1

    iput-boolean v10, p0, mTouchEventStreamIsTainted:Z

    goto :goto_1c5

    .line 435
    :cond_1f5
    iget v10, p0, mTouchEventStreamPointers:I

    xor-int/lit8 v11, v6, -0x1

    and-int/2addr v10, v11

    iput v10, p0, mTouchEventStreamPointers:I

    goto :goto_1c5

    .line 440
    .end local v5    # "id":I
    .end local v6    # "idBit":I
    :cond_1fd
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid action "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for touch event."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, problem(Ljava/lang/String;)V

    goto/16 :goto_e3

    .line 447
    .end local v1    # "actionIndex":I
    .end local v2    # "actionMasked":I
    :cond_21f
    const-string v10, "Source was not SOURCE_CLASS_POINTER."

    invoke-direct {p0, v10}, problem(Ljava/lang/String;)V
    :try_end_224
    .catchall {:try_start_109 .. :try_end_224} :catchall_104

    goto/16 :goto_e3

    .line 359
    :pswitch_data_226
    .packed-switch 0x0
        :pswitch_eb
        :pswitch_109
        :pswitch_116
        :pswitch_148
        :pswitch_14f
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;I)V
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "nestingLevel"    # I

    .prologue
    const/4 v4, 0x0

    .line 260
    const-string v2, "TrackballEvent"

    invoke-direct {p0, p1, p2, v2}, startEvent(Landroid/view/InputEvent;ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 311
    :goto_9
    return-void

    .line 265
    :cond_a
    :try_start_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    invoke-direct {p0, v2}, ensureMetaStateIsNormalized(I)V

    .line 267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 268
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    .line 269
    .local v1, "source":I
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_a2

    .line 270
    packed-switch v0, :pswitch_data_a8

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for trackball event."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, problem(Ljava/lang/String;)V

    .line 300
    :goto_40
    iget-boolean v2, p0, mTrackballDown:Z

    if-eqz v2, :cond_90

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v2

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_90

    .line 301
    const-string v2, "Trackball is down but pressure is not greater than 0."

    invoke-direct {p0, v2}, problem(Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_a .. :try_end_51} :catchall_69

    .line 309
    :cond_51
    :goto_51
    invoke-direct {p0}, finishEvent()V

    goto :goto_9

    .line 272
    :pswitch_55
    :try_start_55
    iget-boolean v2, p0, mTrackballDown:Z

    if-eqz v2, :cond_6e

    iget-boolean v2, p0, mTrackballUnhandled:Z

    if-nez v2, :cond_6e

    .line 273
    const-string v2, "ACTION_DOWN but trackball is already down."

    invoke-direct {p0, v2}, problem(Ljava/lang/String;)V

    .line 278
    :goto_62
    invoke-direct {p0, p1}, ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 279
    invoke-direct {p0, p1}, ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V
    :try_end_68
    .catchall {:try_start_55 .. :try_end_68} :catchall_69

    goto :goto_40

    .line 309
    .end local v0    # "action":I
    .end local v1    # "source":I
    :catchall_69
    move-exception v2

    invoke-direct {p0}, finishEvent()V

    throw v2

    .line 275
    .restart local v0    # "action":I
    .restart local v1    # "source":I
    :cond_6e
    const/4 v2, 0x1

    :try_start_6f
    iput-boolean v2, p0, mTrackballDown:Z

    .line 276
    const/4 v2, 0x0

    iput-boolean v2, p0, mTrackballUnhandled:Z

    goto :goto_62

    .line 282
    :pswitch_75
    iget-boolean v2, p0, mTrackballDown:Z

    if-nez v2, :cond_85

    .line 283
    const-string v2, "ACTION_UP but trackball is not down."

    invoke-direct {p0, v2}, problem(Ljava/lang/String;)V

    .line 288
    :goto_7e
    invoke-direct {p0, p1}, ensureHistorySizeIsZeroForThisAction(Landroid/view/MotionEvent;)V

    .line 289
    invoke-direct {p0, p1}, ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    goto :goto_40

    .line 285
    :cond_85
    const/4 v2, 0x0

    iput-boolean v2, p0, mTrackballDown:Z

    .line 286
    const/4 v2, 0x0

    iput-boolean v2, p0, mTrackballUnhandled:Z

    goto :goto_7e

    .line 292
    :pswitch_8c
    invoke-direct {p0, p1}, ensurePointerCountIsOneForThisAction(Landroid/view/MotionEvent;)V

    goto :goto_40

    .line 302
    :cond_90
    iget-boolean v2, p0, mTrackballDown:Z

    if-nez v2, :cond_51

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v2

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_51

    .line 303
    const-string v2, "Trackball is up but pressure is not equal to 0."

    invoke-direct {p0, v2}, problem(Ljava/lang/String;)V

    goto :goto_51

    .line 306
    :cond_a2
    const-string v2, "Source was not SOURCE_CLASS_TRACKBALL."

    invoke-direct {p0, v2}, problem(Ljava/lang/String;)V
    :try_end_a7
    .catchall {:try_start_6f .. :try_end_a7} :catchall_69

    goto :goto_51

    .line 270
    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_55
        :pswitch_75
        :pswitch_8c
    .end packed-switch
.end method

.method public onUnhandledEvent(Landroid/view/InputEvent;I)V
    .registers 12
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "nestingLevel"    # I

    .prologue
    const/4 v8, 0x1

    .line 583
    iget v6, p0, mLastNestingLevel:I

    if-eq p2, v6, :cond_6

    .line 610
    :cond_5
    :goto_5
    return-void

    .line 587
    :cond_6
    iget-object v6, p0, mRecentEventsUnhandled:[Z

    if-eqz v6, :cond_10

    .line 588
    iget-object v6, p0, mRecentEventsUnhandled:[Z

    iget v7, p0, mMostRecentEventIndex:I

    aput-boolean v8, v6, v7

    .line 591
    :cond_10
    instance-of v6, p1, Landroid/view/KeyEvent;

    if-eqz v6, :cond_2d

    move-object v2, p1

    .line 592
    check-cast v2, Landroid/view/KeyEvent;

    .line 593
    .local v2, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    .line 594
    .local v0, "deviceId":I
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getSource()I

    move-result v4

    .line 595
    .local v4, "source":I
    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 596
    .local v1, "keyCode":I
    const/4 v6, 0x0

    invoke-direct {p0, v0, v4, v1, v6}, findKeyState(IIIZ)Landroid/view/InputEventConsistencyVerifier$KeyState;

    move-result-object v5

    .line 597
    .local v5, "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    if-eqz v5, :cond_5

    .line 598
    iput-boolean v8, v5, Landroid/view/InputEventConsistencyVerifier$KeyState;->unhandled:Z

    goto :goto_5

    .end local v0    # "deviceId":I
    .end local v1    # "keyCode":I
    .end local v2    # "keyEvent":Landroid/view/KeyEvent;
    .end local v4    # "source":I
    .end local v5    # "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    :cond_2d
    move-object v3, p1

    .line 601
    check-cast v3, Landroid/view/MotionEvent;

    .line 602
    .local v3, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v3}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v6

    if-eqz v6, :cond_39

    .line 603
    iput-boolean v8, p0, mTouchEventStreamUnhandled:Z

    goto :goto_5

    .line 604
    :cond_39
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getSource()I

    move-result v6

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_5

    .line 605
    iget-boolean v6, p0, mTrackballDown:Z

    if-eqz v6, :cond_5

    .line 606
    iput-boolean v8, p0, mTrackballUnhandled:Z

    goto :goto_5
.end method

.method public reset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 146
    const/4 v1, -0x1

    iput v1, p0, mLastEventSeq:I

    .line 147
    iput v2, p0, mLastNestingLevel:I

    .line 148
    iput-boolean v2, p0, mTrackballDown:Z

    .line 149
    iput-boolean v2, p0, mTrackballUnhandled:Z

    .line 150
    iput v2, p0, mTouchEventStreamPointers:I

    .line 151
    iput-boolean v2, p0, mTouchEventStreamIsTainted:Z

    .line 152
    iput-boolean v2, p0, mTouchEventStreamUnhandled:Z

    .line 153
    iput-boolean v2, p0, mHoverEntered:Z

    .line 154
    iput v2, p0, mButtonsPressed:I

    .line 156
    :goto_14
    iget-object v1, p0, mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    if-eqz v1, :cond_22

    .line 157
    iget-object v0, p0, mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 158
    .local v0, "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    iget-object v1, v0, Landroid/view/InputEventConsistencyVerifier$KeyState;->next:Landroid/view/InputEventConsistencyVerifier$KeyState;

    iput-object v1, p0, mKeyStateList:Landroid/view/InputEventConsistencyVerifier$KeyState;

    .line 159
    invoke-virtual {v0}, Landroid/view/InputEventConsistencyVerifier$KeyState;->recycle()V

    goto :goto_14

    .line 161
    .end local v0    # "state":Landroid/view/InputEventConsistencyVerifier$KeyState;
    :cond_22
    return-void
.end method
