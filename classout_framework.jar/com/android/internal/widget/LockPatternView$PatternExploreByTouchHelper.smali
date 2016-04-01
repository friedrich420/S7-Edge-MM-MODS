.class final Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;
.super Lcom/android/internal/widget/ExploreByTouchHelper;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PatternExploreByTouchHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;
    }
.end annotation


# instance fields
.field private mItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/internal/widget/LockPatternView;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/LockPatternView;Landroid/view/View;)V
    .registers 4
    .param p2, "forView"    # Landroid/view/View;

    .prologue
    .line 1337
    iput-object p1, p0, this$0:Lcom/android/internal/widget/LockPatternView;

    .line 1338
    invoke-direct {p0, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 1326
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mTempRect:Landroid/graphics/Rect;

    .line 1327
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mItems:Ljava/util/HashMap;

    .line 1339
    return-void
.end method

.method private getBoundsForVirtualView(I)Landroid/graphics/Rect;
    .registers 14
    .param p1, "virtualViewId"    # I

    .prologue
    const/high16 v11, 0x3f000000    # 0.5f

    .line 1458
    add-int/lit8 v7, p1, -0x1

    .line 1459
    .local v7, "ordinal":I
    iget-object v0, p0, mTempRect:Landroid/graphics/Rect;

    .line 1460
    .local v0, "bounds":Landroid/graphics/Rect;
    div-int/lit8 v8, v7, 0x3

    .line 1461
    .local v8, "row":I
    rem-int/lit8 v6, v7, 0x3

    .line 1462
    .local v6, "col":I
    iget-object v9, p0, this$0:Lcom/android/internal/widget/LockPatternView;

    iget-object v9, v9, Lcom/android/internal/widget/LockPatternView;->mCellStates:[[Lcom/android/internal/widget/LockPatternView$CellState;

    aget-object v9, v9, v8

    aget-object v1, v9, v6

    .line 1463
    .local v1, "cell":Lcom/android/internal/widget/LockPatternView$CellState;
    iget-object v9, p0, this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v9, v6}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v4

    .line 1464
    .local v4, "centerX":F
    iget-object v9, p0, this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v9, v8}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v5

    .line 1465
    .local v5, "centerY":F
    iget-object v9, p0, this$0:Lcom/android/internal/widget/LockPatternView;

    iget v9, v9, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    iget-object v10, p0, this$0:Lcom/android/internal/widget/LockPatternView;

    # getter for: Lcom/android/internal/widget/LockPatternView;->mHitFactor:F
    invoke-static {v10}, Lcom/android/internal/widget/LockPatternView;->access$700(Lcom/android/internal/widget/LockPatternView;)F

    move-result v10

    mul-float/2addr v9, v10

    mul-float v2, v9, v11

    .line 1466
    .local v2, "cellheight":F
    iget-object v9, p0, this$0:Lcom/android/internal/widget/LockPatternView;

    iget v9, v9, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    iget-object v10, p0, this$0:Lcom/android/internal/widget/LockPatternView;

    # getter for: Lcom/android/internal/widget/LockPatternView;->mHitFactor:F
    invoke-static {v10}, Lcom/android/internal/widget/LockPatternView;->access$700(Lcom/android/internal/widget/LockPatternView;)F

    move-result v10

    mul-float/2addr v9, v10

    mul-float v3, v9, v11

    .line 1467
    .local v3, "cellwidth":F
    sub-float v9, v4, v3

    float-to-int v9, v9

    iput v9, v0, Landroid/graphics/Rect;->left:I

    .line 1468
    add-float v9, v4, v3

    float-to-int v9, v9

    iput v9, v0, Landroid/graphics/Rect;->right:I

    .line 1469
    sub-float v9, v5, v2

    float-to-int v9, v9

    iput v9, v0, Landroid/graphics/Rect;->top:I

    .line 1470
    add-float v9, v5, v2

    float-to-int v9, v9

    iput v9, v0, Landroid/graphics/Rect;->bottom:I

    .line 1471
    return-object v0
.end method

.method private getTextForVirtualView(I)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "virtualViewId"    # I

    .prologue
    .line 1485
    iget-object v1, p0, this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1486
    .local v0, "res":Landroid/content/res/Resources;
    invoke-direct {p0}, shouldSpeakPassword()Z

    move-result v1

    if-eqz v1, :cond_1e

    const v1, 0x10402ad

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1d
    return-object v1

    :cond_1e
    const v1, 0x10402ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1d
.end method

.method private getVirtualViewIdForHit(FF)I
    .registers 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v4, -0x80000000

    .line 1500
    iget-object v5, p0, this$0:Lcom/android/internal/widget/LockPatternView;

    # invokes: Lcom/android/internal/widget/LockPatternView;->getRowHit(F)I
    invoke-static {v5, p2}, Lcom/android/internal/widget/LockPatternView;->access$1000(Lcom/android/internal/widget/LockPatternView;F)I

    move-result v3

    .line 1501
    .local v3, "rowHit":I
    if-gez v3, :cond_b

    .line 1513
    :cond_a
    :goto_a
    return v4

    .line 1504
    :cond_b
    iget-object v5, p0, this$0:Lcom/android/internal/widget/LockPatternView;

    # invokes: Lcom/android/internal/widget/LockPatternView;->getColumnHit(F)I
    invoke-static {v5, p1}, Lcom/android/internal/widget/LockPatternView;->access$1100(Lcom/android/internal/widget/LockPatternView;F)I

    move-result v0

    .line 1505
    .local v0, "columnHit":I
    if-ltz v0, :cond_a

    .line 1508
    iget-object v5, p0, this$0:Lcom/android/internal/widget/LockPatternView;

    iget-object v5, v5, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object v5, v5, v3

    aget-boolean v1, v5, v0

    .line 1509
    .local v1, "dotAvailable":Z
    mul-int/lit8 v5, v3, 0x3

    add-int/2addr v5, v0

    add-int/lit8 v2, v5, 0x1

    .line 1510
    .local v2, "dotId":I
    if-eqz v1, :cond_23

    move v4, v2

    .line 1513
    .local v4, "view":I
    :cond_23
    goto :goto_a
.end method

.method private isClickable(I)Z
    .registers 6
    .param p1, "virtualViewId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1413
    const/high16 v3, -0x80000000

    if-eq p1, v3, :cond_18

    .line 1414
    add-int/lit8 v3, p1, -0x1

    div-int/lit8 v1, v3, 0x3

    .line 1415
    .local v1, "row":I
    add-int/lit8 v3, p1, -0x1

    rem-int/lit8 v0, v3, 0x3

    .line 1416
    .local v0, "col":I
    iget-object v3, p0, this$0:Lcom/android/internal/widget/LockPatternView;

    iget-object v3, v3, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object v3, v3, v1

    aget-boolean v3, v3, v0

    if-nez v3, :cond_18

    const/4 v2, 0x1

    .line 1418
    .end local v0    # "col":I
    .end local v1    # "row":I
    :cond_18
    return v2
.end method

.method private shouldSpeakPassword()Z
    .registers 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1475
    iget-object v4, p0, this$0:Lcom/android/internal/widget/LockPatternView;

    # getter for: Lcom/android/internal/widget/LockPatternView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/widget/LockPatternView;->access$800(Lcom/android/internal/widget/LockPatternView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "speak_password"

    const/4 v6, -0x3

    invoke-static {v4, v5, v3, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_3e

    move v1, v2

    .line 1478
    .local v1, "speakPassword":Z
    :goto_17
    iget-object v4, p0, this$0:Lcom/android/internal/widget/LockPatternView;

    # getter for: Lcom/android/internal/widget/LockPatternView;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/android/internal/widget/LockPatternView;->access$900(Lcom/android/internal/widget/LockPatternView;)Landroid/media/AudioManager;

    move-result-object v4

    if-eqz v4, :cond_42

    iget-object v4, p0, this$0:Lcom/android/internal/widget/LockPatternView;

    # getter for: Lcom/android/internal/widget/LockPatternView;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/android/internal/widget/LockPatternView;->access$900(Lcom/android/internal/widget/LockPatternView;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v4

    if-nez v4, :cond_37

    iget-object v4, p0, this$0:Lcom/android/internal/widget/LockPatternView;

    # getter for: Lcom/android/internal/widget/LockPatternView;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Lcom/android/internal/widget/LockPatternView;->access$900(Lcom/android/internal/widget/LockPatternView;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v4

    if-eqz v4, :cond_40

    :cond_37
    move v0, v2

    .line 1481
    .local v0, "hasHeadphones":Z
    :goto_38
    if-nez v1, :cond_3c

    if-eqz v0, :cond_3d

    :cond_3c
    move v3, v2

    :cond_3d
    return v3

    .end local v0    # "hasHeadphones":Z
    .end local v1    # "speakPassword":Z
    :cond_3e
    move v1, v3

    .line 1475
    goto :goto_17

    .restart local v1    # "speakPassword":Z
    :cond_40
    move v0, v3

    .line 1478
    goto :goto_38

    :cond_42
    move v0, v3

    goto :goto_38
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1345
    invoke-direct {p0, p1, p2}, getVirtualViewIdForHit(FF)I

    move-result v0

    .line 1346
    .local v0, "id":I
    return v0
.end method

.method protected getVisibleVirtualViews(Landroid/util/IntArray;)V
    .registers 6
    .param p1, "virtualViewIds"    # Landroid/util/IntArray;

    .prologue
    .line 1352
    iget-object v2, p0, this$0:Lcom/android/internal/widget/LockPatternView;

    iget-boolean v2, v2, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-nez v2, :cond_7

    .line 1364
    :cond_6
    return-void

    .line 1355
    :cond_7
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_8
    const/16 v2, 0xa

    if-ge v0, v2, :cond_6

    .line 1356
    iget-object v2, p0, mItems:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 1357
    new-instance v1, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;

    invoke-direct {p0, v0}, getTextForVirtualView(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;-><init>(Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;Ljava/lang/CharSequence;)V

    .line 1358
    .local v1, "item":Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;
    iget-object v2, p0, mItems:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    .end local v1    # "item":Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;
    :cond_2a
    invoke-virtual {p1, v0}, Landroid/util/IntArray;->add(I)V

    .line 1355
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method onItemClicked(I)Z
    .registers 3
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x1

    .line 1447
    invoke-virtual {p0, p1}, invalidateVirtualView(I)V

    .line 1452
    invoke-virtual {p0, p1, v0}, sendEventForVirtualView(II)Z

    .line 1454
    return v0
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 1426
    packed-switch p2, :pswitch_data_a

    .line 1437
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 1431
    :pswitch_5
    invoke-virtual {p0, p1}, onItemClicked(I)Z

    move-result v0

    goto :goto_4

    .line 1426
    :pswitch_data_a
    .packed-switch 0x10
        :pswitch_5
    .end packed-switch
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 6
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1378
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1379
    iget-object v1, p0, this$0:Lcom/android/internal/widget/LockPatternView;

    iget-boolean v1, v1, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-nez v1, :cond_19

    .line 1380
    iget-object v1, p0, this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10402af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1382
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1384
    .end local v0    # "contentDescription":Ljava/lang/CharSequence;
    :cond_19
    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 6
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1370
    iget-object v1, p0, mItems:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1371
    iget-object v1, p0, mItems:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;

    iget-object v0, v1, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;->description:Ljava/lang/CharSequence;

    .line 1372
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1374
    .end local v0    # "contentDescription":Ljava/lang/CharSequence;
    :cond_21
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1392
    invoke-direct {p0, p1}, getTextForVirtualView(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1393
    invoke-direct {p0, p1}, getTextForVirtualView(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1395
    iget-object v1, p0, this$0:Lcom/android/internal/widget/LockPatternView;

    iget-boolean v1, v1, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v1, :cond_2a

    .line 1396
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 1398
    invoke-direct {p0, p1}, isClickable(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1400
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1401
    invoke-direct {p0, p1}, isClickable(I)Z

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 1406
    :cond_2a
    invoke-direct {p0, p1}, getBoundsForVirtualView(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 1408
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1409
    return-void
.end method
