.class public Lcom/android/systemui/recents/views/TaskViewHeader;
.super Landroid/widget/FrameLayout;
.source "TaskViewHeader.java"


# static fields
.field static sHighlightPaint:Landroid/graphics/Paint;


# instance fields
.field mActivityDescription:Landroid/widget/TextView;

.field mApplicationIcon:Landroid/widget/ImageView;

.field mApplicationInfo:Ljava/lang/String;

.field mBackground:Landroid/graphics/drawable/RippleDrawable;

.field mBackgroundColor:I

.field mBackgroundColorDrawable:Landroid/graphics/drawable/GradientDrawable;

.field mCloseContentDescription:Ljava/lang/String;

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mCurrentPrimaryColor:I

.field mCurrentPrimaryColorIsDark:Z

.field mDarkDismissDrawable:Landroid/graphics/drawable/Drawable;

.field mDarkLockTaskDrawable:Landroid/graphics/drawable/Drawable;

.field mDarkMultiWindowDrawable:Landroid/graphics/drawable/Drawable;

.field mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field mDimLayerPaint:Landroid/graphics/Paint;

.field mDismissButton:Landroid/widget/ImageView;

.field mDismissContentDescription:Ljava/lang/String;

.field mFocusAnimator:Landroid/animation/AnimatorSet;

.field mLayersDisabled:Z

.field mLightDismissDrawable:Landroid/graphics/drawable/Drawable;

.field mLightLockTaskDrawable:Landroid/graphics/drawable/Drawable;

.field mLightMultiWindowDrawable:Landroid/graphics/drawable/Drawable;

.field mLockTaskButton:Landroid/widget/ImageView;

.field mMoveTaskButton:Landroid/widget/ImageView;

.field mMultiWindowButton:Landroid/widget/ImageView;

.field private mSsp:Lcom/android/systemui/recents/misc/SystemServicesProxy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 142
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 145
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 127
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    .line 128
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 151
    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 153
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSsp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 154
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/TaskViewHeader;->setWillNotDraw(Z)V

    .line 155
    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->setClipToOutline(Z)V

    .line 156
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewHeader$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/TaskViewHeader$1;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 164
    sget-boolean v0, Lcom/android/systemui/recents/Constants$Features;->EnableSecondViewExpanded:Z

    if-eqz v0, :cond_2

    .line 165
    const v0, 0x7f0203d3

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightDismissDrawable:Landroid/graphics/drawable/Drawable;

    .line 166
    const v0, 0x7f0203d2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkDismissDrawable:Landroid/graphics/drawable/Drawable;

    .line 171
    :goto_0
    const v0, 0x7f0d0227

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissContentDescription:Ljava/lang/String;

    .line 174
    const v0, 0x7f0d0233

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCloseContentDescription:Ljava/lang/String;

    .line 180
    const v0, 0x7f0203dd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightMultiWindowDrawable:Landroid/graphics/drawable/Drawable;

    .line 181
    const v0, 0x7f0203dc

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkMultiWindowDrawable:Landroid/graphics/drawable/Drawable;

    .line 186
    sget-boolean v0, Lcom/android/systemui/recents/Constants$Features;->EnableRecentsAppLock:Z

    if-eqz v0, :cond_0

    .line 187
    const v0, 0x7f0202df

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightLockTaskDrawable:Landroid/graphics/drawable/Drawable;

    .line 188
    const v0, 0x7f0202de

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkLockTaskDrawable:Landroid/graphics/drawable/Drawable;

    .line 204
    :cond_0
    sget-object v0, Lcom/android/systemui/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 205
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    .line 206
    sget-object v0, Lcom/android/systemui/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 207
    sget-object v0, Lcom/android/systemui/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewHighlightPx:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 208
    sget-object v0, Lcom/android/systemui/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewHighlightColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    sget-object v0, Lcom/android/systemui/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 210
    sget-object v0, Lcom/android/systemui/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 214
    :cond_1
    const v0, 0x7f0d02f6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationInfo:Ljava/lang/String;

    .line 217
    return-void

    .line 168
    :cond_2
    const v0, 0x7f0203d5

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightDismissDrawable:Landroid/graphics/drawable/Drawable;

    .line 169
    const v0, 0x7f0203d4

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkDismissDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0
.end method


