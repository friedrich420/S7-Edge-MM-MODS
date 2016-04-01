.class public Landroid/widget/FrameLayout;
.super Landroid/view/ViewGroup;
.source "FrameLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/FrameLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHILD_GRAVITY:I = 0x800033


# instance fields
.field private mForegroundPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

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

.field mMeasureAllChildren:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private final mOverlayBounds:Landroid/graphics/Rect;

.field private final mSelfBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 63
    iput-boolean v0, p0, mMeasureAllChildren:Z

    .line 66
    iput v0, p0, mForegroundPaddingLeft:I

    .line 69
    iput v0, p0, mForegroundPaddingTop:I

    .line 72
    iput v0, p0, mForegroundPaddingRight:I

    .line 75
    iput v0, p0, mForegroundPaddingBottom:I

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mSelfBounds:Landroid/graphics/Rect;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mOverlayBounds:Landroid/graphics/Rect;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, mMatchParentChildren:Ljava/util/ArrayList;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 63
    iput-boolean v2, p0, mMeasureAllChildren:Z

    .line 66
    iput v2, p0, mForegroundPaddingLeft:I

    .line 69
    iput v2, p0, mForegroundPaddingTop:I

    .line 72
    iput v2, p0, mForegroundPaddingRight:I

    .line 75
    iput v2, p0, mForegroundPaddingBottom:I

    .line 78
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, mSelfBounds:Landroid/graphics/Rect;

    .line 79
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, mOverlayBounds:Landroid/graphics/Rect;

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, mMatchParentChildren:Ljava/util/ArrayList;

    .line 99
    sget-object v1, Lcom/android/internal/R$styleable;->FrameLayout:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 102
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 103
    invoke-virtual {p0, v3}, setMeasureAllChildren(Z)V

    .line 106
    :cond_33
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    return-void
.end method

.method private getPaddingBottomWithForeground()I
    .registers 3

    .prologue
    .line 170
    invoke-virtual {p0}, isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, mPaddingBottom:I

    iget v1, p0, mForegroundPaddingBottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_e
    return v0

    :cond_f
    iget v0, p0, mPaddingBottom:I

    iget v1, p0, mForegroundPaddingBottom:I

    add-int/2addr v0, v1

    goto :goto_e
.end method

.method private getPaddingTopWithForeground()I
    .registers 3

    .prologue
    .line 165
    invoke-virtual {p0}, isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, mPaddingTop:I

    iget v1, p0, mForegroundPaddingTop:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_e
    return v0

    :cond_f
    iget v0, p0, mPaddingTop:I

    iget v1, p0, mForegroundPaddingTop:I

    add-int/2addr v0, v1

    goto :goto_e
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 407
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    return v0
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .registers 4
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 423
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 425
    const-string/jumbo v0, "measurement:measureAllChildren"

    iget-boolean v1, p0, mMeasureAllChildren:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 426
    const-string/jumbo v0, "padding:foregroundPaddingLeft"

    iget v1, p0, mForegroundPaddingLeft:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 427
    const-string/jumbo v0, "padding:foregroundPaddingTop"

    iget v1, p0, mForegroundPaddingTop:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 428
    const-string/jumbo v0, "padding:foregroundPaddingRight"

    iget v1, p0, mForegroundPaddingRight:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 429
    const-string/jumbo v0, "padding:foregroundPaddingBottom"

    iget v1, p0, mForegroundPaddingBottom:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 430
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 59
    invoke-virtual {p0}, generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 151
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    invoke-virtual {p0, p1}, generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 412
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 394
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 417
    const-class v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConsiderGoneChildrenWhenMeasuring()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 376
    invoke-virtual {p0}, getMeasureAllChildren()Z

    move-result v0

    return v0
.end method

.method public getMeasureAllChildren()Z
    .registers 2

    .prologue
    .line 386
    iget-boolean v0, p0, mMeasureAllChildren:Z

    return v0
.end method

.method getPaddingLeftWithForeground()I
    .registers 3

    .prologue
    .line 155
    invoke-virtual {p0}, isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, mPaddingLeft:I

    iget v1, p0, mForegroundPaddingLeft:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_e
    return v0

    :cond_f
    iget v0, p0, mPaddingLeft:I

    iget v1, p0, mForegroundPaddingLeft:I

    add-int/2addr v0, v1

    goto :goto_e
.end method

.method getPaddingRightWithForeground()I
    .registers 3

    .prologue
    .line 160
    invoke-virtual {p0}, isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_f

    iget v0, p0, mPaddingRight:I

    iget v1, p0, mForegroundPaddingRight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_e
    return v0

    :cond_f
    iget v0, p0, mPaddingRight:I

    iget v1, p0, mForegroundPaddingRight:I

    add-int/2addr v0, v1

    goto :goto_e
