.class Landroid/widget/HoverPopupWindow$HoverPopupContainer;
.super Landroid/widget/FrameLayout;
.source "HoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/HoverPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverPopupContainer"
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "HoverPopupContainer"


# instance fields
.field private final DEFAULT_BG_OUTLINE_THICKNESS:F

.field private final DEFAULT_BG_PADDING:F

.field private POPUPSTATE_CENTER:I

.field private POPUPSTATE_LEFT:I

.field private POPUPSTATE_RIGHT:I

.field private ani:Landroid/view/animation/Animation;

.field private isFHmoveAnimation:Z

.field private mAnimationAreaOffset:I

.field private mBGPaddingBottomPX:F

.field private mBGPaddingTopPX:F

.field private mFHPopCContext:Landroid/content/Context;

.field private mIsFHEnabled:Z

.field private mIsRingEnabled:Z

.field private mLeftLimit:I

.field private mLineEndX:I

.field private mLineEndY:I

.field private mLineOverlappedHeight:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLineStartX:I

.field private mLineStartY:I

.field private mLineThickness:I

.field private mOldLineEndX:I

.field private mOldLineEndY:I

.field protected mOverTopBoundaryEnabled:Z

.field private mPickerHeightPX:F

.field private mPickerLineColor:I

.field private mPickerLineColorOnBottom:I

.field private mPickerOutlineThicknessPX:I

.field private mPickerSpaceColor:I

.field private mPickerWidthPX:F

.field private mPopupState:I

.field private mRightLimit:I

.field private mRingDrawable:Landroid/graphics/drawable/Drawable;

.field private mRingHeight:I

.field private mRingWidth:I

.field private mTopPickerOffset:I

.field private mTotalLeftLimit:F

.field private mTotalRightLimit:F

.field private misMovetoRight:Z

