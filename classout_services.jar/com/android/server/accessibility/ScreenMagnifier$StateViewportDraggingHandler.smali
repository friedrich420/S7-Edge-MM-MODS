.class final Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;
.super Ljava/lang/Object;
.source "ScreenMagnifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/ScreenMagnifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StateViewportDraggingHandler"
.end annotation


# instance fields
.field private mLastMoveOutsideMagnifiedRegion:Z

.field final synthetic this$0:Lcom/android/server/accessibility/ScreenMagnifier;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;)V
    .registers 2

    .prologue
    .line 649
    iput-object p1, p0, this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/ScreenMagnifier;Lcom/android/server/accessibility/ScreenMagnifier$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier;
    .param p2, "x1"    # Lcom/android/server/accessibility/ScreenMagnifier$1;

    .prologue
    .line 649
    invoke-direct {p0, p1}, <init>(Lcom/android/server/accessibility/ScreenMagnifier;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;Landroid/view/MotionEvent;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/accessibility/ScreenMagnifier$StateViewportDraggingHandler;
    .param p1, "x1"    # Landroid/view/MotionEvent;
    .param p2, "x2"    # I

    .prologue
    .line 649
    invoke-direct {p0, p1, p2}, onMotionEvent(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method private onMotionEvent(Landroid/view/MotionEvent;I)V
    .registers 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 653
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 654
    .local v0, "action":I
    packed-switch v0, :pswitch_data_80

    .line 692
    :goto_9
    :pswitch_9
    return-void

    .line 656
    :pswitch_a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unexpected event type: ACTION_DOWN"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 659
    :pswitch_12
    invoke-virtual {p0}, clear()V

    .line 660
    iget-object v3, p0, this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    const/4 v4, 0x4

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->transitionToState(I)V
    invoke-static {v3, v4}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1400(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    goto :goto_9

    .line 663
    :pswitch_1c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-eq v3, v6, :cond_2a

    .line 664
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Should have one pointer down."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 666
    :cond_2a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 667
    .local v1, "eventX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 668
    .local v2, "eventY":F
    iget-object v3, p0, this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnifiedBounds:Landroid/graphics/Region;
    invoke-static {v3}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1500(Lcom/android/server/accessibility/ScreenMagnifier;)Landroid/graphics/Region;

    move-result-object v3

    float-to-int v4, v1

    float-to-int v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 669
    iget-boolean v3, p0, mLastMoveOutsideMagnifiedRegion:Z

    if-eqz v3, :cond_50

    .line 670
    iput-boolean v7, p0, mLastMoveOutsideMagnifiedRegion:Z

    .line 671
    iget-object v3, p0, this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v3}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1000(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v6}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setMagnifiedRegionCenter(FFZ)V

    goto :goto_9

    .line 674
    :cond_50
    iget-object v3, p0, this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v3}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1000(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v7}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->setMagnifiedRegionCenter(FFZ)V

    goto :goto_9

    .line 678
    :cond_5a
    iput-boolean v6, p0, mLastMoveOutsideMagnifiedRegion:Z

    goto :goto_9

    .line 682
    .end local v1    # "eventX":F
    .end local v2    # "eventY":F
    :pswitch_5d
    iget-object v3, p0, this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mTranslationEnabledBeforePan:Z
    invoke-static {v3}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1600(Lcom/android/server/accessibility/ScreenMagnifier;)Z

    move-result v3

    if-nez v3, :cond_6e

    .line 683
    iget-object v3, p0, this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    # getter for: Lcom/android/server/accessibility/ScreenMagnifier;->mMagnificationController:Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;
    invoke-static {v3}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1000(Lcom/android/server/accessibility/ScreenMagnifier;)Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/server/accessibility/ScreenMagnifier$MagnificationController;->reset(Z)V

    .line 685
    :cond_6e
    invoke-virtual {p0}, clear()V

    .line 686
    iget-object v3, p0, this$0:Lcom/android/server/accessibility/ScreenMagnifier;

    const/4 v4, 0x2

    # invokes: Lcom/android/server/accessibility/ScreenMagnifier;->transitionToState(I)V
    invoke-static {v3, v4}, Lcom/android/server/accessibility/ScreenMagnifier;->access$1400(Lcom/android/server/accessibility/ScreenMagnifier;I)V

    goto :goto_9

    .line 689
    :pswitch_78
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unexpected event type: ACTION_POINTER_UP"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 654
    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_a
        :pswitch_5d
        :pswitch_1c
        :pswitch_9
        :pswitch_9
        :pswitch_12
        :pswitch_78
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 695
    const/4 v0, 0x0

    iput-boolean v0, p0, mLastMoveOutsideMagnifiedRegion:Z

    .line 696
    return-void
.end method