.end method

.method layoutChildren(IIIIZ)V
    .registers 26
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "forceLeftGravity"    # Z

    .prologue
    .line 286
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v6

    .line 288
    .local v6, "count":I
    invoke-virtual/range {p0 .. p0}, getPaddingLeftWithForeground()I

    move-result v13

    .line 289
    .local v13, "parentLeft":I
    sub-int v18, p3, p1

    invoke-virtual/range {p0 .. p0}, getPaddingRightWithForeground()I

    move-result v19

    sub-int v14, v18, v19

    .line 291
    .local v14, "parentRight":I
    invoke-direct/range {p0 .. p0}, getPaddingTopWithForeground()I

    move-result v15

    .line 292
    .local v15, "parentTop":I
    sub-int v18, p4, p2

    invoke-direct/range {p0 .. p0}, getPaddingBottomWithForeground()I

    move-result v19

    sub-int v12, v18, v19

    .line 294
    .local v12, "parentBottom":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1d
    if-ge v9, v6, :cond_bb

    .line 295
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 296
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_73

    .line 297
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 299
    .local v11, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 300
    .local v17, "width":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 305
    .local v8, "height":I
    iget v7, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 306
    .local v7, "gravity":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_4a

    .line 307
    const v7, 0x800033

    .line 310
    :cond_4a
    invoke-virtual/range {p0 .. p0}, getLayoutDirection()I

    move-result v10

    .line 311
    .local v10, "layoutDirection":I
    invoke-static {v7, v10}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    .line 312
    .local v2, "absoluteGravity":I
    and-int/lit8 v16, v7, 0x70

    .line 314
    .local v16, "verticalGravity":I
    and-int/lit8 v18, v2, 0x7

    sparse-switch v18, :sswitch_data_bc

    .line 326
    :cond_59
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v18, v0

    add-int v4, v13, v18

    .line 329
    .local v4, "childLeft":I
    :goto_5f
    sparse-switch v16, :sswitch_data_c6

    .line 341
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v5, v15, v18

    .line 344
    .local v5, "childTop":I
    :goto_68
    add-int v18, v4, v17

    add-int v19, v5, v8

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 294
    .end local v2    # "absoluteGravity":I
    .end local v4    # "childLeft":I
    .end local v5    # "childTop":I
    .end local v7    # "gravity":I
    .end local v8    # "height":I
    .end local v10    # "layoutDirection":I
    .end local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v16    # "verticalGravity":I
    .end local v17    # "width":I
    :cond_73
    add-int/lit8 v9, v9, 0x1

    goto :goto_1d

    .line 316
    .restart local v2    # "absoluteGravity":I
    .restart local v7    # "gravity":I
    .restart local v8    # "height":I
    .restart local v10    # "layoutDirection":I
    .restart local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v16    # "verticalGravity":I
    .restart local v17    # "width":I
    :sswitch_76
    sub-int v18, v14, v13

    sub-int v18, v18, v17

    div-int/lit8 v18, v18, 0x2

    add-int v18, v18, v13

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v19, v0

    sub-int v4, v18, v19

    .line 318
    .restart local v4    # "childLeft":I
    goto :goto_5f

    .line 320
    .end local v4    # "childLeft":I
    :sswitch_8b
    if-nez p5, :cond_59

    .line 321
    sub-int v18, v14, v17

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v19, v0

    sub-int v4, v18, v19

    .line 322
    .restart local v4    # "childLeft":I
    goto :goto_5f

    .line 331
    :sswitch_96
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v5, v15, v18

    .line 332
    .restart local v5    # "childTop":I
    goto :goto_68

    .line 334
    .end local v5    # "childTop":I
    :sswitch_9d
    sub-int v18, v12, v15

    sub-int v18, v18, v8

    div-int/lit8 v18, v18, 0x2

    add-int v18, v18, v15

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v19, v0

    add-int v18, v18, v19

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    .line 336
    .restart local v5    # "childTop":I
    goto :goto_68

    .line 338
    .end local v5    # "childTop":I
    :sswitch_b2
    sub-int v18, v12, v8

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    .line 339
    .restart local v5    # "childTop":I
    goto :goto_68

    .line 347
    .end local v2    # "absoluteGravity":I
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childLeft":I
    .end local v5    # "childTop":I
    .end local v7    # "gravity":I
    .end local v8    # "height":I
    .end local v10    # "layoutDirection":I
    .end local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v16    # "verticalGravity":I
    .end local v17    # "width":I
    :cond_bb
    return-void

    .line 314
    :sswitch_data_bc
    .sparse-switch
        0x1 -> :sswitch_76
        0x5 -> :sswitch_8b
    .end sparse-switch

    .line 329
    :sswitch_data_c6
    .sparse-switch
        0x10 -> :sswitch_9d
        0x30 -> :sswitch_96
        0x50 -> :sswitch_b2
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 12
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 281
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, layoutChildren(IIIIZ)V

    .line 282
    return-void
