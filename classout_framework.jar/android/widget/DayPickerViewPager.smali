.class Landroid/widget/DayPickerViewPager;
.super Lcom/android/internal/widget/ViewPager;
.source "DayPickerViewPager.java"


# instance fields
.field private final mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, mMatchParentChildren:Ljava/util/ArrayList;

    .line 49
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 53
    invoke-virtual {p0}, populate()V

    .line 56
    invoke-virtual {p0}, getChildCount()I

    move-result v4

    .line 58
    .local v4, "count":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    if-ne v11, v12, :cond_17

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    if-eq v11, v12, :cond_5f

    :cond_17
    const/4 v10, 0x1

    .line 62
    .local v10, "measureMatchParentChildren":Z
    :goto_18
    const/4 v8, 0x0

    .line 63
    .local v8, "maxHeight":I
    const/4 v9, 0x0

    .line 64
    .local v9, "maxWidth":I
    const/4 v2, 0x0

    .line 66
    .local v2, "childState":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1c
    if-ge v6, v4, :cond_61

    .line 67
    invoke-virtual {p0, v6}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_5c

    .line 69
    invoke-virtual {p0, v0, p1, p2}, measureChild(Landroid/view/View;II)V

    .line 70
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 71
    .local v7, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 72
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 73
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v11

    invoke-static {v2, v11}, combineMeasuredStates(II)I

    move-result v2

    .line 74
    if-eqz v10, :cond_5c

    .line 75
    iget v11, v7, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_57

    iget v11, v7, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_5c

    .line 77
    :cond_57
    iget-object v11, p0, mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .end local v7    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    :cond_5c
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 58
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childState":I
    .end local v6    # "i":I
    .end local v8    # "maxHeight":I
    .end local v9    # "maxWidth":I
    .end local v10    # "measureMatchParentChildren":Z
    :cond_5f
    const/4 v10, 0x0

    goto :goto_18

    .line 84
    .restart local v2    # "childState":I
    .restart local v6    # "i":I
    .restart local v8    # "maxHeight":I
    .restart local v9    # "maxWidth":I
    .restart local v10    # "measureMatchParentChildren":Z
    :cond_61
    invoke-virtual {p0}, getPaddingLeft()I

    move-result v11

    invoke-virtual {p0}, getPaddingRight()I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v9, v11

    .line 85
    invoke-virtual {p0}, getPaddingTop()I

    move-result v11

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v8, v11

    .line 88
    invoke-virtual {p0}, getSuggestedMinimumHeight()I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 89
    invoke-virtual {p0}, getSuggestedMinimumWidth()I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 92
    invoke-virtual {p0}, getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 93
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_9b

    .line 94
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 95
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 98
    :cond_9b
    invoke-static {v9, p1, v2}, resolveSizeAndState(III)I

    move-result v11

    shl-int/lit8 v12, v2, 0x10

    invoke-static {v8, p2, v12}, resolveSizeAndState(III)I

    move-result v12

    invoke-virtual {p0, v11, v12}, setMeasuredDimension(II)V

    .line 102
    iget-object v11, p0, mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 103
    const/4 v11, 0x1

    if-le v4, v11, :cond_11a

    .line 104
    const/4 v6, 0x0

    :goto_b2
    if-ge v6, v4, :cond_11a

    .line 105
    iget-object v11, p0, mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 107
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 111
    .restart local v7    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget v11, v7, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_fa

    .line 112
    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v11

    invoke-virtual {p0}, getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 121
    .local v3, "childWidthMeasureSpec":I
    :goto_db
    iget v11, v7, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_10a

    .line 122
    invoke-virtual {p0}, getMeasuredHeight()I

    move-result v11

    invoke-virtual {p0}, getPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v12

    sub-int/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 131
    .local v1, "childHeightMeasureSpec":I
    :goto_f4
    invoke-virtual {v0, v3, v1}, Landroid/view/View;->measure(II)V

    .line 104
    add-int/lit8 v6, v6, 0x1

    goto :goto_b2

    .line 116
    .end local v1    # "childHeightMeasureSpec":I
    .end local v3    # "childWidthMeasureSpec":I
    :cond_fa
    invoke-virtual {p0}, getPaddingLeft()I

    move-result v11

    invoke-virtual {p0}, getPaddingRight()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, v7, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    invoke-static {p1, v11, v12}, getChildMeasureSpec(III)I

    move-result v3

    .restart local v3    # "childWidthMeasureSpec":I
    goto :goto_db

    .line 126
    :cond_10a
    invoke-virtual {p0}, getPaddingTop()I

    move-result v11

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, v7, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    invoke-static {p2, v11, v12}, getChildMeasureSpec(III)I

    move-result v1

    .restart local v1    # "childHeightMeasureSpec":I
    goto :goto_f4

    .line 135
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeightMeasureSpec":I
    .end local v3    # "childWidthMeasureSpec":I
    .end local v7    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    :cond_11a
    iget-object v11, p0, mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 136
    return-void
.end method