.field final synthetic this$0:Landroid/widget/HoverPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V
    .registers 10
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v6, -0x40800000    # -1.0f

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 3229
    iput-object p1, p0, this$0:Landroid/widget/HoverPopupWindow;

    .line 3230
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3158
    iput v3, p0, mOldLineEndX:I

    .line 3160
    iput v3, p0, mOldLineEndY:I

    .line 3162
    iput v2, p0, mLineOverlappedHeight:I

    .line 3164
    iput v2, p0, mLineThickness:I

    .line 3166
    iput-boolean v2, p0, mIsRingEnabled:Z

    .line 3174
    iput-boolean v2, p0, mIsFHEnabled:Z

    .line 3177
    iput-boolean v2, p0, mOverTopBoundaryEnabled:Z

    .line 3180
    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, DEFAULT_BG_PADDING:F

    .line 3183
    const/high16 v1, 0x3fc00000    # 1.5f

    iput v1, p0, DEFAULT_BG_OUTLINE_THICKNESS:F

    .line 3185
    iput-boolean v2, p0, isFHmoveAnimation:Z

    .line 3187
    iput-object v5, p0, ani:Landroid/view/animation/Animation;

    .line 3189
    iput-object v5, p0, mFHPopCContext:Landroid/content/Context;

    .line 3191
    iput-boolean v2, p0, misMovetoRight:Z

    .line 3193
    iput v3, p0, mLeftLimit:I

    .line 3195
    iput v3, p0, mRightLimit:I

    .line 3197
    iput v3, p0, mPopupState:I

    .line 3199
    iput v2, p0, POPUPSTATE_RIGHT:I

    .line 3201
    const/4 v1, 0x1

    iput v1, p0, POPUPSTATE_LEFT:I

    .line 3203
    const/4 v1, 0x2

    iput v1, p0, POPUPSTATE_CENTER:I

    .line 3205
    iput v3, p0, mPickerLineColor:I

    .line 3207
    iput v3, p0, mPickerLineColorOnBottom:I

    .line 3209
    iput v3, p0, mPickerSpaceColor:I

    .line 3211
    iput v2, p0, mPickerOutlineThicknessPX:I

    .line 3213
    iput v4, p0, mPickerWidthPX:F

    .line 3215
    iput v4, p0, mPickerHeightPX:F

    .line 3217
    iput v6, p0, mBGPaddingTopPX:F

    .line 3219
    iput v6, p0, mBGPaddingBottomPX:F

    .line 3221
    iput v2, p0, mTopPickerOffset:I

    .line 3223
    const/16 v1, 0x64

    iput v1, p0, mAnimationAreaOffset:I

    .line 3225
    iput v4, p0, mTotalLeftLimit:F

    .line 3227
    iput v4, p0, mTotalRightLimit:F

    .line 3232
    iput-object p2, p0, mFHPopCContext:Landroid/content/Context;

    .line 3233
    iget v1, p0, POPUPSTATE_CENTER:I

    iput v1, p0, mPopupState:I

    .line 3236
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3237
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x162

    const v2, -0xb88f7e

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, mPickerLineColor:I

    .line 3238
    const/16 v1, 0x163

    const v2, -0xa57f6f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, mPickerLineColorOnBottom:I

    .line 3239
    const/16 v1, 0x164

    const v2, -0xd0a99c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, mPickerSpaceColor:I

    .line 3241
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 3243
    iput v6, p0, mBGPaddingBottomPX:F

    iput v6, p0, mBGPaddingTopPX:F

    .line 3245
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050311

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mPickerOutlineThicknessPX:I

    .line 3246
    # getter for: Landroid/widget/HoverPopupWindow;->TW:F
    invoke-static {p1}, Landroid/widget/HoverPopupWindow;->access$2100(Landroid/widget/HoverPopupWindow;)F

    move-result v1

    invoke-virtual {p1, v1, v5}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, mPickerWidthPX:F

    .line 3247
    # getter for: Landroid/widget/HoverPopupWindow;->H:F
    invoke-static {p1}, Landroid/widget/HoverPopupWindow;->access$2200(Landroid/widget/HoverPopupWindow;)F

    move-result v1

    invoke-virtual {p1, v1, v5}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, mPickerHeightPX:F

    .line 3248
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 30
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 3345
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3351
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_13

    .line 3815
    :cond_12
    :goto_12
    return-void

    .line 3355
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, mRingDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_24

    .line 3356
    const v2, 0x1080375

    const v3, -0x866e57

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, setGuideLine(II)V

    .line 3360
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsRingEnabled:Z

    if-eqz v2, :cond_ee

    .line 3361
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3362
    move-object/from16 v0, p0

    iget v2, v0, mLineEndX:I

    move-object/from16 v0, p0

    iget v3, v0, mRingWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, mLineEndY:I

    move-object/from16 v0, p0

    iget v4, v0, mRingHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3364
    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsFHEnabled:Z

    if-nez v2, :cond_59

    .line 3365
    move-object/from16 v0, p0

    iget-object v2, v0, mRingDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3367
    :cond_59
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 3369
    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsFHEnabled:Z

    if-nez v2, :cond_9a

    .line 3370
    move-object/from16 v0, p0

    iget v2, v0, mLineStartY:I

    move-object/from16 v0, p0

    iget v3, v0, mLineEndY:I

    if-ge v2, v3, :cond_b5

    .line 3371
    move-object/from16 v0, p0

    iget v2, v0, mLineStartX:I

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, mLineStartY:I

    move-object/from16 v0, p0

    iget v4, v0, mLineOverlappedHeight:I

    sub-int/2addr v2, v4

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, mLineEndX:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, mLineEndY:I

    move-object/from16 v0, p0

    iget v6, v0, mRingHeight:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v2, v6

    move-object/from16 v0, p0

    iget v6, v0, mLineOverlappedHeight:I

    add-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 3385
    :cond_9a
    :goto_9a
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2300(Landroid/widget/HoverPopupWindow;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 3391
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    iget-object v2, v2, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v2, :cond_112

    .line 3392
    const-string v2, "HoverPopupContainer"

    const-string v3, "HoverPopupContainer.draw(): mContentView is null, return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 3373
    :cond_b5
    move-object/from16 v0, p0

    iget v2, v0, mLineStartY:I

    move-object/from16 v0, p0

    iget v3, v0, mLineEndY:I

    if-le v2, v3, :cond_9a

    .line 3374
    move-object/from16 v0, p0

    iget v2, v0, mLineStartX:I

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, mLineStartY:I

    move-object/from16 v0, p0

    iget v4, v0, mLineOverlappedHeight:I

    add-int/2addr v2, v4

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, mLineEndX:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, mLineEndY:I

    move-object/from16 v0, p0

    iget v6, v0, mRingHeight:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v2, v6

    move-object/from16 v0, p0

    iget v6, v0, mLineOverlappedHeight:I

    sub-int/2addr v2, v6

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_9a

    .line 3381
    :cond_ee
    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsFHEnabled:Z

    if-nez v2, :cond_9a

    .line 3382
    move-object/from16 v0, p0

    iget v2, v0, mLineStartX:I

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget v2, v0, mLineStartY:I

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, mLineEndX:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, mLineEndY:I

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_9a

    .line 3396
    :cond_112
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2400(Landroid/widget/HoverPopupWindow;)Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-result-object v2

    if-eqz v2, :cond_130

    .line 3397
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2400(Landroid/widget/HoverPopupWindow;)Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-result-object v3

    invoke-virtual {v3}, getWidth()I

    move-result v3

    int-to-float v3, v3

    # setter for: Landroid/widget/HoverPopupWindow;->W:F
    invoke-static {v2, v3}, Landroid/widget/HoverPopupWindow;->access$2502(Landroid/widget/HoverPopupWindow;F)F

    .line 3399
    :cond_130
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    if-nez v2, :cond_195

    .line 3403
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    new-instance v3, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->W:F
    invoke-static {v4}, Landroid/widget/HoverPopupWindow;->access$2500(Landroid/widget/HoverPopupWindow;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, mPickerHeightPX:F

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    # setter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2, v3}, Landroid/widget/HoverPopupWindow;->access$2602(Landroid/widget/HoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 3404
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    new-instance v3, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->W:F
    invoke-static {v4}, Landroid/widget/HoverPopupWindow;->access$2500(Landroid/widget/HoverPopupWindow;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, mPickerWidthPX:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    # setter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2, v3}, Landroid/widget/HoverPopupWindow;->access$2702(Landroid/widget/HoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 3405
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    new-instance v3, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->W:F
    invoke-static {v4}, Landroid/widget/HoverPopupWindow;->access$2500(Landroid/widget/HoverPopupWindow;)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, mPickerWidthPX:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    # setter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2, v3}, Landroid/widget/HoverPopupWindow;->access$2802(Landroid/widget/HoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    .line 3411
    :cond_195
    move-object/from16 v0, p0

    iget v2, v0, mBGPaddingTopPX:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_20f

    move-object/from16 v0, p0

    iget v2, v0, mBGPaddingBottomPX:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_20f

    .line 3414
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105030f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, mBGPaddingTopPX:F

    .line 3415
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050310

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, mBGPaddingBottomPX:F

    .line 3418
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v2

    if-lez v2, :cond_20f

    .line 3419
    const/16 v19, 0x0

    .line 3420
    .local v19, "d":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 3421
    .local v17, "child":Landroid/view/View;
    if-eqz v17, :cond_1e4

    .line 3422
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 3425
    :cond_1e4
    if-eqz v19, :cond_20f

    .line 3426
    new-instance v27, Landroid/graphics/Rect;

    invoke-direct/range {v27 .. v27}, Landroid/graphics/Rect;-><init>()V

    .line 3427
    .local v27, "r":Landroid/graphics/Rect;
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3428
    move-object/from16 v0, v27

    iget v2, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v27

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_20f

    .line 3429
    move-object/from16 v0, p0

    iget v2, v0, mBGPaddingTopPX:F

    move-object/from16 v0, v27

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v27

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, mBGPaddingTopPX:F

    .line 3436
    .end local v17    # "child":Landroid/view/View;
    .end local v19    # "d":Landroid/graphics/drawable/Drawable;
    .end local v27    # "r":Landroid/graphics/Rect;
    :cond_20f
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, getLineEndX()I

    move-result v3

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3437
    move-object/from16 v0, p0

    iget-boolean v2, v0, mOverTopBoundaryEnabled:Z

    if-nez v2, :cond_7cf

    .line 3438
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, getLineStartY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, mPickerHeightPX:F

    move-object/from16 v0, p0

    iget v5, v0, mBGPaddingBottomPX:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 3444
    :goto_23d
    const-string v2, "americano"

    const-string/jumbo v3, "ro.build.scafe"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7ea

    .line 3447
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3453
    :goto_268
    move-object/from16 v0, p0

    iget-boolean v2, v0, mOverTopBoundaryEnabled:Z

    if-nez v2, :cond_808

    .line 3454
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, getLineStartY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, mBGPaddingBottomPX:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, mPickerOutlineThicknessPX:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 3460
    :goto_288
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, mPickerWidthPX:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3461
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iput v3, v2, Landroid/graphics/PointF;->y:F

    .line 3476
    move-object/from16 v0, p0

    iget-boolean v2, v0, mOverTopBoundaryEnabled:Z

    if-eqz v2, :cond_824

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$000(Landroid/widget/HoverPopupWindow;)Z

    move-result v2

    if-eqz v2, :cond_824

    .line 3480
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    iget-object v2, v2, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v18, v2, 0x2

    .line 3481
    .local v18, "contentViewHalfWidth":I
    move-object/from16 v0, p0

    iget v2, v0, mLeftLimit:I

    add-int v2, v2, v18

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, mTotalLeftLimit:F

    .line 3482
    move-object/from16 v0, p0

    iget v2, v0, mRightLimit:I

    sub-int v2, v2, v18

    add-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, mTotalRightLimit:F

    .line 3496
    .end local v18    # "contentViewHalfWidth":I
    :goto_2e9
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$400(Landroid/widget/HoverPopupWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/HoverPopupWindow;

    iget-object v3, v3, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v20, v2, 0x2

    .line 3505
    .local v20, "movelength":I
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v3, v0, mTotalLeftLimit:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3f9

    move-object/from16 v0, p0

    iget v2, v0, mLeftLimit:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3f9

    move-object/from16 v0, p0

    iget v2, v0, mPopupState:I

    move-object/from16 v0, p0

    iget v3, v0, POPUPSTATE_CENTER:I

    if-ne v2, v3, :cond_3f9

    .line 3508
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v0, v2, Landroid/graphics/PointF;->x:F

    move/from16 v26, v0

    .line 3509
    .local v26, "previousRightX":F
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v0, v2, Landroid/graphics/PointF;->x:F

    move/from16 v25, v0

    .line 3510
    .local v25, "previousLeftX":F
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v0, v2, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    .line 3518
    .local v24, "previousCenterX":F
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, mLeftLimit:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPickerPadding:F
    invoke-static {v4}, Landroid/widget/HoverPopupWindow;->access$2900(Landroid/widget/HoverPopupWindow;)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3519
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, mPickerWidthPX:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3520
    const-string v2, "americano"

    const-string/jumbo v3, "ro.build.scafe"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_856

    .line 3523
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3530
    :goto_3a5
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$400(Landroid/widget/HoverPopupWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mContainerLeftOnWindow:I
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$3000(Landroid/widget/HoverPopupWindow;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_874

    if-gtz v20, :cond_874

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$000(Landroid/widget/HoverPopupWindow;)Z

    move-result v2

    if-eqz v2, :cond_874

    .line 3536
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move/from16 v0, v26

    iput v0, v2, Landroid/graphics/PointF;->x:F

    .line 3537
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move/from16 v0, v25

    iput v0, v2, Landroid/graphics/PointF;->x:F

    .line 3538
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move/from16 v0, v24

    iput v0, v2, Landroid/graphics/PointF;->x:F

    .line 3553
    .end local v24    # "previousCenterX":F
    .end local v25    # "previousLeftX":F
    .end local v26    # "previousRightX":F
    :cond_3f9
    :goto_3f9
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v3, v0, mTotalRightLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_507

    move-object/from16 v0, p0

    iget v2, v0, mRightLimit:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_507

    move-object/from16 v0, p0

    iget v2, v0, mPopupState:I

    move-object/from16 v0, p0

    iget v3, v0, POPUPSTATE_CENTER:I

    if-ne v2, v3, :cond_507

    .line 3556
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v0, v2, Landroid/graphics/PointF;->x:F

    move/from16 v26, v0

    .line 3557
    .restart local v26    # "previousRightX":F
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v0, v2, Landroid/graphics/PointF;->x:F

    move/from16 v25, v0

    .line 3558
    .restart local v25    # "previousLeftX":F
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v0, v2, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    .line 3566
    .restart local v24    # "previousCenterX":F
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, mRightLimit:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPickerPadding:F
    invoke-static {v4}, Landroid/widget/HoverPopupWindow;->access$2900(Landroid/widget/HoverPopupWindow;)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3567
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, mPickerWidthPX:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3568
    const-string v2, "americano"

    const-string/jumbo v3, "ro.build.scafe"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88d

    .line 3571
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3579
    :goto_49c
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$400(Landroid/widget/HoverPopupWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mContainerLeftOnWindow:I
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$3000(Landroid/widget/HoverPopupWindow;)I

    move-result v3

    sub-int/2addr v2, v3

    if-lez v2, :cond_8ab

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$400(Landroid/widget/HoverPopupWindow;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mContainerLeftOnWindow:I
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$3000(Landroid/widget/HoverPopupWindow;)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_8ab

    if-gtz v20, :cond_8ab

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$000(Landroid/widget/HoverPopupWindow;)Z

    move-result v2

    if-eqz v2, :cond_8ab

    .line 3586
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move/from16 v0, v26

    iput v0, v2, Landroid/graphics/PointF;->x:F

    .line 3587
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move/from16 v0, v25

    iput v0, v2, Landroid/graphics/PointF;->x:F

    .line 3588
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move/from16 v0, v24

    iput v0, v2, Landroid/graphics/PointF;->x:F

    .line 3599
    .end local v24    # "previousCenterX":F
    .end local v25    # "previousLeftX":F
    .end local v26    # "previousRightX":F
    :cond_507
    :goto_507
    move-object/from16 v0, p0

    iget v2, v0, mPopupState:I

    move-object/from16 v0, p0

    iget v3, v0, POPUPSTATE_RIGHT:I

    if-ne v2, v3, :cond_541

    .line 3609
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v3, v0, mTotalLeftLimit:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8c4

    move-object/from16 v0, p0

    iget v2, v0, mLeftLimit:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_8c4

    .line 3611
    move-object/from16 v0, p0

    iget v2, v0, POPUPSTATE_CENTER:I

    move-object/from16 v0, p0

    iput v2, v0, mPopupState:I

    .line 3613
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3100(Landroid/widget/HoverPopupWindow;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, POPUPSTATE_CENTER:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3635
    :cond_541
    :goto_541
    move-object/from16 v0, p0

    iget v2, v0, mPopupState:I

    move-object/from16 v0, p0

    iget v3, v0, POPUPSTATE_LEFT:I

    if-ne v2, v3, :cond_57b

    .line 3645
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v3, v0, mTotalRightLimit:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_940

    move-object/from16 v0, p0

    iget v2, v0, mRightLimit:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_940

    .line 3647
    move-object/from16 v0, p0

    iget v2, v0, POPUPSTATE_CENTER:I

    move-object/from16 v0, p0

    iput v2, v0, mPopupState:I

    .line 3648
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3100(Landroid/widget/HoverPopupWindow;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, POPUPSTATE_CENTER:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3684
    :cond_57b
    :goto_57b
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3200(Landroid/widget/HoverPopupWindow;)Z

    move-result v2

    if-nez v2, :cond_61f

    .line 3691
    const/16 v16, 0x0

    .line 3693
    .local v16, "anchorViewCenter":I
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3300(Landroid/widget/HoverPopupWindow;)Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_5b4

    .line 3694
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3300(Landroid/widget/HoverPopupWindow;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$400(Landroid/widget/HoverPopupWindow;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mContainerLeftOnWindow:I
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$3000(Landroid/widget/HoverPopupWindow;)I

    move-result v3

    sub-int v16, v2, v3

    .line 3709
    :cond_5b4
    if-eqz v16, :cond_61f

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mFullTextPopupRightLimit:I
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3400(Landroid/widget/HoverPopupWindow;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_61f

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPickerXoffset:I
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3500(Landroid/widget/HoverPopupWindow;)I

    move-result v2

    add-int v2, v2, v16

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mFullTextPopupRightLimit:I
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$3400(Landroid/widget/HoverPopupWindow;)I

    move-result v3

    if-ge v2, v3, :cond_61f

    .line 3710
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPickerXoffset:I
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$3500(Landroid/widget/HoverPopupWindow;)I

    move-result v3

    add-int v3, v3, v16

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3711
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3712
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, mPickerWidthPX:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3723
    .end local v16    # "anchorViewCenter":I
    :cond_61f
    move-object/from16 v0, p0

    iget v2, v0, mPickerOutlineThicknessPX:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_9bc

    move-object/from16 v0, p0

    iget v2, v0, mPickerOutlineThicknessPX:I

    add-int/lit8 v2, v2, 0x1

    :goto_62d
    div-int/lit8 v11, v2, 0x2

    .line 3724
    .local v11, "adjustPointer":I
    const/4 v12, 0x0

    .local v12, "adjustedLPointX":F
    const/4 v13, 0x0

    .local v13, "adjustedLPointY":F
    const/4 v14, 0x0

    .local v14, "adjustedRPointX":F
    const/4 v15, 0x0

    .line 3725
    .local v15, "adjustedRPointY":F
    move-object/from16 v0, p0

    iget v2, v0, mPickerOutlineThicknessPX:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_9de

    .line 3726
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    int-to-float v3, v11

    sub-float v12, v2, v3

    .line 3727
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    int-to-float v3, v11

    add-float v14, v2, v3

    .line 3728
    move-object/from16 v0, p0

    iget-boolean v2, v0, mOverTopBoundaryEnabled:Z

    if-nez v2, :cond_9c2

    .line 3729
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    int-to-float v3, v11

    sub-float v13, v2, v3

    .line 3730
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    int-to-float v3, v11

    sub-float v15, v2, v3

    .line 3745
    :goto_674
    move-object/from16 v0, p0

    iget-boolean v2, v0, mOverTopBoundaryEnabled:Z

    if-eqz v2, :cond_6a1

    move-object/from16 v0, p0

    iget v2, v0, mPopupState:I

    move-object/from16 v0, p0

    iget v3, v0, POPUPSTATE_CENTER:I

    if-ne v2, v3, :cond_6a1

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    iget v2, v2, Landroid/widget/HoverPopupWindow;->mPopupType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6a1

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mIsInfoPickerMoveEabled:Z
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3200(Landroid/widget/HoverPopupWindow;)Z

    move-result v2

    if-nez v2, :cond_6a1

    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$000(Landroid/widget/HoverPopupWindow;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 3750
    :cond_6a1
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 3751
    .local v9, "a":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mIsSetInfoPickerColorToAndMoreBottomImg:Z
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3600(Landroid/widget/HoverPopupWindow;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a08

    move-object/from16 v0, p0

    iget-boolean v2, v0, mOverTopBoundaryEnabled:Z

    if-nez v2, :cond_a08

    .line 3752
    const/16 v2, 0x165

    const v3, -0xa29283

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mPickerSpaceColor:I

    .line 3756
    :goto_6c9
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 3759
    new-instance v8, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v8, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 3760
    .local v8, "Pnt":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v2, v0, mPickerOutlineThicknessPX:I

    int-to-float v2, v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3761
    move-object/from16 v0, p0

    iget v2, v0, mPickerSpaceColor:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3762
    const/4 v2, 0x1

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3767
    new-instance v21, Landroid/graphics/Path;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Path;-><init>()V

    .line 3768
    .local v21, "path1":Landroid/graphics/Path;
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 3769
    move-object/from16 v0, v21

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3770
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3771
    move-object/from16 v0, v21

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3772
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Path;->close()V

    .line 3773
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3774
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 3777
    new-instance v22, Landroid/graphics/Path;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Path;-><init>()V

    .line 3778
    .local v22, "path2":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget-boolean v2, v0, mOverTopBoundaryEnabled:Z

    if-nez v2, :cond_a17

    .line 3779
    move-object/from16 v0, p0

    iget v2, v0, mPickerLineColor:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3784
    :goto_735
    move-object/from16 v0, p0

    iget v2, v0, mPickerOutlineThicknessPX:I

    int-to-float v2, v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3785
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3786
    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 3787
    move-object/from16 v0, v22

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3788
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3789
    move-object/from16 v0, v22

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3790
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Path;->close()V

    .line 3791
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 3798
    new-instance v23, Landroid/graphics/Path;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Path;-><init>()V

    .line 3799
    .local v23, "path3":Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget v2, v0, mPickerOutlineThicknessPX:I

    rem-int/lit8 v10, v2, 0x2

    .line 3800
    .local v10, "adjustLineOffset":I
    move-object/from16 v0, p0

    iget v2, v0, mPickerOutlineThicknessPX:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7a0

    .line 3801
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    int-to-float v3, v11

    sub-float v12, v2, v3

    .line 3802
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    int-to-float v3, v11

    add-float v14, v2, v3

    .line 3804
    :cond_7a0
    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3805
    move-object/from16 v0, v23

    invoke-virtual {v0, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3807
    move-object/from16 v0, p0

    iget v2, v0, mPickerOutlineThicknessPX:I

    add-int/2addr v2, v10

    int-to-float v2, v2

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3808
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3809
    move-object/from16 v0, p0

    iget v2, v0, mPickerSpaceColor:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3810
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3811
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Path;->close()V

    .line 3812
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_12

    .line 3440
    .end local v8    # "Pnt":Landroid/graphics/Paint;
    .end local v9    # "a":Landroid/content/res/TypedArray;
    .end local v10    # "adjustLineOffset":I
    .end local v11    # "adjustPointer":I
    .end local v12    # "adjustedLPointX":F
    .end local v13    # "adjustedLPointY":F
    .end local v14    # "adjustedRPointX":F
    .end local v15    # "adjustedRPointY":F
    .end local v20    # "movelength":I
    .end local v21    # "path1":Landroid/graphics/Path;
    .end local v22    # "path2":Landroid/graphics/Path;
    .end local v23    # "path3":Landroid/graphics/Path;
    :cond_7cf
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, getLineStartY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, mPickerHeightPX:F

    move-object/from16 v0, p0

    iget v5, v0, mBGPaddingTopPX:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    goto/16 :goto_23d

    .line 3451
    :cond_7ea
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    goto/16 :goto_268

    .line 3456
    :cond_808
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, getLineStartY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, mBGPaddingTopPX:F

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, mPickerOutlineThicknessPX:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->y:F

    goto/16 :goto_288

    .line 3487
    :cond_824
    move-object/from16 v0, p0

    iget v2, v0, mLeftLimit:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPickerPadding:F
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2900(Landroid/widget/HoverPopupWindow;)F

    move-result v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, mAnimationAreaOffset:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, mTotalLeftLimit:F

    .line 3488
    move-object/from16 v0, p0

    iget v2, v0, mRightLimit:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPickerPadding:F
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2900(Landroid/widget/HoverPopupWindow;)F

    move-result v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, mAnimationAreaOffset:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, mTotalRightLimit:F

    goto/16 :goto_2e9

    .line 3527
    .restart local v20    # "movelength":I
    .restart local v24    # "previousCenterX":F
    .restart local v25    # "previousLeftX":F
    .restart local v26    # "previousRightX":F
    :cond_856
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    goto/16 :goto_3a5

    .line 3544
    :cond_874
    move-object/from16 v0, p0

    iget v2, v0, POPUPSTATE_RIGHT:I

    move-object/from16 v0, p0

    iput v2, v0, mPopupState:I

    .line 3545
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3100(Landroid/widget/HoverPopupWindow;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, POPUPSTATE_RIGHT:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_3f9

    .line 3575
    :cond_88d
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    goto/16 :goto_49c

    .line 3594
    :cond_8ab
    move-object/from16 v0, p0

    iget v2, v0, POPUPSTATE_LEFT:I

    move-object/from16 v0, p0

    iput v2, v0, mPopupState:I

    .line 3595
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$3100(Landroid/widget/HoverPopupWindow;)Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, POPUPSTATE_LEFT:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_507

    .line 3620
    .end local v24    # "previousCenterX":F
    .end local v25    # "previousLeftX":F
    .end local v26    # "previousRightX":F
    :cond_8c4
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, mLeftLimit:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPickerPadding:F
    invoke-static {v4}, Landroid/widget/HoverPopupWindow;->access$2900(Landroid/widget/HoverPopupWindow;)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3621
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, mPickerWidthPX:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3622
    const-string v2, "americano"

    const-string/jumbo v3, "ro.build.scafe"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_922

    .line 3625
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    goto/16 :goto_541

    .line 3630
    :cond_922
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    goto/16 :goto_541

    .line 3656
    :cond_940
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, mRightLimit:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mPickerPadding:F
    invoke-static {v4}, Landroid/widget/HoverPopupWindow;->access$2900(Landroid/widget/HoverPopupWindow;)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3657
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, mPickerWidthPX:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    .line 3658
    const-string v2, "americano"

    const-string/jumbo v3, "ro.build.scafe"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_99e

    .line 3661
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    goto/16 :goto_57b

    .line 3666
    :cond_99e
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v3}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v4, v0, mPickerWidthPX:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/PointF;->x:F

    goto/16 :goto_57b

    .line 3723
    :cond_9bc
    move-object/from16 v0, p0

    iget v2, v0, mPickerOutlineThicknessPX:I

    goto/16 :goto_62d

    .line 3733
    .restart local v11    # "adjustPointer":I
    .restart local v12    # "adjustedLPointX":F
    .restart local v13    # "adjustedLPointY":F
    .restart local v14    # "adjustedRPointX":F
    .restart local v15    # "adjustedRPointY":F
    :cond_9c2
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    int-to-float v3, v11

    add-float v13, v2, v3

    .line 3734
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    int-to-float v3, v11

    add-float v15, v2, v3

    goto/16 :goto_674

    .line 3738
    :cond_9de
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v12, v2, Landroid/graphics/PointF;->x:F

    .line 3739
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v14, v2, Landroid/graphics/PointF;->x:F

    .line 3740
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v13, v2, Landroid/graphics/PointF;->y:F

    .line 3741
    move-object/from16 v0, p0

    iget-object v2, v0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;

    move-result-object v2

    iget v15, v2, Landroid/graphics/PointF;->y:F

    goto/16 :goto_674

    .line 3754
    .restart local v9    # "a":Landroid/content/res/TypedArray;
    :cond_a08
    const/16 v2, 0x164

    const v3, -0xa29283

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, mPickerSpaceColor:I

    goto/16 :goto_6c9

    .line 3782
    .restart local v8    # "Pnt":Landroid/graphics/Paint;
    .restart local v21    # "path1":Landroid/graphics/Path;
    .restart local v22    # "path2":Landroid/graphics/Path;
    :cond_a17
    move-object/from16 v0, p0

    iget v2, v0, mPickerLineColorOnBottom:I

    invoke-virtual {v8, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_735
.end method

.method public getLineEndX()I
    .registers 2

    .prologue
    .line 3307
    iget v0, p0, mLineEndX:I

    return v0
.end method

.method public getLineOverlappedHeight()I
    .registers 2

    .prologue
    .line 3315
    iget v0, p0, mLineOverlappedHeight:I

    return v0
.end method

.method public getLineStartY()I
    .registers 2

    .prologue
    .line 3311
    iget v0, p0, mLineStartY:I

    return v0
.end method

.method protected pointInValidPaddingArea(II)Z
    .registers 6
    .param p1, "localX"    # I
    .param p2, "localY"    # I

    .prologue
    .line 3818
    const/4 v0, 0x0

    .line 3820
    .local v0, "ret":Z
    invoke-virtual {p0}, getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v2

    if-le v1, v2, :cond_19

    .line 3821
    invoke-virtual {p0}, getWidth()I

    move-result v1

    if-ge p1, v1, :cond_18

    invoke-virtual {p0}, getPaddingTop()I

    move-result v1

    if-gt p2, v1, :cond_18

    .line 3822
    const/4 v0, 0x1

    .line 3832
    :cond_18
    :goto_18
    return v0

    .line 3824
    :cond_19
    invoke-virtual {p0}, getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v2

    if-ge v1, v2, :cond_36

    .line 3825
    invoke-virtual {p0}, getWidth()I

    move-result v1

    if-ge p1, v1, :cond_18

    invoke-virtual {p0}, getHeight()I

    move-result v1

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt p2, v1, :cond_18

    .line 3826
    const/4 v0, 0x1

    goto :goto_18

    .line 3829
    :cond_36
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public setFHGuideLineForCotainer(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 3251
    iput-boolean p1, p0, mIsFHEnabled:Z

    .line 3252
    return-void
.end method

.method public setFHmoveAnimation(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 3255
    iput-boolean p1, p0, isFHmoveAnimation:Z

    .line 3256
    return-void
.end method

.method public setFHmoveAnimationOffset(I)V
    .registers 5
    .param p1, "offset"    # I

    .prologue
    .line 3338
    const-string v0, "HoverPopupContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HoverPopupContainer(): setFHmoveAnimationOffset: offset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3339
    iput p1, p0, mAnimationAreaOffset:I

    .line 3340
    const-string v0, "HoverPopupContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HoverPopupContainer(): setFHmoveAnimationOffset: mAnimationAreaOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mAnimationAreaOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3341
    return-void
.end method

.method public setGuideLine(II)V
    .registers 7
    .param p1, "drawableId"    # I
    .param p2, "lineColor"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3276
    iget-object v0, p0, this$0:Landroid/widget/HoverPopupWindow;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, mLineOverlappedHeight:I

    .line 3277
    iget-object v0, p0, this$0:Landroid/widget/HoverPopupWindow;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1, v2}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, mLineThickness:I

    .line 3279
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, mRingDrawable:Landroid/graphics/drawable/Drawable;

    .line 3280
    iget-object v0, p0, mRingDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3d

    .line 3281
    iget-object v0, p0, mRingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, mRingWidth:I

    .line 3282
    iget-object v0, p0, mRingDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, mRingHeight:I

    .line 3283
    iget-object v0, p0, mRingDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, mRingWidth:I

    iget v2, p0, mRingHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3286
    :cond_3d
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, mLinePaint:Landroid/graphics/Paint;

    .line 3287
    iget-object v0, p0, mLinePaint:Landroid/graphics/Paint;

    iget v1, p0, mLineThickness:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 3288
    iget-object v0, p0, mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 3289
    iget-object v0, p0, mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3290
    iget-object v0, p0, mLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3291
    return-void
.end method

.method public setGuideLine(IIIIZZ)V
    .registers 7
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "endX"    # I
    .param p4, "endY"    # I
    .param p5, "ringEnabled"    # Z
    .param p6, "fHEnabled"    # Z

    .prologue
    .line 3320
    iput p1, p0, mLineStartX:I

    .line 3321
    iput p2, p0, mLineStartY:I

    .line 3322
    iput p3, p0, mLineEndX:I

    .line 3323
    iput p4, p0, mLineEndY:I

    .line 3324
    iput-boolean p5, p0, mIsRingEnabled:Z

    .line 3325
    iput-boolean p6, p0, mIsFHEnabled:Z

    .line 3326
    return-void
.end method

.method public setGuideLineEndPoint(II)V
    .registers 3
    .param p1, "pointX"    # I
    .param p2, "pointY"    # I

    .prologue
    .line 3329
    iput p1, p0, mLineEndX:I

    .line 3330
    iput p2, p0, mLineEndY:I

    .line 3331
    return-void
.end method

.method public setOverTopForCotainer(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 3264
    const-string v0, "HoverPopupContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HoverPopupContainer.setOverTopForCotainer: enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3265
    iput-boolean p1, p0, mOverTopBoundaryEnabled:Z

    .line 3266
    const-string v0, "HoverPopupContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HoverPopupContainer.setOverTopForCotainer: mOverTopBoundaryEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mOverTopBoundaryEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3267
    return-void
.end method

.method public setOverTopPickerOffset(I)V
    .registers 2
    .param p1, "offset"    # I

    .prologue
    .line 3270
    iput p1, p0, mTopPickerOffset:I

    .line 3271
    return-void
.end method

.method public setPickerLimit(II)V
    .registers 3
    .param p1, "leftlimit"    # I
    .param p2, "rightlimit"    # I

    .prologue
    .line 3259
    iput p1, p0, mLeftLimit:I

    .line 3260
    iput p2, p0, mRightLimit:I

    .line 3261
    return-void
.end method

.method public setPopupState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 3334
    iput p1, p0, mPopupState:I

    .line 3335
    return-void
.end method

.method public updateDecoration()V
    .registers 1

    .prologue
    .line 3296
    invoke-virtual {p0}, invalidate()V

    .line 3304
    return-void
.end method
