.class Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;
.super Ljava/lang/Object;
.source "SubPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/SubPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResizeHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ResizeHelper"


# instance fields
.field private final DEBUG:Z

.field private mBeginX:I

.field private mBeginY:I

.field private mContentsBounds:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mFixedRatio:F

.field private mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

.field private mHoverIcon:I

.field private mListener:Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper$Listener;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mMinHeight:I

.field private mMinWidth:I

.field private mMoving:Z

.field private mPaddingRect:Landroid/graphics/Rect;

.field private mResizablePadding:Landroid/graphics/Rect;

.field private mResizeBounds:Landroid/graphics/Rect;

.field private mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper$Listener;IIII)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentsBoudns"    # Landroid/graphics/Rect;
    .param p3, "resizeBounds"    # Landroid/graphics/Rect;
    .param p4, "paddingRect"    # Landroid/graphics/Rect;
    .param p5, "l"    # Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper$Listener;
    .param p6, "minWidth"    # I
    .param p7, "minHeight"    # I
    .param p8, "maxWidth"    # I
    .param p9, "maxHeight"    # I

    .prologue
    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    const/4 v0, 0x1

    iput-boolean v0, p0, DEBUG:Z

    .line 409
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mContentsBounds:Landroid/graphics/Rect;

    .line 410
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mResizeBounds:Landroid/graphics/Rect;

    .line 411
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mPaddingRect:Landroid/graphics/Rect;

    .line 412
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mResizablePadding:Landroid/graphics/Rect;

    .line 413
    new-instance v0, Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/policy/multiwindow/EdgeInspector;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    iput-object v0, p0, mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    .line 421
    const/4 v0, 0x0

    iput-boolean v0, p0, mMoving:Z

    .line 586
    const/4 v0, -0x1

    iput v0, p0, mHoverIcon:I

    .line 431
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 432
    iput-object p5, p0, mListener:Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper$Listener;

    .line 434
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v8, v0

    .line 435
    .local v8, "resizableSize":I
    iget-object v0, p0, mResizablePadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/graphics/Rect;->set(IIII)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    .line 437
    invoke-virtual/range {v0 .. v7}, set(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)V

    .line 438
    return-void
.end method

.method private initGuideView()V
    .registers 7

    .prologue
    .line 678
    new-instance v0, Lcom/samsung/android/multiwindow/ui/GuideView;

    iget-object v1, p0, mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/16 v3, 0x8d4

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/multiwindow/ui/GuideView;-><init>(Landroid/content/Context;Landroid/os/IBinder;I)V

    iput-object v0, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    .line 681
    iget-object v0, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->init()V

    .line 683
    iget-object v0, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    iget-object v1, p0, mPaddingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, mPaddingRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, mPaddingRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, mPaddingRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuidePadding(IIII)V

    .line 684
    iget-object v0, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    iget-object v1, p0, mContentsBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, mContentsBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, mContentsBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, mContentsBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget-object v4, p0, mContentsBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, mContentsBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    .line 685
    return-void
.end method

.method private isInputMethodShown()Z
    .registers 3

    .prologue
    .line 670
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 671
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_b

    .line 672
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v1

    .line 674
    :goto_a
    return v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private isResizeIcon(Z)Z
    .registers 5
    .param p1, "isMouse"    # Z

    .prologue
    const/4 v0, 0x1

    .line 658
    if-eqz p1, :cond_10

    iget v1, p0, mHoverIcon:I

    const/16 v2, 0x6c

    if-eq v1, v2, :cond_f

    iget v1, p0, mHoverIcon:I

    const/16 v2, 0x6d

    if-ne v1, v2, :cond_10

    .line 666
    :cond_f
    :goto_f
    return v0

    .line 662
    :cond_10
    iget v1, p0, mHoverIcon:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_f

    iget v1, p0, mHoverIcon:I

    const/16 v2, 0x9

    if-eq v1, v2, :cond_f

    .line 666
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method public begin(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 471
    iget-object v0, p0, mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v0}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->clear()V

    .line 472
    iget-object v0, p0, mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    iget-object v1, p0, mResizeBounds:Landroid/graphics/Rect;

    iget-object v2, p0, mResizablePadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->set(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 473
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    packed-switch v0, :pswitch_data_9c

    .line 482
    :goto_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, mBeginX:I

    .line 483
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, mBeginY:I

    .line 484
    iget-object v0, p0, mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    iget v1, p0, mBeginX:I

    iget v2, p0, mBeginY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->check(II)V

    .line 485
    iget-object v0, p0, mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v0}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isCorner()Z

    move-result v0

    iput-boolean v0, p0, mMoving:Z

    .line 486
    iget-boolean v0, p0, mMoving:Z

    if-eqz v0, :cond_5d

    .line 488
    const-string v0, "ResizeHelper"

    const-string v1, "Start to resize."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-direct {p0}, initGuideView()V

    .line 494
    :goto_4a
    iget-boolean v0, p0, mMoving:Z

    return v0

    .line 475
    :pswitch_4d
    iget-object v0, p0, mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->setFilter(I)V

    goto :goto_1d

    .line 478
    :pswitch_55
    iget-object v0, p0, mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->setFilter(I)V

    goto :goto_1d

    .line 492
    :cond_5d
    const-string v0, "ResizeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resizing is failed. mResizeBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mResizablePadding="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mResizablePadding:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mBeginX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mBeginX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mBeginY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mBeginY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 473
    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_4d
        :pswitch_55
    .end packed-switch
