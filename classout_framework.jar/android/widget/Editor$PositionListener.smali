.class Landroid/widget/Editor$PositionListener;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionListener"
.end annotation


# instance fields
.field private final MAXIMUM_NUMBER_OF_LISTENERS:I

.field private mCanMove:[Z

.field protected mDelayHandler:Landroid/os/Handler;

.field private mDelayTime:I

.field private mNumberOfListeners:I

.field private mPositionHasChanged:Z

.field private mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

.field private mPositionX:I

.field private mPositionY:I

.field private mScrollHasChanged:Z

.field private mTempContentsViewCoords:[I

.field final mTempCoords:[I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x7

    .line 2655
    iput-object p1, p0, this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2659
    iput v1, p0, MAXIMUM_NUMBER_OF_LISTENERS:I

    .line 2660
    new-array v0, v1, [Landroid/widget/Editor$TextViewPositionListener;

    iput-object v0, p0, mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    .line 2662
    new-array v0, v1, [Z

    iput-object v0, p0, mCanMove:[Z

    .line 2663
    const/4 v0, 0x1

    iput-boolean v0, p0, mPositionHasChanged:Z

    .line 2668
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, mTempCoords:[I

    .line 2669
    iput-object v2, p0, mTempContentsViewCoords:[I

    .line 2670
    const/16 v0, 0x12c

    iput v0, p0, mDelayTime:I

    .line 2671
    iput-object v2, p0, mDelayHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/Editor;
    .param p2, "x1"    # Landroid/widget/Editor$1;

    .prologue
    .line 2655
    invoke-direct {p0, p1}, <init>(Landroid/widget/Editor;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/widget/Editor$PositionListener;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor$PositionListener;

    .prologue
    .line 2655
    iget v0, p0, mPositionX:I

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/Editor$PositionListener;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor$PositionListener;

    .prologue
    .line 2655
    iget v0, p0, mPositionY:I

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/Editor$PositionListener;Landroid/widget/Editor$TextViewPositionListener;IIZZ)V
    .registers 6
    .param p0, "x0"    # Landroid/widget/Editor$PositionListener;
    .param p1, "x1"    # Landroid/widget/Editor$TextViewPositionListener;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .prologue
    .line 2655
    invoke-direct/range {p0 .. p5}, updatePositionWithDelay(Landroid/widget/Editor$TextViewPositionListener;IIZZ)V

    return-void
.end method

.method private checkContentsSizeChanged()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2796
    const/4 v2, 0x0

    .line 2797
    .local v2, "rootView":Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "newWidth":I
    const/4 v0, 0x0

    .line 2799
    .local v0, "newHeight":I
    iget-object v3, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 2801
    if-nez v2, :cond_12

    .line 2817
    :goto_11
    return-void

    .line 2805
    :cond_12
    iget-object v3, p0, mTempContentsViewCoords:[I

    if-eqz v3, :cond_31

    .line 2806
    iget-boolean v3, p0, mPositionHasChanged:Z

    if-nez v3, :cond_28

    .line 2807
    iget-object v3, p0, mTempContentsViewCoords:[I

    aget v3, v3, v5

    if-ne v3, v1, :cond_26

    iget-object v3, p0, mTempContentsViewCoords:[I

    aget v3, v3, v4

    if-eq v3, v0, :cond_28

    .line 2808
    :cond_26
    iput-boolean v4, p0, mPositionHasChanged:Z

    .line 2815
    :cond_28
    :goto_28
    iget-object v3, p0, mTempContentsViewCoords:[I

    aput v1, v3, v5

    .line 2816
    iget-object v3, p0, mTempContentsViewCoords:[I

    aput v0, v3, v4

    goto :goto_11

    .line 2812
    :cond_31
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, mTempContentsViewCoords:[I

    goto :goto_28
.end method

.method private prepareHander()V
    .registers 2

    .prologue
    .line 2719
    new-instance v0, Landroid/widget/Editor$PositionListener$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$PositionListener$1;-><init>(Landroid/widget/Editor$PositionListener;)V

    iput-object v0, p0, mDelayHandler:Landroid/os/Handler;

    .line 2725
    return-void
.end method

.method private updatePosition()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2786
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, mTempCoords:[I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->getLocationInWindow([I)V

    .line 2788
    iget-object v0, p0, mTempCoords:[I

    aget v0, v0, v1

    iget v3, p0, mPositionX:I

    if-ne v0, v3, :cond_1d

    iget-object v0, p0, mTempCoords:[I

    aget v0, v0, v2

    iget v3, p0, mPositionY:I

    if-eq v0, v3, :cond_2d

    :cond_1d
    move v0, v2

    :goto_1e
    iput-boolean v0, p0, mPositionHasChanged:Z

    .line 2790
    iget-object v0, p0, mTempCoords:[I

    aget v0, v0, v1

    iput v0, p0, mPositionX:I

    .line 2791
    iget-object v0, p0, mTempCoords:[I

    aget v0, v0, v2

    iput v0, p0, mPositionY:I

    .line 2792
    return-void

    :cond_2d
    move v0, v1

    .line 2788
    goto :goto_1e
.end method

.method private updatePositionWithDelay(Landroid/widget/Editor$TextViewPositionListener;IIZZ)V
    .registers 6
    .param p1, "positionListener"    # Landroid/widget/Editor$TextViewPositionListener;
    .param p2, "positionX"    # I
    .param p3, "positionY"    # I
    .param p4, "positonChanged"    # Z
    .param p5, "scrollChanged"    # Z

    .prologue
    .line 2782
    invoke-interface {p1, p2, p3, p4, p5}, Landroid/widget/Editor$TextViewPositionListener;->updatePosition(IIZZ)V

    .line 2783
    return-void
.end method


# virtual methods
.method public addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V
    .registers 8
    .param p1, "positionListener"    # Landroid/widget/Editor$TextViewPositionListener;
    .param p2, "canMove"    # Z

    .prologue
    .line 2674
    iget v4, p0, mNumberOfListeners:I

    if-nez v4, :cond_14

    .line 2675
    invoke-direct {p0}, updatePosition()V

    .line 2676
    iget-object v4, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 2677
    .local v3, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2680
    .end local v3    # "vto":Landroid/view/ViewTreeObserver;
    :cond_14
    const/4 v0, -0x1

    .line 2681
    .local v0, "emptySlotIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    const/4 v4, 0x7

    if-ge v1, v4, :cond_28

    .line 2682
    iget-object v4, p0, mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aget-object v2, v4, v1

    .line 2683
    .local v2, "listener":Landroid/widget/Editor$TextViewPositionListener;
    if-ne v2, p1, :cond_20

    .line 2693
    .end local v2    # "listener":Landroid/widget/Editor$TextViewPositionListener;
    :goto_1f
    return-void

    .line 2685
    .restart local v2    # "listener":Landroid/widget/Editor$TextViewPositionListener;
    :cond_20
    if-gez v0, :cond_25

    if-nez v2, :cond_25

    .line 2686
    move v0, v1

    .line 2681
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 2690
    .end local v2    # "listener":Landroid/widget/Editor$TextViewPositionListener;
    :cond_28
    iget-object v4, p0, mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aput-object p1, v4, v0

    .line 2691
    iget-object v4, p0, mCanMove:[Z

    aput-boolean p2, v4, v0

    .line 2692
    iget v4, p0, mNumberOfListeners:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, mNumberOfListeners:I

    goto :goto_1f
.end method

.method public getPositionX()I
    .registers 2

    .prologue
    .line 2711
    iget v0, p0, mPositionX:I

    return v0
.end method

.method public getPositionY()I
    .registers 2

    .prologue
    .line 2715
    iget v0, p0, mPositionY:I

    return v0
.end method

.method public onPreDraw()Z
    .registers 12

    .prologue
    const/4 v10, 0x0

    .line 2729
    invoke-direct {p0}, updatePosition()V

    .line 2730
    invoke-direct {p0}, checkContentsSizeChanged()V

    .line 2732
    const/4 v3, 0x0

    .line 2735
    .local v3, "isNeedToDelay":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    const/4 v6, 0x7

    if-ge v2, v6, :cond_99

    .line 2736
    iget-boolean v6, p0, mPositionHasChanged:Z

    if-nez v6, :cond_1a

    iget-boolean v6, p0, mScrollHasChanged:Z

    if-nez v6, :cond_1a

    iget-object v6, p0, mCanMove:[Z

    aget-boolean v6, v6, v2

    if-eqz v6, :cond_7e

    .line 2737
    :cond_1a
    iget-object v6, p0, mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aget-object v5, v6, v2

    .line 2738
    .local v5, "positionListener":Landroid/widget/Editor$TextViewPositionListener;
    if-eqz v5, :cond_7e

    .line 2739
    const/4 v3, 0x0

    .line 2740
    iget-object v6, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v6}, Landroid/widget/Editor;->access$1600(Landroid/widget/Editor;)Z

    move-result v6

    if-eqz v6, :cond_53

    iget-boolean v6, p0, mPositionHasChanged:Z

    if-eqz v6, :cond_53

    instance-of v6, v5, Landroid/widget/Editor$HandleView;

    if-eqz v6, :cond_53

    move-object v0, v5

    .line 2741
    check-cast v0, Landroid/widget/Editor$HandleView;

    .line 2742
    .local v0, "currentHandle":Landroid/widget/Editor$HandleView;
    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->isDragging()Z

    move-result v6

    if-nez v6, :cond_53

    .line 2743
    invoke-virtual {v0}, Landroid/widget/Editor$HandleView;->dismiss()V

    .line 2744
    iget-object v6, p0, this$0:Landroid/widget/Editor;

    iget-boolean v6, v6, Landroid/widget/Editor;->mSelectionActionMode:Z

    if-nez v6, :cond_52

    instance-of v6, v0, Landroid/widget/Editor$InsertionHandleView;

    if-eqz v6, :cond_52

    iget-object v6, p0, this$0:Landroid/widget/Editor;

    iget-object v6, v6, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-nez v6, :cond_52

    .line 2745
    check-cast v0, Landroid/widget/Editor$InsertionHandleView;

    .end local v0    # "currentHandle":Landroid/widget/Editor$HandleView;
    invoke-virtual {v0}, Landroid/widget/Editor$InsertionHandleView;->addHiderCallback()V

    .line 2747
    :cond_52
    const/4 v3, 0x1

    .line 2750
    :cond_53
    if-eqz v3, :cond_81

    .line 2751
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    .line 2752
    .local v4, "msg":Landroid/os/Message;
    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2753
    iput v10, v4, Landroid/os/Message;->what:I

    .line 2754
    instance-of v6, v5, Landroid/widget/Editor$HandleView;

    if-eqz v6, :cond_68

    move-object v0, v5

    .line 2755
    check-cast v0, Landroid/widget/Editor$HandleView;

    .line 2756
    .restart local v0    # "currentHandle":Landroid/widget/Editor$HandleView;
    iget v6, v0, Landroid/widget/Editor$HandleView;->mHandleType:I

    iput v6, v4, Landroid/os/Message;->what:I

    .line 2759
    .end local v0    # "currentHandle":Landroid/widget/Editor$HandleView;
    :cond_68
    iget-object v6, p0, mDelayHandler:Landroid/os/Handler;

    if-nez v6, :cond_6f

    .line 2760
    invoke-direct {p0}, prepareHander()V

    .line 2763
    :cond_6f
    iget-object v6, p0, mDelayHandler:Landroid/os/Handler;

    iget v7, v4, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 2764
    iget-object v6, p0, mDelayHandler:Landroid/os/Handler;

    iget v7, p0, mDelayTime:I

    int-to-long v8, v7

    invoke-virtual {v6, v4, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2735
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "positionListener":Landroid/widget/Editor$TextViewPositionListener;
    :cond_7e
    :goto_7e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 2767
    .restart local v5    # "positionListener":Landroid/widget/Editor$TextViewPositionListener;
    :cond_81
    :try_start_81
    iget v6, p0, mPositionX:I

    iget v7, p0, mPositionY:I

    iget-boolean v8, p0, mPositionHasChanged:Z

    iget-boolean v9, p0, mScrollHasChanged:Z

    invoke-interface {v5, v6, v7, v8, v9}, Landroid/widget/Editor$TextViewPositionListener;->updatePosition(IIZZ)V
    :try_end_8c
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_81 .. :try_end_8c} :catch_8d

    goto :goto_7e

    .line 2768
    :catch_8d
    move-exception v1

    .line 2769
    .local v1, "e":Landroid/view/WindowManager$BadTokenException;
    const-string v6, "Editor"

    const-string v7, "Occurred BadTokenException by position update timing."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2770
    invoke-virtual {v1}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_7e

    .line 2777
    .end local v1    # "e":Landroid/view/WindowManager$BadTokenException;
    .end local v5    # "positionListener":Landroid/widget/Editor$TextViewPositionListener;
    :cond_99
    iput-boolean v10, p0, mScrollHasChanged:Z

    .line 2778
    const/4 v6, 0x1

    return v6
.end method

.method public onScrollChanged()V
    .registers 2

    .prologue
    .line 2821
    const/4 v0, 0x1

    iput-boolean v0, p0, mScrollHasChanged:Z

    .line 2822
    return-void
.end method

.method public removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V
    .registers 6
    .param p1, "positionListener"    # Landroid/widget/Editor$TextViewPositionListener;

    .prologue
    .line 2696
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v2, 0x7

    if-ge v0, v2, :cond_15

    .line 2697
    iget-object v2, p0, mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    aget-object v2, v2, v0

    if-ne v2, p1, :cond_27

    .line 2698
    iget-object v2, p0, mPositionListeners:[Landroid/widget/Editor$TextViewPositionListener;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 2699
    iget v2, p0, mNumberOfListeners:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, mNumberOfListeners:I

    .line 2704
    :cond_15
    iget v2, p0, mNumberOfListeners:I

    if-nez v2, :cond_26

    .line 2705
    iget-object v2, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 2706
    .local v1, "vto":Landroid/view/ViewTreeObserver;
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 2708
    .end local v1    # "vto":Landroid/view/ViewTreeObserver;
    :cond_26
    return-void

    .line 2696
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
