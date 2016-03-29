.class Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$9;
.super Ljava/lang/Object;
.source "CenterBarWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->makeButtonPopupLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)V
    .locals 0

    .prologue
    .line 1511
    iput-object p1, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$9;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1514
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1515
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_4

    .line 1516
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$9;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterbarButtonsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$3300(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/RippleDrawable;

    .line 1517
    .local v4, "ripple":Landroid/graphics/drawable/RippleDrawable;
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$9;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$700(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0294

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1518
    .local v5, "rippleSize":I
    const/4 v1, 0x0

    .line 1519
    .local v1, "layoutLeft":I
    const/4 v2, 0x0

    .line 1520
    .local v2, "layoutRight":I
    const/4 v3, 0x0

    .line 1521
    .local v3, "layoutTop":I
    const/4 v0, 0x0

    .line 1523
    .local v0, "layoutBottom":I
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$9;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mDisplayOrientation:I
    invoke-static {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$000(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)I

    move-result v6

    if-ne v6, v11, :cond_2

    .line 1524
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 1525
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int v7, v5, v7

    div-int/lit8 v7, v7, 0x2

    sub-int v1, v6, v7

    .line 1526
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int v7, v5, v7

    div-int/lit8 v7, v7, 0x2

    add-int v2, v6, v7

    .line 1531
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v4, v1, v6, v2, v7}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    .line 1532
    const-string v6, "CenterBarWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "portrait mode : rippleSize = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", layoutLeft = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", layoutRight = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", v.getLeft() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", v.getWidth() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$9;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterbarButtonsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$3300(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->drawableHotspotChanged(FF)V

    .line 1550
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$9;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterbarButtonsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$3300(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 1551
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$9;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # setter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mToastCheck:Z
    invoke-static {v6, v10}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$3402(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z

    .line 1557
    .end local v0    # "layoutBottom":I
    .end local v1    # "layoutLeft":I
    .end local v2    # "layoutRight":I
    .end local v3    # "layoutTop":I
    .end local v4    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    .end local v5    # "rippleSize":I
    :cond_0
    :goto_2
    return v10

    .line 1528
    .restart local v0    # "layoutBottom":I
    .restart local v1    # "layoutLeft":I
    .restart local v2    # "layoutRight":I
    .restart local v3    # "layoutTop":I
    .restart local v4    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    .restart local v5    # "rippleSize":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 1529
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    sub-int v2, v6, v7

    goto/16 :goto_0

    .line 1536
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_3

    .line 1537
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int v7, v5, v7

    div-int/lit8 v7, v7, 0x2

    sub-int v3, v6, v7

    .line 1538
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int v7, v5, v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 1543
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v4, v6, v3, v7, v0}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    .line 1544
    const-string v6, "CenterBarWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "landscape mode : rippleSize = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", layoutTop = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", layoutBottom = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", v.getTop() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", v.getHeight() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1540
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    add-int v3, v6, v7

    .line 1541
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    sub-int v0, v6, v7

    goto :goto_3

    .line 1552
    .end local v0    # "layoutBottom":I
    .end local v1    # "layoutLeft":I
    .end local v2    # "layoutRight":I
    .end local v3    # "layoutTop":I
    .end local v4    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    .end local v5    # "rippleSize":I
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 1554
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$9;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # getter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mCenterbarButtonsContainer:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$3300(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 1555
    iget-object v6, p0, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow$9;->this$0:Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;

    # setter for: Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->mToastCheck:Z
    invoke-static {v6, v11}, Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;->access$3402(Lcom/android/systemui/multiwindow/centerbarwindow/CenterBarWindow;Z)Z

    goto/16 :goto_2
.end method