.end method

.method public dispathcHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v4, 0x9

    const/16 v5, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 590
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_e

    move v2, v3

    .line 591
    .local v2, "isMouse":Z
    :cond_e
    const/4 v1, 0x0

    .line 593
    .local v1, "isConsume":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_f8

    .line 641
    :cond_16
    :goto_16
    :pswitch_16
    if-eqz v1, :cond_24

    :try_start_18
    iget v3, p0, mHoverIcon:I

    if-lez v3, :cond_24

    .line 642
    if-eqz v2, :cond_d5

    .line 643
    iget v3, p0, mHoverIcon:I

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/view/PointerIcon;->setMouseIcon(II)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_24} :catch_dd

    .line 654
    :cond_24
    :goto_24
    return v1

    .line 595
    :pswitch_25
    iget-object v6, p0, mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->clear()V

    .line 596
    iget-object v6, p0, mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    iget-object v7, p0, mResizeBounds:Landroid/graphics/Rect;

    iget-object v8, p0, mResizablePadding:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->set(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 597
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    packed-switch v6, :pswitch_data_104

    .line 608
    :goto_42
    :pswitch_42
    iget-object v6, p0, mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->clear()V

    .line 609
    iget-object v6, p0, mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->check(II)V

    .line 611
    iget-object v6, p0, mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isCorner()Z

    move-result v6

    if-eqz v6, :cond_b7

    invoke-direct {p0}, isInputMethodShown()Z

    move-result v6

    if-nez v6, :cond_b7

    .line 612
    iget-object v3, p0, mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v6, 0x6

    invoke-virtual {v3, v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v3

    if-eqz v3, :cond_87

    .line 613
    if-eqz v2, :cond_85

    const/16 v3, 0x6d

    :goto_71
    iput v3, p0, mHoverIcon:I

    .line 614
    const/4 v1, 0x1

    goto :goto_16

    .line 599
    :pswitch_75
    iget-object v6, p0, mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->setFilter(I)V

    goto :goto_42

    .line 602
    :pswitch_7d
    iget-object v6, p0, mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->setFilter(I)V

    goto :goto_42

    :cond_85
    move v3, v4

    .line 613
    goto :goto_71

    .line 615
    :cond_87
    iget-object v3, p0, mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 616
    if-eqz v2, :cond_9a

    const/16 v3, 0x6c

    :goto_95
    iput v3, p0, mHoverIcon:I

    .line 617
    const/4 v1, 0x1

    goto/16 :goto_16

    :cond_9a
    move v3, v5

    .line 616
    goto :goto_95

    .line 618
    :cond_9c
    iget-object v3, p0, mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v3

    if-eqz v3, :cond_ae

    .line 619
    if-eqz v2, :cond_a9

    const/16 v5, 0x6c

    :cond_a9
    iput v5, p0, mHoverIcon:I

    .line 620
    const/4 v1, 0x1

    goto/16 :goto_16

    .line 622
    :cond_ae
    if-eqz v2, :cond_b2

    const/16 v4, 0x6d

    :cond_b2
    iput v4, p0, mHoverIcon:I

    .line 623
    const/4 v1, 0x1

    goto/16 :goto_16

    .line 626
    :cond_b7
    invoke-direct {p0, v2}, isResizeIcon(Z)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 627
    if-eqz v2, :cond_c1

    const/16 v3, 0x65

    :cond_c1
    iput v3, p0, mHoverIcon:I

    .line 628
    const/4 v1, 0x1

    goto/16 :goto_16

    .line 633
    :pswitch_c6
    invoke-direct {p0, v2}, isResizeIcon(Z)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 634
    if-eqz v2, :cond_d0

    const/16 v3, 0x65

    :cond_d0
    iput v3, p0, mHoverIcon:I

    .line 635
    const/4 v1, 0x1

    goto/16 :goto_16

    .line 645
    :cond_d5
    :try_start_d5
    iget v3, p0, mHoverIcon:I

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_db
    .catch Landroid/os/RemoteException; {:try_start_d5 .. :try_end_db} :catch_dd

    goto/16 :goto_24

    .line 649
    :catch_dd
    move-exception v0

    .line 650
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ResizeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to change Pen Point to HOVERING / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24

    .line 593
    :pswitch_data_f8
    .packed-switch 0x7
        :pswitch_42
        :pswitch_16
        :pswitch_25
        :pswitch_c6
    .end packed-switch

    .line 597
    :pswitch_data_104
    .packed-switch 0x1
        :pswitch_75
        :pswitch_7d
    .end packed-switch
.end method

.method public finish(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 566
    iget-object v0, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    if-eqz v0, :cond_a

    .line 567
    iget-object v0, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/ui/GuideView;->dismiss()V

    .line 570
    :cond_a
    iget-boolean v0, p0, mMoving:Z

    if-nez v0, :cond_12

    .line 571
    iput-object v3, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    .line 572
    const/4 v0, 0x0

    .line 583
    :goto_11
    return v0

    .line 575
    :cond_12
    iget-object v0, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    if-eqz v0, :cond_34

    .line 576
    const-string v0, "ResizeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish resizing. The bounds is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/ui/GuideView;->getLastBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_34
    iget-object v0, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    if-eqz v0, :cond_45

    .line 580
    iget-object v0, p0, mListener:Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper$Listener;

    iget-object v1, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->getLastBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper$Listener;->onResizeFinish(Landroid/graphics/Rect;)V

    .line 581
    iput-object v3, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    .line 583
    :cond_45
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public isMoving()Z
    .registers 2

    .prologue
    .line 468
    iget-boolean v0, p0, mMoving:Z

    return v0
.end method

.method public move(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v10, 0x9

    const/4 v9, 0x6

    const/4 v8, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 498
    iget-boolean v6, p0, mMoving:Z

    if-nez v6, :cond_3e

    .line 499
    iget-object v5, p0, mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v5}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isCandidate()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 500
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, mBeginX:I

    .line 501
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, mBeginY:I

    .line 502
    iget-object v5, p0, mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    iget v6, p0, mBeginX:I

    iget v7, p0, mBeginY:I

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->check(II)V

    .line 504
    iget-object v5, p0, mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v5}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isCorner()Z

    move-result v5

    iput-boolean v5, p0, mMoving:Z

    if-eqz v5, :cond_3d

    .line 506
    const-string v5, "TAG"

    const-string v6, "Start to resize."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-direct {p0}, initGuideView()V

    .line 562
    :cond_3d
    :goto_3d
    return v4

    .line 514
    :cond_3e
    const/4 v0, 0x0

    .line 515
    .local v0, "dx":I
    iget-object v6, p0, mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_a7

    .line 516
    iget v6, p0, mBeginX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v7

    float-to-int v7, v7

    sub-int v0, v6, v7

    .line 524
    :cond_50
    :goto_50
    iget-object v6, p0, mContentsBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int v3, v6, v0

    .line 525
    .local v3, "width":I
    iget-object v6, p0, mContentsBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v7, p0, mMaxWidth:I

    if-eq v6, v7, :cond_6c

    iget-object v6, p0, mContentsBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget v7, p0, mMaxHeight:I

    if-ne v6, v7, :cond_e0

    :cond_6c
    move v2, v5

    .line 527
    .local v2, "lastBoundIsMax":Z
    :goto_6d
    int-to-float v6, v3

    iget v7, p0, mFixedRatio:F

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 530
    .local v1, "height":I
    iget v6, p0, mMinWidth:I

    if-ge v3, v6, :cond_e2

    .line 531
    iget v3, p0, mMinWidth:I

    .line 532
    int-to-float v6, v3

    iget v7, p0, mFixedRatio:F

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 533
    iget-object v6, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v6, v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    .line 550
    :goto_88
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v6

    iget v6, v6, Landroid/view/DisplayInfo;->appWidth:I

    if-eq v3, v6, :cond_a0

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v6

    iget v6, v6, Landroid/view/DisplayInfo;->appHeight:I

    if-ne v1, v6, :cond_116

    .line 552
    :cond_a0
    iget-object v6, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v6, v4, v4, v3, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    :cond_a5
    :goto_a5
    move v4, v5

    .line 562
    goto :goto_3d

    .line 517
    .end local v1    # "height":I
    .end local v2    # "lastBoundIsMax":Z
    .end local v3    # "width":I
    :cond_a7
    iget-object v6, p0, mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6, v10}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_b9

    .line 518
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, mBeginX:I

    sub-int v0, v6, v7

    goto :goto_50

    .line 519
    :cond_b9
    iget-object v6, p0, mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v6, v9}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_cb

    .line 520
    iget v6, p0, mBeginX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v7

    float-to-int v7, v7

    sub-int v0, v6, v7

    goto :goto_50

    .line 521
    :cond_cb
    iget-object v6, p0, mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 522
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v6

    float-to-int v6, v6

    iget v7, p0, mBeginX:I

    sub-int v0, v6, v7

    goto/16 :goto_50

    .restart local v3    # "width":I
    :cond_e0
    move v2, v4

    .line 525
    goto :goto_6d

    .line 535
    .restart local v1    # "height":I
    .restart local v2    # "lastBoundIsMax":Z
    :cond_e2
    iget v6, p0, mMaxWidth:I

    if-le v3, v6, :cond_10f

    .line 536
    if-eqz v2, :cond_103

    .line 537
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v6

    iget v3, v6, Landroid/view/DisplayInfo;->appWidth:I

    .line 538
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v6

    iget v1, v6, Landroid/view/DisplayInfo;->appHeight:I

    .line 539
    iget-object v6, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    goto :goto_88

    .line 542
    :cond_103
    iget v3, p0, mMaxWidth:I

    .line 543
    int-to-float v6, v3

    iget v7, p0, mFixedRatio:F

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto/16 :goto_88

    .line 546
    :cond_10f
    iget-object v6, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v6, v4}, Lcom/samsung/android/multiwindow/ui/GuideView;->setGuideState(I)V

    goto/16 :goto_88

    .line 553
    :cond_116
    iget-object v4, p0, mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v4, v8}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v4

    if-eqz v4, :cond_12f

    .line 554
    iget-object v4, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    iget-object v6, p0, mContentsBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v3

    iget-object v7, p0, mContentsBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v1

    invoke-virtual {v4, v6, v7, v3, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    goto/16 :goto_a5

    .line 555
    :cond_12f
    iget-object v4, p0, mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v4, v10}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v4

    if-eqz v4, :cond_147

    .line 556
    iget-object v4, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    iget-object v6, p0, mContentsBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, mContentsBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v1

    invoke-virtual {v4, v6, v7, v3, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    goto/16 :goto_a5

    .line 557
    :cond_147
    iget-object v4, p0, mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    invoke-virtual {v4, v9}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v4

    if-eqz v4, :cond_15f

    .line 558
    iget-object v4, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    iget-object v6, p0, mContentsBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v3

    iget-object v7, p0, mContentsBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v6, v7, v3, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    goto/16 :goto_a5

    .line 559
    :cond_15f
    iget-object v4, p0, mTouchEdgeInspector:Lcom/android/internal/policy/multiwindow/EdgeInspector;

    const/16 v6, 0xa

    invoke-virtual {v4, v6}, Lcom/android/internal/policy/multiwindow/EdgeInspector;->isEdge(I)Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 560
    iget-object v4, p0, mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    iget-object v6, p0, mContentsBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, p0, mContentsBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v6, v7, v3, v1}, Lcom/samsung/android/multiwindow/ui/GuideView;->show(IIII)V

    goto/16 :goto_a5