# virtual methods
.method public disableLayersForOneFrame()V
    .locals 2

    .prologue
    .line 668
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLayersDisabled:Z

    .line 671
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->setLayerType(ILandroid/graphics/Paint;)V

    .line 672
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 654
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 655
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLayersDisabled:Z

    if-eqz v0, :cond_0

    .line 656
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLayersDisabled:Z

    .line 657
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewHeader$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/TaskViewHeader$3;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 665
    :cond_0
    return-void
.end method

.method getSecondaryColor(IZ)I
    .locals 2
    .param p1, "primaryColor"    # I
    .param p2, "useLightOverlayColor"    # Z

    .prologue
    .line 311
    if-eqz p2, :cond_0

    const/4 v0, -0x1

    .line 312
    .local v0, "overlayColor":I
    :goto_0
    const v1, 0x3f4ccccd    # 0.8f

    invoke-static {p1, v0, v1}, Lcom/android/systemui/recents/misc/Utilities;->getColorWithOverlay(IIF)I

    move-result v1

    return v1

    .line 311
    .end local v0    # "overlayColor":I
    :cond_0
    const/high16 v0, -0x1000000

    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1
    .param p1, "extraSpace"    # I

    .prologue
    .line 649
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 283
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewHighlightPx:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v9, v0

    .line 284
    .local v9, "offset":F
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->taskViewRoundedCornerRadiusPx:I

    int-to-float v5, v0

    .line 285
    .local v5, "radius":F
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    move-result v8

    .line 286
    .local v8, "count":I
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 287
    neg-float v1, v9

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    add-float v3, v0, v9

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    add-float v4, v0, v5

    sget-object v7, Lcom/android/systemui/recents/views/TaskViewHeader;->sHighlightPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 289
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 290
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 222
    const v0, 0x7f0e0201

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    .line 223
    const v0, 0x7f0e0202

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    .line 224
    const v0, 0x7f0e0203

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    .line 225
    const v0, 0x7f0e0207

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    .line 229
    const v0, 0x7f0e0206

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMultiWindowButton:Landroid/widget/ImageView;

    .line 230
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMultiWindowButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    .line 235
    sget-boolean v0, Lcom/android/systemui/recents/Constants$Features;->EnableRecentsAppLock:Z

    if-eqz v0, :cond_0

    .line 236
    const v0, 0x7f0e0204

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    .line 237
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setHoverPopupType(I)V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/recents/views/TaskViewHeader$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/views/TaskViewHeader$2;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 269
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0203e1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackgroundColorDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 272
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0203e0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    .line 274
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/RippleDrawable;

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    .line 275
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 276
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/RippleDrawable;->getId(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackgroundColorDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/RippleDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 277
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 278
    return-void
.end method

.method onTaskViewFocusChanged(ZZ)V
    .locals 13
    .param p1, "focused"    # Z
    .param p2, "animateFocusedState"    # Z

    .prologue
    .line 677
    if-nez p2, :cond_0

    .line 761
    :goto_0
    return-void

    .line 679
    :cond_0
    const/4 v3, 0x0

    .line 680
    .local v3, "isRunning":Z
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    if-eqz v9, :cond_1

    .line 681
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v3

    .line 682
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    invoke-static {v9}, Lcom/android/systemui/recents/misc/Utilities;->cancelAnimationWithoutCallbacks(Landroid/animation/Animator;)V

    .line 685
    :cond_1
    if-eqz p1, :cond_2

    .line 686
    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackgroundColor:I

    .line 687
    .local v2, "currentColor":I
    iget v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCurrentPrimaryColor:I

    iget-boolean v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCurrentPrimaryColorIsDark:Z

    invoke-virtual {p0, v9, v10}, Lcom/android/systemui/recents/views/TaskViewHeader;->getSecondaryColor(IZ)I

    move-result v6

    .line 688
    .local v6, "secondaryColor":I
    const/4 v9, 0x3

    new-array v7, v9, [[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [I

    aput-object v10, v7, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    const v12, 0x101009e

    aput v12, v10, v11

    aput-object v10, v7, v9

    const/4 v9, 0x2

    const/4 v10, 0x1

    new-array v10, v10, [I

    const/4 v11, 0x0

    const v12, 0x10100a7

    aput v12, v10, v11

    aput-object v10, v7, v9

    .line 693
    .local v7, "states":[[I
    const/4 v9, 0x3

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    .line 698
    .local v5, "newStates":[I
    const/4 v9, 0x3

    new-array v1, v9, [I

    const/4 v9, 0x0

    aput v2, v1, v9

    const/4 v9, 0x1

    aput v6, v1, v9

    const/4 v9, 0x2

    aput v6, v1, v9

    .line 703
    .local v1, "colors":[I
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    new-instance v10, Landroid/content/res/ColorStateList;

    invoke-direct {v10, v7, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 704
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v9, v5}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 706
    iget v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCurrentPrimaryColor:I

    iget-boolean v10, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCurrentPrimaryColorIsDark:Z

    invoke-virtual {p0, v9, v10}, Lcom/android/systemui/recents/views/TaskViewHeader;->getSecondaryColor(IZ)I

    move-result v4

    .line 707
    .local v4, "lightPrimaryColor":I
    new-instance v9, Landroid/animation/ArgbEvaluator;

    invoke-direct {v9}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 709
    .local v0, "backgroundColor":Landroid/animation/ValueAnimator;
    new-instance v9, Lcom/android/systemui/recents/views/TaskViewHeader$4;

    invoke-direct {v9, p0}, Lcom/android/systemui/recents/views/TaskViewHeader$4;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 715
    new-instance v9, Lcom/android/systemui/recents/views/TaskViewHeader$5;

    invoke-direct {v9, p0}, Lcom/android/systemui/recents/views/TaskViewHeader$5;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 723
    const/4 v9, -0x1

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 724
    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 726
    const-string v9, "translationZ"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/high16 v12, 0x41700000    # 15.0f

    aput v12, v10, v11

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 727
    .local v8, "translation":Landroid/animation/ObjectAnimator;
    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 728
    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 730
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    .line 731
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 732
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v10, 0x96

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 733
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v10, 0x2ee

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 734
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 736
    .end local v0    # "backgroundColor":Landroid/animation/ValueAnimator;
    .end local v1    # "colors":[I
    .end local v2    # "currentColor":I
    .end local v4    # "lightPrimaryColor":I
    .end local v5    # "newStates":[I
    .end local v6    # "secondaryColor":I
    .end local v7    # "states":[[I
    .end local v8    # "translation":Landroid/animation/ObjectAnimator;
    :cond_2
    if-eqz v3, :cond_3

    .line 738
    iget v2, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackgroundColor:I

    .line 739
    .restart local v2    # "currentColor":I
    new-instance v9, Landroid/animation/ArgbEvaluator;

    invoke-direct {v9}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCurrentPrimaryColor:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 741
    .restart local v0    # "backgroundColor":Landroid/animation/ValueAnimator;
    new-instance v9, Lcom/android/systemui/recents/views/TaskViewHeader$6;

    invoke-direct {v9, p0}, Lcom/android/systemui/recents/views/TaskViewHeader$6;-><init>(Lcom/android/systemui/recents/views/TaskViewHeader;)V

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 750
    const-string v9, "translationZ"

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 752
    .restart local v8    # "translation":Landroid/animation/ObjectAnimator;
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    .line 753
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    const/4 v10, 0x2

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 754
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v10, 0x96

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 755
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mFocusAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 757
    .end local v0    # "backgroundColor":Landroid/animation/ValueAnimator;
    .end local v2    # "currentColor":I
    .end local v8    # "translation":Landroid/animation/ObjectAnimator;
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackground:Landroid/graphics/drawable/RippleDrawable;

    const/4 v10, 0x0

    new-array v10, v10, [I

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 758
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/systemui/recents/views/TaskViewHeader;->setTranslationZ(F)V

    goto/16 :goto_0

    .line 693
    nop

    :array_0
    .array-data 4
        0x0
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public rebindToTask(Lcom/android/systemui/recents/model/Task;)V
    .locals 9
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 319
    iget-object v3, p1, Lcom/android/systemui/recents/model/Task;->activityIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_7

    .line 320
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    iget-object v6, p1, Lcom/android/systemui/recents/model/Task;->activityIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 324
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p1, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 325
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    iget-object v6, p1, Lcom/android/systemui/recents/model/Task;->contentDescription:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 330
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    .line 332
    .local v0, "existingBgColor":I
    :goto_1
    iget v3, p1, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    if-eq v0, v3, :cond_2

    .line 333
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackgroundColorDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v6, p1, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    invoke-virtual {v3, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 334
    iget v3, p1, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    iput v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mBackgroundColor:I

    .line 337
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationInfo:Ljava/lang/String;

    new-array v7, v5, [Ljava/lang/Object;

    const-string v8, ""

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 339
    iget v3, p1, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    iput v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCurrentPrimaryColor:I

    .line 340
    iget-boolean v3, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    iput-boolean v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCurrentPrimaryColorIsDark:Z

    .line 341
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mActivityDescription:Landroid/widget/TextView;

    iget-boolean v3, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewLightTextColor:I

    :goto_2
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 343
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    iget-boolean v3, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightDismissDrawable:Landroid/graphics/drawable/Drawable;

    :goto_3
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 345
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mCloseContentDescription:Ljava/lang/String;

    new-array v7, v5, [Ljava/lang/Object;

    iget-object v8, p1, Lcom/android/systemui/recents/model/Task;->contentDescription:Ljava/lang/String;

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->multiStackEnabled:Z

    if-eqz v3, :cond_b

    move v3, v4

    :goto_4
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 348
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->multiStackEnabled:Z

    if-eqz v3, :cond_3

    .line 349
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->updateResizeTaskBarIcon(Lcom/android/systemui/recents/model/Task;)V

    .line 353
    :cond_3
    sget-boolean v3, Lcom/android/systemui/recents/Constants$Features;->EnableRecentsAppLock:Z

    if-eqz v3, :cond_4

    .line 354
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    iget-boolean v3, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightLockTaskDrawable:Landroid/graphics/drawable/Drawable;

    :goto_5
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 368
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMultiWindowButton:Landroid/widget/ImageView;

    iget-boolean v3, p1, Lcom/android/systemui/recents/model/Task;->useLightOnPrimaryColor:Z

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLightMultiWindowDrawable:Landroid/graphics/drawable/Drawable;

    :goto_6
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 372
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v3}, Lcom/android/systemui/recents/RecentsConfiguration;->showTaskViewHeaderIcon()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 375
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v2, v3, Lcom/android/systemui/recents/RecentsConfiguration;->mIsMultiWindowSettingEnabled:Z

    .line 376
    .local v2, "isMultiWindowEnabled":Z
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "easy_mode_switch"

    const/4 v7, -0x2

    invoke-static {v3, v6, v5, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_e

    move v1, v5

    .line 377
    .local v1, "isEasyModeEnabled":Z
    :goto_7
    if-eqz v2, :cond_f

    iget-boolean v3, p1, Lcom/android/systemui/recents/model/Task;->isMultiWindowVisible:Z

    if-eqz v3, :cond_f

    if-nez v1, :cond_f

    .line 378
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMultiWindowButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 386
    :goto_8
    sget-boolean v3, Lcom/android/systemui/recents/Constants$Features;->EnableRecentsAppLock:Z

    if-eqz v3, :cond_5

    .line 387
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/systemui/recents/model/Task;->isTaskLocked(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 388
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 389
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 390
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d04a7

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 419
    :cond_5
    :goto_9
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 425
    .end local v1    # "isEasyModeEnabled":Z
    .end local v2    # "isMultiWindowEnabled":Z
    :cond_6
    return-void

    .line 321
    .end local v0    # "existingBgColor":I
    :cond_7
    iget-object v3, p1, Lcom/android/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 322
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    iget-object v6, p1, Lcom/android/systemui/recents/model/Task;->applicationIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_8
    move v0, v4

    .line 330
    goto/16 :goto_1

    .line 341
    .restart local v0    # "existingBgColor":I
    :cond_9
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->taskBarViewDarkTextColor:I

    goto/16 :goto_2

    .line 343
    :cond_a
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkDismissDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_3

    .line 347
    :cond_b
    const/4 v3, 0x4

    goto/16 :goto_4

    .line 354
    :cond_c
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkLockTaskDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5

    .line 368
    :cond_d
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDarkMultiWindowDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_6

    .restart local v2    # "isMultiWindowEnabled":Z
    :cond_e
    move v1, v4

    .line 376
    goto :goto_7

    .line 380
    .restart local v1    # "isEasyModeEnabled":Z
    :cond_f
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMultiWindowButton:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_8

    .line 393
    :cond_10
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 394
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 395
    iget-object v3, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d04a8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_9
.end method

.method resetNoUserInteractionState()V
    .locals 2

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 530
    return-void
.end method

.method setDimAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    const/4 v1, 0x0

    .line 302
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-static {p1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    .line 303
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 304
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLayersDisabled:Z

    if-nez v0, :cond_0

    .line 305
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDimLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recents/views/TaskViewHeader;->setLayerType(ILandroid/graphics/Paint;)V

    .line 307
    :cond_0
    return-void
.end method

.method setLockTaskBtn(Z)V
    .locals 4
    .param p1, "lock"    # Z

    .prologue
    const/4 v3, 0x0

    .line 589
    if-eqz p1, :cond_0

    .line 590
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 591
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d04a7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 600
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 601
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 602
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 603
    return-void

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    .line 596
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d04a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method setNoUserInteractionState()V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->showTaskViewHeaderIcon()Z

    move-result v0

    if-nez v0, :cond_1

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 520
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 522
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 523
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0
.end method

.method setNoUserInteractionStateForLockTask(Z)V
    .locals 1
    .param p1, "lock"    # Z

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mLockTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->setLockTaskBtn(Z)V

    .line 586
    :cond_0
    return-void
.end method

.method setNoUserInteractionStateForMultiWindow(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x0

    .line 558
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->showTaskViewHeaderIcon()Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    :goto_0
    return-void

    .line 561
    :cond_0
    if-eqz p1, :cond_1

    .line 562
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMultiWindowButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 563
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMultiWindowButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 564
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMultiWindowButton:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 565
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMultiWindowButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_0

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMultiWindowButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 568
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMultiWindowButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_0
.end method

.method startLaunchMultiWindowAnimation()V
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->showTaskViewHeaderIcon()Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    :cond_0
    return-void
.end method

.method startLaunchTaskDismissAnimation()V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->showTaskViewHeaderIcon()Z

    move-result v0

    if-nez v0, :cond_1

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto :goto_0
.end method

.method startNoUserInteractionAnimation()V
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->showTaskViewHeaderIcon()Z

    move-result v0

    if-nez v0, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mDismissButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method startNoUserInteractionAnimationForLockTask(Z)V
    .locals 1
    .param p1, "lock"    # Z

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->showTaskViewHeaderIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->setLockTaskBtn(Z)V

    .line 579
    :cond_0
    return-void
.end method

.method startNoUserInteractionAnimationForMultiWindow(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x0

    .line 541
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->showTaskViewHeaderIcon()Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    :goto_0
    return-void

    .line 545
    :cond_0
    if-eqz p1, :cond_1

    .line 546
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMultiWindowButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 547
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMultiWindowButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMultiWindowButton:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 549
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMultiWindowButton:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_0

    .line 551
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMultiWindowButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMultiWindowButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_0
.end method

.method unbindFromTask()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mApplicationIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 463
    return-void
.end method

.method updateResizeTaskBarIcon(Lcom/android/systemui/recents/model/Task;)V
    .locals 11
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 429
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSsp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget v10, p1, Lcom/android/systemui/recents/model/Task;->displayId:I

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect(I)Landroid/graphics/Rect;

    move-result-object v1

    .line 430
    .local v1, "display":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mSsp:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v10, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v10, v10, Lcom/android/systemui/recents/model/Task$TaskKey;->stackId:I

    invoke-virtual {v9, v10}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v5

    .line 431
    .local v5, "taskRect":Landroid/graphics/Rect;
    const v3, 0x7f020481

    .line 432
    .local v3, "resId":I
    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 433
    :cond_0
    const v3, 0x7f02065a

    .line 457
    :cond_1
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewHeader;->mMoveTaskButton:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 458
    return-void

    .line 435
    :cond_2
    iget v9, v1, Landroid/graphics/Rect;->top:I

    iget v10, v5, Landroid/graphics/Rect;->top:I

    if-ne v9, v10, :cond_3

    move v6, v7

    .line 436
    .local v6, "top":Z
    :goto_1
    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    if-ne v9, v10, :cond_4

    move v0, v7

    .line 437
    .local v0, "bottom":Z
    :goto_2
    iget v9, v1, Landroid/graphics/Rect;->left:I

    iget v10, v5, Landroid/graphics/Rect;->left:I

    if-ne v9, v10, :cond_5

    move v2, v7

    .line 438
    .local v2, "left":Z
    :goto_3
    iget v9, v1, Landroid/graphics/Rect;->right:I

    iget v10, v5, Landroid/graphics/Rect;->right:I

    if-ne v9, v10, :cond_6

    move v4, v7

    .line 439
    .local v4, "right":Z
    :goto_4
    if-eqz v6, :cond_7

    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    .line 440
    const v3, 0x7f02065b

    goto :goto_0

    .end local v0    # "bottom":Z
    .end local v2    # "left":Z
    .end local v4    # "right":Z
    .end local v6    # "top":Z
    :cond_3
    move v6, v8

    .line 435
    goto :goto_1

    .restart local v6    # "top":Z
    :cond_4
    move v0, v8

    .line 436
    goto :goto_2

    .restart local v0    # "bottom":Z
    :cond_5
    move v2, v8

    .line 437
    goto :goto_3

    .restart local v2    # "left":Z
    :cond_6
    move v4, v8

    .line 438
    goto :goto_4

    .line 441
    .restart local v4    # "right":Z
    :cond_7
    if-eqz v6, :cond_8

    if-eqz v0, :cond_8

    if-eqz v4, :cond_8

    .line 442
    const v3, 0x7f02065c

    goto :goto_0

    .line 443
    :cond_8
    if-eqz v6, :cond_9

    if-eqz v2, :cond_9

    if-eqz v4, :cond_9

    .line 444
    const v3, 0x7f02065d

    goto :goto_0

    .line 445
    :cond_9
    if-eqz v0, :cond_a

    if-eqz v2, :cond_a

    if-eqz v4, :cond_a

    .line 446
    const v3, 0x7f020657

    goto :goto_0

    .line 447
    :cond_a
    if-eqz v6, :cond_b

    if-eqz v4, :cond_b

    .line 448
    const v3, 0x7f02065f

    goto :goto_0

    .line 449
    :cond_b
    if-eqz v6, :cond_c

    if-eqz v2, :cond_c

    .line 450
    const v3, 0x7f02065e

    goto :goto_0

    .line 451
    :cond_c
    if-eqz v0, :cond_d

    if-eqz v4, :cond_d

    .line 452
    const v3, 0x7f020659

    goto :goto_0

    .line 453
    :cond_d
    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 454
    const v3, 0x7f020658

    goto :goto_0
.end method