.end method

.method protected onMeasure(II)V
    .registers 26
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 180
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v11

    .line 182
    .local v11, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, v4, :cond_14

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v2, v4, :cond_cd

    :cond_14
    const/16 v18, 0x1

    .line 185
    .local v18, "measureMatchParentChildren":Z
    :goto_16
    move-object/from16 v0, p0

    iget-object v2, v0, mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 187
    const/16 v16, 0x0

    .line 188
    .local v16, "maxHeight":I
    const/16 v17, 0x0

    .line 189
    .local v17, "maxWidth":I
    const/4 v9, 0x0

    .line 191
    .local v9, "childState":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_23
    if-ge v14, v11, :cond_114

    .line 192
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 193
    .local v3, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v2, v0, mMeasureAllChildren:Z

    if-nez v2, :cond_39

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_110

    .line 194
    :cond_39
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, measureChildWithMargins(Landroid/view/View;IIII)V

    .line 195
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    .line 196
    .local v21, "vlp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v21

    instance-of v2, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v2, :cond_d1

    .line 197
    const-class v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LayoutParam is not mine.. this="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Child="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LayoutParam="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/16 v19, 0x0

    .local v19, "n":I
    :goto_84
    move/from16 v0, v19

    if-ge v0, v11, :cond_d1

    .line 199
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 200
    .local v20, "v":Landroid/view/View;
    if-eqz v20, :cond_ca

    const-class v2, Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Child("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " LayoutParam="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_ca
    add-int/lit8 v19, v19, 0x1

    goto :goto_84

    .line 182
    .end local v3    # "child":Landroid/view/View;
    .end local v9    # "childState":I
    .end local v14    # "i":I
    .end local v16    # "maxHeight":I
    .end local v17    # "maxWidth":I
    .end local v18    # "measureMatchParentChildren":Z
    .end local v19    # "n":I
    .end local v20    # "v":Landroid/view/View;
    .end local v21    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_cd
    const/16 v18, 0x0

    goto/16 :goto_16

    .restart local v3    # "child":Landroid/view/View;
    .restart local v9    # "childState":I
    .restart local v14    # "i":I
    .restart local v16    # "maxHeight":I
    .restart local v17    # "maxWidth":I
    .restart local v18    # "measureMatchParentChildren":Z
    .restart local v21    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_d1
    move-object/from16 v15, v21

    .line 203
    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 204
    .local v15, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v4, v15, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    iget v4, v15, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    move/from16 v0, v17

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 206
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v4, v15, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v15, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    move/from16 v0, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 208
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v9, v2}, combineMeasuredStates(II)I

    move-result v9

    .line 209
    if-eqz v18, :cond_110

    .line 210
    iget v2, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_109

    iget v2, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_110

    .line 212
    :cond_109
    move-object/from16 v0, p0

    iget-object v2, v0, mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .end local v15    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v21    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_110
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_23

    .line 219
    .end local v3    # "child":Landroid/view/View;
    :cond_114
    invoke-virtual/range {p0 .. p0}, getPaddingLeftWithForeground()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, getPaddingRightWithForeground()I

    move-result v4

    add-int/2addr v2, v4

    add-int v17, v17, v2

    .line 220
    invoke-direct/range {p0 .. p0}, getPaddingTopWithForeground()I

    move-result v2

    invoke-direct/range {p0 .. p0}, getPaddingBottomWithForeground()I

    move-result v4

    add-int/2addr v2, v4

    add-int v16, v16, v2

    .line 223
    invoke-virtual/range {p0 .. p0}, getSuggestedMinimumHeight()I

    move-result v2

    move/from16 v0, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 224
    invoke-virtual/range {p0 .. p0}, getSuggestedMinimumWidth()I

    move-result v2

    move/from16 v0, v17

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 227
    invoke-virtual/range {p0 .. p0}, getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 228
    .local v12, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v12, :cond_158

    .line 229
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    move/from16 v0, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 230
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    move/from16 v0, v17

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 233
    :cond_158
    move/from16 v0, v17

    move/from16 v1, p1

    invoke-static {v0, v1, v9}, resolveSizeAndState(III)I

    move-result v2

    shl-int/lit8 v4, v9, 0x10

    move/from16 v0, v16

    move/from16 v1, p2

    invoke-static {v0, v1, v4}, resolveSizeAndState(III)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, setMeasuredDimension(II)V

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 238
    const/4 v2, 0x1

    if-le v11, v2, :cond_20d

    .line 239
    const/4 v14, 0x0

    :goto_17b
    if-ge v14, v11, :cond_20d

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 241
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 244
    .local v15, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1dd

    .line 245
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, getMeasuredWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, getPaddingLeftWithForeground()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, getPaddingRightWithForeground()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v22

    .line 248
    .local v22, "width":I
    const/high16 v2, 0x40000000    # 2.0f

    move/from16 v0, v22

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 258
    .end local v22    # "width":I
    .local v10, "childWidthMeasureSpec":I
    :goto_1b3
    iget v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1f5

    .line 259
    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, getMeasuredHeight()I

    move-result v4

    invoke-direct/range {p0 .. p0}, getPaddingTopWithForeground()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct/range {p0 .. p0}, getPaddingBottomWithForeground()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 262
    .local v13, "height":I
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v13, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 271
    .end local v13    # "height":I
    .local v8, "childHeightMeasureSpec":I
    :goto_1d7
    invoke-virtual {v3, v10, v8}, Landroid/view/View;->measure(II)V

    .line 239
    add-int/lit8 v14, v14, 0x1

    goto :goto_17b

    .line 251
    .end local v8    # "childHeightMeasureSpec":I
    .end local v10    # "childWidthMeasureSpec":I
    :cond_1dd
    invoke-virtual/range {p0 .. p0}, getPaddingLeftWithForeground()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, getPaddingRightWithForeground()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move/from16 v0, p1

    invoke-static {v0, v2, v4}, getChildMeasureSpec(III)I

    move-result v10

    .restart local v10    # "childWidthMeasureSpec":I
    goto :goto_1b3

    .line 265
    :cond_1f5
    invoke-direct/range {p0 .. p0}, getPaddingTopWithForeground()I

    move-result v2

    invoke-direct/range {p0 .. p0}, getPaddingBottomWithForeground()I

    move-result v4

    add-int/2addr v2, v4

    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v4

    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    move/from16 v0, p2

    invoke-static {v0, v2, v4}, getChildMeasureSpec(III)I

    move-result v8

    .restart local v8    # "childHeightMeasureSpec":I
    goto :goto_1d7

    .line 274
    .end local v3    # "child":Landroid/view/View;
    .end local v8    # "childHeightMeasureSpec":I
    .end local v10    # "childWidthMeasureSpec":I
    .end local v15    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_20d
    return-void