.end method

.method public set(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IIII)V
    .registers 11
    .param p1, "contentsBoudns"    # Landroid/graphics/Rect;
    .param p2, "resizeBounds"    # Landroid/graphics/Rect;
    .param p3, "paddingRect"    # Landroid/graphics/Rect;
    .param p4, "minWidth"    # I
    .param p5, "minHeight"    # I
    .param p6, "maxWidth"    # I
    .param p7, "maxHeight"    # I

    .prologue
    .line 441
    if-eqz p1, :cond_4

    if-nez p2, :cond_2e

    .line 442
    :cond_4
    const-string v0, "ResizeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The parameter is null.resizeBounds ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",contentsBoudns="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The parameter was wrong."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 446
    :cond_2e
    const-string v0, "ResizeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resizeBounds ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",contentsBoudns="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, mContentsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 450
    iget-object v0, p0, mResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 451
    if-eqz p3, :cond_7c

    .line 452
    iget-object v0, p0, mPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 457
    :goto_62
    iput p4, p0, mMinWidth:I

    .line 458
    iput p5, p0, mMinHeight:I

    .line 460
    iput p6, p0, mMaxWidth:I

    .line 461
    iput p7, p0, mMaxHeight:I

    .line 463
    iget-object v0, p0, mContentsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, mContentsBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, mFixedRatio:F

    .line 465
    return-void

    .line 454
    :cond_7c
    iget-object v0, p0, mPaddingRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_62
.end method