.end method

.method public setForegroundGravity(I)V
    .registers 7
    .param p1, "foregroundGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 120
    invoke-virtual {p0}, getForegroundGravity()I

    move-result v2

    if-eq v2, p1, :cond_36

    .line 121
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setForegroundGravity(I)V

    .line 124
    invoke-virtual {p0}, getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 125
    .local v0, "foreground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, getForegroundGravity()I

    move-result v2

    const/16 v3, 0x77

    if-ne v2, v3, :cond_37

    if-eqz v0, :cond_37

    .line 126
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 127
    .local v1, "padding":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 128
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, p0, mForegroundPaddingLeft:I

    .line 129
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, p0, mForegroundPaddingTop:I

    .line 130
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, p0, mForegroundPaddingRight:I

    .line 131
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iput v2, p0, mForegroundPaddingBottom:I

    .line 140
    .end local v1    # "padding":Landroid/graphics/Rect;
    :cond_33
    :goto_33
    invoke-virtual {p0}, requestLayout()V

    .line 142
    .end local v0    # "foreground":Landroid/graphics/drawable/Drawable;
    :cond_36
    return-void

    .line 134
    .restart local v0    # "foreground":Landroid/graphics/drawable/Drawable;
    :cond_37
    iput v4, p0, mForegroundPaddingLeft:I

    .line 135
    iput v4, p0, mForegroundPaddingTop:I

    .line 136
    iput v4, p0, mForegroundPaddingRight:I

    .line 137
    iput v4, p0, mForegroundPaddingBottom:I

    goto :goto_33
.end method

.method public setMeasureAllChildren(Z)V
    .registers 2
    .param p1, "measureAll"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 360
    iput-boolean p1, p0, mMeasureAllChildren:Z

    .line 361
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .prologue
    .line 399
    const/4 v0, 0x0

    return v0
.end method
