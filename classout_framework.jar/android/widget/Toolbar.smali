.class public Landroid/widget/Toolbar;
.super Landroid/view/ViewGroup;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;,
        Landroid/widget/Toolbar$SavedState;,
        Landroid/widget/Toolbar$LayoutParams;,
        Landroid/widget/Toolbar$OnToolbarSweepListener;,
        Landroid/widget/Toolbar$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final ATTRS:[I

.field private static final SWEEP_DISTANCE_MIN_VALUE:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "Toolbar"


# instance fields
.field private V_SWEEP_VI_DEMO:Z

.field private mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

.field private mAnimationContainer:Landroid/view/ViewGroup;

.field private mButtonGravity:I

.field private mChangedTheme:Z

.field private mCollapseButtonView:Landroid/widget/ImageButton;

.field private mCollapseDescription:Ljava/lang/CharSequence;

.field private mCollapseHandler:Landroid/os/Handler;

.field private mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private mCollapsible:Z

.field private final mContentInsets:Landroid/widget/RtlSpacingHelper;

.field private mDownPositionX:F

.field private mEatingTouch:Z

.field private mExpandResId:[I

.field private mExpandShrinkButton:Landroid/widget/ImageButton;

.field mExpandedActionView:Landroid/view/View;

.field private mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

.field private mGravity:I

.field private final mHiddenViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIsThemeDeviceDefaultFamily:Z

.field private mLogoView:Landroid/widget/ImageView;

.field private mMaxButtonHeight:I

.field private mMaxFontScale:F

.field private mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

.field private mMenuView:Landroid/widget/ActionMenuView;

.field private final mMenuViewItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

.field private mNavButtonStyle:I

.field private mNavButtonView:Landroid/widget/ImageButton;

.field private mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

.field private mOnToolbarSweepListener:Landroid/widget/Toolbar$OnToolbarSweepListener;

.field private mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

.field private mPerformToCollapse:Ljava/lang/Runnable;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private final mShowOverflowMenuRunnable:Ljava/lang/Runnable;

.field private final mShowToLeftListener:Landroid/animation/Animator$AnimatorListener;

.field private final mShowToRightListener:Landroid/animation/Animator$AnimatorListener;

.field private mShrinkResId:[I

.field private mSubtitleText:Ljava/lang/CharSequence;

.field private mSubtitleTextAppearance:I

.field private mSubtitleTextColor:I

.field private mSubtitleTextView:Landroid/widget/TextView;

.field private final mTempMargins:[I

.field private final mTempViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleMarginBottom:I

.field private mTitleMarginEnd:I

.field private mTitleMarginStart:I

.field private mTitleMarginTop:I

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextAppearance:I

.field private mTitleTextColor:I

.field private mTitleTextView:Landroid/widget/TextView;

.field private mTriangleToLeft:Landroid/view/View;

.field private mTriangleToRight:Landroid/view/View;

.field private mVIHandler:Landroid/os/Handler;

.field private mWrapper:Lcom/android/internal/widget/ToolbarWidgetWrapper;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 219
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10102eb

    aput v2, v0, v1

    sput-object v0, ATTRS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 245
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 246
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 249
    const v0, 0x10104aa

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 250
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 253
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 254
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 31
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 257
    invoke-direct/range {p0 .. p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 168
    new-instance v23, Landroid/widget/RtlSpacingHelper;

    invoke-direct/range {v23 .. v23}, Landroid/widget/RtlSpacingHelper;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mContentInsets:Landroid/widget/RtlSpacingHelper;

    .line 170
    const v23, 0x800013

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, mGravity:I

    .line 181
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mTempViews:Ljava/util/ArrayList;

    .line 184
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mHiddenViews:Ljava/util/ArrayList;

    .line 186
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mTempMargins:[I

    .line 190
    new-instance v23, Landroid/widget/Toolbar$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Toolbar$1;-><init>(Landroid/widget/Toolbar;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mMenuViewItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    .line 211
    new-instance v23, Landroid/widget/Toolbar$2;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Toolbar$2;-><init>(Landroid/widget/Toolbar;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    .line 228
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, V_SWEEP_VI_DEMO:Z

    .line 232
    new-instance v23, Landroid/os/Handler;

    invoke-direct/range {v23 .. v23}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mVIHandler:Landroid/os/Handler;

    .line 233
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mExpandShrinkButton:Landroid/widget/ImageButton;

    .line 234
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mExpandResId:[I

    .line 235
    const/16 v23, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mShrinkResId:[I

    .line 239
    const v23, 0x3f99999a    # 1.2f

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, mMaxFontScale:F

    .line 1312
    new-instance v23, Landroid/os/Handler;

    invoke-direct/range {v23 .. v23}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mCollapseHandler:Landroid/os/Handler;

    .line 1313
    new-instance v23, Landroid/widget/Toolbar$4;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Toolbar$4;-><init>(Landroid/widget/Toolbar;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mPerformToCollapse:Ljava/lang/Runnable;

    .line 1549
    new-instance v23, Landroid/widget/Toolbar$6;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Toolbar$6;-><init>(Landroid/widget/Toolbar;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mShowToLeftListener:Landroid/animation/Animator$AnimatorListener;

    .line 1565
    new-instance v23, Landroid/widget/Toolbar$7;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/Toolbar$7;-><init>(Landroid/widget/Toolbar;)V

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mShowToRightListener:Landroid/animation/Animator$AnimatorListener;

    .line 260
    new-instance v19, Landroid/util/TypedValue;

    invoke-direct/range {v19 .. v19}, Landroid/util/TypedValue;-><init>()V

    .line 261
    .local v19, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v23

    const v24, 0x11600bd

    const/16 v25, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v19

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 262
    move-object/from16 v0, v19

    iget v0, v0, Landroid/util/TypedValue;->data:I

    move/from16 v23, v0

    if-eqz v23, :cond_3ba

    const/16 v23, 0x1

    :goto_e8
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsThemeDeviceDefaultFamily:Z

    .line 264
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    const-string v24, "current_sec_active_themepackage"

    invoke-static/range {v23 .. v24}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 265
    .local v21, "themeName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsThemeDeviceDefaultFamily:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3be

    if-eqz v21, :cond_3be

    const/16 v23, 0x1

    :goto_104
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, mChangedTheme:Z

    .line 269
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, V_SWEEP_VI_DEMO:Z

    .line 270
    move-object/from16 v0, p0

    iget-boolean v0, v0, V_SWEEP_VI_DEMO:Z

    move/from16 v23, v0

    if-eqz v23, :cond_16c

    .line 271
    const-string v23, "layout_inflater"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 272
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const v23, 0x1090116

    const/16 v24, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mAnimationContainer:Landroid/view/ViewGroup;

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, mAnimationContainer:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, addView(Landroid/view/View;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, mAnimationContainer:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mTriangleToLeft:Landroid/view/View;

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, mAnimationContainer:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mTriangleToRight:Landroid/view/View;

    .line 280
    .end local v10    # "inflater":Landroid/view/LayoutInflater;
    :cond_16c
    sget-object v23, Lcom/android/internal/R$styleable;->Toolbar:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 283
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v23, 0x4

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, mTitleTextAppearance:I

    .line 284
    const/16 v23, 0x5

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, mSubtitleTextAppearance:I

    .line 285
    const/16 v23, 0x17

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, mNavButtonStyle:I

    .line 286
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, mGravity:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, mGravity:I

    .line 287
    const/16 v23, 0x18

    const/16 v24, 0x30

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, mButtonGravity:I

    .line 288
    const/16 v23, 0x11

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, mTitleMarginBottom:I

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, mTitleMarginTop:I

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, mTitleMarginEnd:I

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, mTitleMarginStart:I

    .line 291
    const/16 v23, 0x12

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v15

    .line 292
    .local v15, "marginStart":I
    if-ltz v15, :cond_210

    .line 293
    move-object/from16 v0, p0

    iput v15, v0, mTitleMarginStart:I

    .line 296
    :cond_210
    const/16 v23, 0x13

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v14

    .line 297
    .local v14, "marginEnd":I
    if-ltz v14, :cond_222

    .line 298
    move-object/from16 v0, p0

    iput v14, v0, mTitleMarginEnd:I

    .line 301
    :cond_222
    const/16 v23, 0x14

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v16

    .line 302
    .local v16, "marginTop":I
    if-ltz v16, :cond_236

    .line 303
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, mTitleMarginTop:I

    .line 306
    :cond_236
    const/16 v23, 0x15

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v13

    .line 308
    .local v13, "marginBottom":I
    if-ltz v13, :cond_248

    .line 309
    move-object/from16 v0, p0

    iput v13, v0, mTitleMarginBottom:I

    .line 312
    :cond_248
    const/16 v23, 0x16

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, mMaxButtonHeight:I

    .line 314
    const/16 v23, 0x6

    const/high16 v24, -0x80000000

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v9

    .line 317
    .local v9, "contentInsetStart":I
    const/16 v23, 0x7

    const/high16 v24, -0x80000000

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    .line 320
    .local v6, "contentInsetEnd":I
    const/16 v23, 0x8

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 322
    .local v7, "contentInsetLeft":I
    const/16 v23, 0x9

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 325
    .local v8, "contentInsetRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, mContentInsets:Landroid/widget/RtlSpacingHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7, v8}, Landroid/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 327
    const/high16 v23, -0x80000000

    move/from16 v0, v23

    if-ne v9, v0, :cond_2a1

    const/high16 v23, -0x80000000

    move/from16 v0, v23

    if-eq v6, v0, :cond_2ac

    .line 329
    :cond_2a1
    move-object/from16 v0, p0

    iget-object v0, v0, mContentInsets:Landroid/widget/RtlSpacingHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9, v6}, Landroid/widget/RtlSpacingHelper;->setRelative(II)V

    .line 332
    :cond_2ac
    const/16 v23, 0x19

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mCollapseIcon:Landroid/graphics/drawable/Drawable;

    .line 334
    move-object/from16 v0, p0

    iget-boolean v0, v0, mChangedTheme:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2dd

    move-object/from16 v0, p0

    iget-object v0, v0, mCollapseIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v23, v0

    if-eqz v23, :cond_2dd

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, mCollapseIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    check-cast v23, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/drawable/BitmapDrawable;->setAutoMirrored(Z)V

    .line 338
    :cond_2dd
    const/16 v23, 0xd

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mCollapseDescription:Ljava/lang/CharSequence;

    .line 340
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v22

    .line 341
    .local v22, "title":Ljava/lang/CharSequence;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_300

    .line 342
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, setTitle(Ljava/lang/CharSequence;)V

    .line 345
    :cond_300
    const/16 v23, 0x3

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v20

    .line 346
    .local v20, "subtitle":Ljava/lang/CharSequence;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_315

    .line 347
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, setSubtitle(Ljava/lang/CharSequence;)V

    .line 351
    :cond_315
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mPopupContext:Landroid/content/Context;

    .line 352
    const/16 v23, 0xa

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, setPopupTheme(I)V

    .line 354
    const/16 v23, 0xb

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 355
    .local v18, "navIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v18, :cond_345

    .line 356
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 359
    :cond_345
    const/16 v23, 0xc

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v17

    .line 361
    .local v17, "navDesc":Ljava/lang/CharSequence;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_35a

    .line 362
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 365
    :cond_35a
    const/16 v23, 0x2

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 366
    .local v11, "logo":Landroid/graphics/drawable/Drawable;
    if-eqz v11, :cond_369

    .line 367
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 370
    :cond_369
    const/16 v23, 0x10

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 371
    .local v12, "logoDesc":Ljava/lang/CharSequence;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_37c

    .line 372
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, setLogoDescription(Ljava/lang/CharSequence;)V

    .line 375
    :cond_37c
    const/16 v23, 0xe

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v23

    if-eqz v23, :cond_399

    .line 376
    const/16 v23, 0xe

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, setTitleTextColor(I)V

    .line 379
    :cond_399
    const/16 v23, 0xf

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v23

    if-eqz v23, :cond_3b6

    .line 380
    const/16 v23, 0xf

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, setSubtitleTextColor(I)V

    .line 382
    :cond_3b6
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 383
    return-void

    .line 262
    .end local v5    # "a":Landroid/content/res/TypedArray;
    .end local v6    # "contentInsetEnd":I
    .end local v7    # "contentInsetLeft":I
    .end local v8    # "contentInsetRight":I
    .end local v9    # "contentInsetStart":I
    .end local v11    # "logo":Landroid/graphics/drawable/Drawable;
    .end local v12    # "logoDesc":Ljava/lang/CharSequence;
    .end local v13    # "marginBottom":I
    .end local v14    # "marginEnd":I
    .end local v15    # "marginStart":I
    .end local v16    # "marginTop":I
    .end local v17    # "navDesc":Ljava/lang/CharSequence;
    .end local v18    # "navIcon":Landroid/graphics/drawable/Drawable;
    .end local v20    # "subtitle":Ljava/lang/CharSequence;
    .end local v21    # "themeName":Ljava/lang/String;
    .end local v22    # "title":Ljava/lang/CharSequence;
    :cond_3ba
    const/16 v23, 0x0

    goto/16 :goto_e8

    .line 265
    .restart local v21    # "themeName":Ljava/lang/String;
    :cond_3be
    const/16 v23, 0x0

    goto/16 :goto_104
.end method

.method static synthetic access$000(Landroid/widget/Toolbar;)Landroid/widget/Toolbar$OnMenuItemClickListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/Toolbar;

    .prologue
    .line 135
    iget-object v0, p0, mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/Toolbar;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/Toolbar;

    .prologue
    .line 135
    iget-boolean v0, p0, mIsThemeDeviceDefaultFamily:Z

    return v0
.end method

.method static synthetic access$300(Landroid/widget/Toolbar;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Landroid/widget/Toolbar;

    .prologue
    .line 135
    iget-object v0, p0, mPerformToCollapse:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/Toolbar;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/widget/Toolbar;

    .prologue
    .line 135
    iget-object v0, p0, mCollapseHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/Toolbar;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Landroid/widget/Toolbar;

    .prologue
    .line 135
    iget-object v0, p0, mTriangleToLeft:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/Toolbar;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Landroid/widget/Toolbar;

    .prologue
    .line 135
    iget-object v0, p0, mTriangleToRight:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/Toolbar;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/Toolbar;

    .prologue
    .line 135
    invoke-direct {p0}, ensureCollapseButtonView()V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/Toolbar;)Landroid/widget/ImageButton;
    .registers 2
    .param p0, "x0"    # Landroid/widget/Toolbar;

    .prologue
    .line 135
    iget-object v0, p0, mCollapseButtonView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/Toolbar;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/Toolbar;

    .prologue
    .line 135
    iget v0, p0, mButtonGravity:I

    return v0
.end method

.method private addCustomViewsWithGravity(Ljava/util/List;I)V
    .registers 10
    .param p2, "gravity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v4, 0x1

    .line 2283
    iget-boolean v6, p0, V_SWEEP_VI_DEMO:Z

    if-eqz v6, :cond_e

    iget-object v6, p0, mAnimationContainer:Landroid/view/ViewGroup;

    if-eqz v6, :cond_e

    iget-object v6, p0, mAnimationContainer:Landroid/view/ViewGroup;

    if-ne p1, v6, :cond_e

    .line 2313
    :cond_d
    return-void

    .line 2288
    :cond_e
    invoke-virtual {p0}, getLayoutDirection()I

    move-result v6

    if-ne v6, v4, :cond_4b

    .line 2289
    .local v4, "isRtl":Z
    :goto_14
    invoke-virtual {p0}, getChildCount()I

    move-result v2

    .line 2290
    .local v2, "childCount":I
    invoke-virtual {p0}, getLayoutDirection()I

    move-result v6

    invoke-static {p2, v6}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 2292
    .local v0, "absGrav":I
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2294
    if-eqz v4, :cond_4d

    .line 2295
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_27
    if-ltz v3, :cond_d

    .line 2296
    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2297
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/Toolbar$LayoutParams;

    .line 2298
    .local v5, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v6, v5, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v6, :cond_48

    invoke-direct {p0, v1}, shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_48

    iget v6, v5, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v6}, getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v0, :cond_48

    .line 2300
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2295
    :cond_48
    add-int/lit8 v3, v3, -0x1

    goto :goto_27

    .line 2288
    .end local v0    # "absGrav":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "isRtl":Z
    .end local v5    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_4b
    const/4 v4, 0x0

    goto :goto_14

    .line 2304
    .restart local v0    # "absGrav":I
    .restart local v2    # "childCount":I
    .restart local v4    # "isRtl":Z
    :cond_4d
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4e
    if-ge v3, v2, :cond_d

    .line 2305
    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2306
    .restart local v1    # "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/Toolbar$LayoutParams;

    .line 2307
    .restart local v5    # "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v6, v5, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v6, :cond_6f

    invoke-direct {p0, v1}, shouldLayout(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_6f

    iget v6, v5, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v6}, getChildHorizontalGravity(I)I

    move-result v6

    if-ne v6, v0, :cond_6f

    .line 2309
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2304
    :cond_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e
.end method

.method private addSystemView(Landroid/view/View;Z)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "allowHide"    # Z

    .prologue
    .line 1352
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1354
    .local v1, "vlp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_1c

    .line 1355
    invoke-virtual {p0}, generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1361
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    :goto_a
    const/4 v2, 0x1

    iput v2, v0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1363
    if-eqz p2, :cond_2b

    iget-object v2, p0, mExpandedActionView:Landroid/view/View;

    if-eqz v2, :cond_2b

    .line 1364
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1365
    iget-object v2, p0, mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1369
    :goto_1b
    return-void

    .line 1356
    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_1c
    invoke-virtual {p0, v1}, checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 1357
    invoke-virtual {p0, v1}, generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    .restart local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    goto :goto_a

    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_27
    move-object v0, v1

    .line 1359
    check-cast v0, Landroid/widget/Toolbar$LayoutParams;

    .restart local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    goto :goto_a

    .line 1367
    :cond_2b
    invoke-virtual {p0, p1, v0}, addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1b
.end method

.method private checkSweepAction(FF)V
    .registers 12
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v5, 0x1

    .line 1488
    invoke-virtual {p0}, hasExpandedActionView()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1489
    const-string v7, "Toolbar"

    const-string v8, "checkSweepAction - This toolbar has a ExpandedActionView."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    :cond_e
    :goto_e
    return-void

    .line 1493
    :cond_f
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 1494
    .local v4, "pm":Landroid/os/PowerManager;
    if-eqz v4, :cond_37

    .line 1495
    invoke-virtual {v4}, Landroid/os/PowerManager;->getMultipleScreenState()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2b

    invoke-virtual {v4}, Landroid/os/PowerManager;->getMultipleScreenState()I

    move-result v7

    if-ne v7, v5, :cond_35

    .line 1496
    .local v5, "subScreenOn":Z
    :cond_2b
    :goto_2b
    if-nez v5, :cond_37

    .line 1497
    const-string v7, "Toolbar"

    const-string v8, "checkSweepAction - Sub-screen is turned off. Sweep operation in the sub-screen will be ignored."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1495
    .end local v5    # "subScreenOn":Z
    :cond_35
    const/4 v5, 0x0

    goto :goto_2b

    .line 1502
    :cond_37
    iget v7, p0, mDownPositionX:F

    sub-float v2, v7, p1

    .line 1503
    .local v2, "distance":F
    const/high16 v7, 0x43fa0000    # 500.0f

    cmpl-float v7, v2, v7

    if-lez v7, :cond_81

    .line 1504
    const-string v7, "Toolbar"

    const-string v8, "checkSweepAction - Sweep to left"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    .line 1506
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_e

    .line 1507
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    .line 1508
    .local v1, "displayId":I
    new-instance v3, Lcom/samsung/android/dualscreen/DualScreenManager;

    invoke-direct {v3, v0}, Lcom/samsung/android/dualscreen/DualScreenManager;-><init>(Landroid/content/Context;)V

    .line 1509
    .local v3, "dualScreenManager":Lcom/samsung/android/dualscreen/DualScreenManager;
    sget-object v7, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v7}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v7

    if-ne v1, v7, :cond_e

    .line 1510
    sget-object v7, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v7}, Lcom/samsung/android/dualscreen/DualScreenManager;->getTopRunningTaskInfo(Lcom/samsung/android/dualscreen/DualScreen;)Lcom/samsung/android/dualscreen/TaskInfo;

    move-result-object v6

    .line 1511
    .local v6, "taskInfo":Lcom/samsung/android/dualscreen/TaskInfo;
    invoke-virtual {v6}, Lcom/samsung/android/dualscreen/TaskInfo;->isCoupled()Z

    move-result v7

    if-eqz v7, :cond_7b

    .line 1512
    sget-object v7, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v7}, Lcom/samsung/android/dualscreen/DualScreenManager;->getTopRunningTaskInfo(Lcom/samsung/android/dualscreen/DualScreen;)Lcom/samsung/android/dualscreen/TaskInfo;

    move-result-object v6

    .line 1513
    invoke-virtual {v6}, Lcom/samsung/android/dualscreen/TaskInfo;->getTaskId()I

    move-result v7

    sget-object v8, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v7, v8}, Lcom/samsung/android/dualscreen/DualScreenManager;->sendShrinkRequest(ILcom/samsung/android/dualscreen/DualScreen;)V

    goto :goto_e

    .line 1515
    :cond_7b
    sget-object v7, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v3, v7}, Lcom/samsung/android/dualscreen/DualScreenManager;->moveToScreen(Lcom/samsung/android/dualscreen/DualScreen;)V

    goto :goto_e

    .line 1524
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "displayId":I
    .end local v3    # "dualScreenManager":Lcom/samsung/android/dualscreen/DualScreenManager;
    .end local v6    # "taskInfo":Lcom/samsung/android/dualscreen/TaskInfo;
    :cond_81
    const/high16 v7, -0x3c060000    # -500.0f

    cmpg-float v7, v2, v7

    if-gez v7, :cond_e

    .line 1525
    const-string v7, "Toolbar"

    const-string v8, "checkSweepAction - Sweep to right"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    .line 1527
    .restart local v0    # "context":Landroid/content/Context;
    if-eqz v0, :cond_e

    .line 1528
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    .line 1529
    .restart local v1    # "displayId":I
    new-instance v3, Lcom/samsung/android/dualscreen/DualScreenManager;

    invoke-direct {v3, v0}, Lcom/samsung/android/dualscreen/DualScreenManager;-><init>(Landroid/content/Context;)V

    .line 1530
    .restart local v3    # "dualScreenManager":Lcom/samsung/android/dualscreen/DualScreenManager;
    sget-object v7, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v7}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v7

    if-ne v1, v7, :cond_e

    .line 1531
    sget-object v7, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v7}, Lcom/samsung/android/dualscreen/DualScreenManager;->getTopRunningTaskInfo(Lcom/samsung/android/dualscreen/DualScreen;)Lcom/samsung/android/dualscreen/TaskInfo;

    move-result-object v6

    .line 1532
    .restart local v6    # "taskInfo":Lcom/samsung/android/dualscreen/TaskInfo;
    invoke-virtual {v6}, Lcom/samsung/android/dualscreen/TaskInfo;->isCoupled()Z

    move-result v7

    if-eqz v7, :cond_c2

    .line 1533
    sget-object v7, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v7}, Lcom/samsung/android/dualscreen/DualScreenManager;->getTopRunningTaskInfo(Lcom/samsung/android/dualscreen/DualScreen;)Lcom/samsung/android/dualscreen/TaskInfo;

    move-result-object v6

    .line 1534
    invoke-virtual {v6}, Lcom/samsung/android/dualscreen/TaskInfo;->getTaskId()I

    move-result v7

    sget-object v8, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-static {v7, v8}, Lcom/samsung/android/dualscreen/DualScreenManager;->sendShrinkRequest(ILcom/samsung/android/dualscreen/DualScreen;)V

    goto/16 :goto_e

    .line 1536
    :cond_c2
    sget-object v7, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v3, v7}, Lcom/samsung/android/dualscreen/DualScreenManager;->moveToScreen(Lcom/samsung/android/dualscreen/DualScreen;)V

    goto/16 :goto_e
.end method

.method private ensureCollapseButtonView()V
    .registers 7

    .prologue
    .line 1321
    iget-object v1, p0, mCollapseButtonView:Landroid/widget/ImageButton;

    if-nez v1, :cond_55

    .line 1322
    new-instance v1, Landroid/widget/ImageButton;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, mNavButtonStyle:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, mCollapseButtonView:Landroid/widget/ImageButton;

    .line 1323
    iget-object v1, p0, mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v2, p0, mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1324
    iget-object v1, p0, mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v2, p0, mCollapseDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1325
    invoke-virtual {p0}, generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1326
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    const v1, 0x800003

    iget v2, p0, mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 1327
    const/4 v1, 0x2

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    .line 1328
    iget-object v1, p0, mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1329
    iget-object v1, p0, mCollapseButtonView:Landroid/widget/ImageButton;

    new-instance v2, Landroid/widget/Toolbar$5;

    invoke-direct {v2, p0}, Landroid/widget/Toolbar$5;-><init>(Landroid/widget/Toolbar;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1346
    iget-object v1, p0, mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040495

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1349
    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_55
    return-void
.end method

.method private ensureLogoView()V
    .registers 3

    .prologue
    .line 755
    iget-object v0, p0, mLogoView:Landroid/widget/ImageView;

    if-nez v0, :cond_f

    .line 756
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mLogoView:Landroid/widget/ImageView;

    .line 758
    :cond_f
    return-void
.end method

.method private ensureMenu()V
    .registers 4

    .prologue
    .line 1108
    invoke-direct {p0}, ensureMenuView()V

    .line 1109
    iget-object v1, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->peekMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    if-nez v1, :cond_2c

    .line 1111
    iget-object v1, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    .line 1112
    .local v0, "menu":Lcom/android/internal/view/menu/MenuBuilder;
    iget-object v1, p0, mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_1f

    .line 1113
    new-instance v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/widget/Toolbar;Landroid/widget/Toolbar$1;)V

    iput-object v1, p0, mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 1115
    :cond_1f
    iget-object v1, p0, mMenuView:Landroid/widget/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    .line 1116
    iget-object v1, p0, mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 1118
    .end local v0    # "menu":Lcom/android/internal/view/menu/MenuBuilder;
    :cond_2c
    return-void
.end method

.method private ensureMenuView()V
    .registers 6

    .prologue
    .line 1121
    iget-object v2, p0, mMenuView:Landroid/widget/ActionMenuView;

    if-nez v2, :cond_5d

    .line 1122
    new-instance v2, Landroid/widget/ActionMenuView;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, mMenuView:Landroid/widget/ActionMenuView;

    .line 1123
    iget-object v2, p0, mMenuView:Landroid/widget/ActionMenuView;

    iget v3, p0, mPopupTheme:I

    invoke-virtual {v2, v3}, Landroid/widget/ActionMenuView;->setPopupTheme(I)V

    .line 1124
    iget-object v2, p0, mMenuView:Landroid/widget/ActionMenuView;

    iget-object v3, p0, mMenuViewItemClickListener:Landroid/widget/ActionMenuView$OnMenuItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ActionMenuView;->setOnMenuItemClickListener(Landroid/widget/ActionMenuView$OnMenuItemClickListener;)V

    .line 1125
    iget-object v2, p0, mMenuView:Landroid/widget/ActionMenuView;

    iget-object v3, p0, mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    iget-object v4, p0, mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    invoke-virtual {v2, v3, v4}, Landroid/widget/ActionMenuView;->setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 1126
    invoke-virtual {p0}, generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1127
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    const v2, 0x800005

    iget v3, p0, mButtonGravity:I

    and-int/lit8 v3, v3, 0x70

    or-int/2addr v2, v3

    iput v2, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 1128
    iget-object v2, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2, v0}, Landroid/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1130
    iget-object v2, p0, mExpandShrinkButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_57

    iget-object v2, p0, mExpandShrinkButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_57

    .line 1131
    iget-object v2, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2}, Landroid/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1132
    .local v1, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    const/16 v2, 0xa8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 1133
    iget-object v2, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v2, v1}, Landroid/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1136
    .end local v1    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_57
    iget-object v2, p0, mMenuView:Landroid/widget/ActionMenuView;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, addSystemView(Landroid/view/View;Z)V

    .line 1138
    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_5d
    return-void
.end method

.method private ensureNavButtonView()V
    .registers 7

    .prologue
    .line 1300
    iget-object v1, p0, mNavButtonView:Landroid/widget/ImageButton;

    if-nez v1, :cond_30

    .line 1301
    new-instance v1, Landroid/widget/ImageButton;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, mNavButtonStyle:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, mNavButtonView:Landroid/widget/ImageButton;

    .line 1302
    invoke-virtual {p0}, generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    .line 1303
    .local v0, "lp":Landroid/widget/Toolbar$LayoutParams;
    const v1, 0x800003

    iget v2, p0, mButtonGravity:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    .line 1304
    iget-object v1, p0, mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1305
    iget-boolean v1, p0, mIsThemeDeviceDefaultFamily:Z

    if-eqz v1, :cond_30

    .line 1306
    iget-object v1, p0, mNavButtonView:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setHoverPopupType(I)V

    .line 1309
    .end local v0    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_30
    return-void
.end method

.method private getChildHorizontalGravity(I)I
    .registers 6
    .param p1, "gravity"    # I

    .prologue
    .line 2316
    invoke-virtual {p0}, getLayoutDirection()I

    move-result v2

    .line 2317
    .local v2, "ld":I
    invoke-static {p1, v2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 2318
    .local v0, "absGrav":I
    and-int/lit8 v1, v0, 0x7

    .line 2319
    .local v1, "hGrav":I
    packed-switch v1, :pswitch_data_16

    .line 2325
    :pswitch_d
    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    const/4 v3, 0x5

    :goto_11
    move v1, v3

    .end local v1    # "hGrav":I
    :pswitch_12
    return v1

    .restart local v1    # "hGrav":I
    :cond_13
    const/4 v3, 0x3

    goto :goto_11

    .line 2319
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_12
        :pswitch_d
        :pswitch_12
        :pswitch_d
        :pswitch_12
    .end packed-switch
.end method

.method private getChildTop(Landroid/view/View;I)I
    .registers 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "alignmentHeight"    # I

    .prologue
    const/4 v9, 0x0

    .line 2231
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/Toolbar$LayoutParams;

    .line 2232
    .local v3, "lp":Landroid/widget/Toolbar$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 2233
    .local v1, "childHeight":I
    if-lez p2, :cond_37

    sub-int v10, v1, p2

    div-int/lit8 v0, v10, 0x2

    .line 2234
    .local v0, "alignmentOffset":I
    :goto_11
    iget v10, v3, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v10}, getChildVerticalGravity(I)I

    move-result v10

    sparse-switch v10, :sswitch_data_62

    .line 2244
    invoke-virtual {p0}, getPaddingTop()I

    move-result v5

    .line 2245
    .local v5, "paddingTop":I
    invoke-virtual {p0}, getPaddingBottom()I

    move-result v4

    .line 2246
    .local v4, "paddingBottom":I
    invoke-virtual {p0}, getHeight()I

    move-result v2

    .line 2247
    .local v2, "height":I
    sub-int v10, v2, v5

    sub-int v6, v10, v4

    .line 2248
    .local v6, "space":I
    sub-int v10, v6, v1

    div-int/lit8 v7, v10, 0x2

    .line 2249
    .local v7, "spaceAbove":I
    iget v10, v3, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    if-ge v7, v10, :cond_4e

    .line 2250
    iget v7, v3, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    .line 2258
    :cond_34
    :goto_34
    add-int v9, v5, v7

    .end local v2    # "height":I
    .end local v4    # "paddingBottom":I
    .end local v5    # "paddingTop":I
    .end local v6    # "space":I
    .end local v7    # "spaceAbove":I
    :goto_36
    return v9

    .end local v0    # "alignmentOffset":I
    :cond_37
    move v0, v9

    .line 2233
    goto :goto_11

    .line 2236
    .restart local v0    # "alignmentOffset":I
    :sswitch_39
    invoke-virtual {p0}, getPaddingTop()I

    move-result v9

    sub-int/2addr v9, v0

    goto :goto_36

    .line 2239
    :sswitch_3f
    invoke-virtual {p0}, getHeight()I

    move-result v9

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v10

    sub-int/2addr v9, v10

    sub-int/2addr v9, v1

    iget v10, v3, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v9, v10

    sub-int/2addr v9, v0

    goto :goto_36

    .line 2252
    .restart local v2    # "height":I
    .restart local v4    # "paddingBottom":I
    .restart local v5    # "paddingTop":I
    .restart local v6    # "space":I
    .restart local v7    # "spaceAbove":I
    :cond_4e
    sub-int v10, v2, v4

    sub-int/2addr v10, v1

    sub-int/2addr v10, v7

    sub-int v8, v10, v5

    .line 2254
    .local v8, "spaceBelow":I
    iget v10, v3, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    if-ge v8, v10, :cond_34

    .line 2255
    iget v10, v3, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v10, v8

    sub-int v10, v7, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_34

    .line 2234
    :sswitch_data_62
    .sparse-switch
        0x30 -> :sswitch_39
        0x50 -> :sswitch_3f
    .end sparse-switch
.end method

.method private getChildVerticalGravity(I)I
    .registers 4
    .param p1, "gravity"    # I

    .prologue
    .line 2263
    and-int/lit8 v0, p1, 0x70

    .line 2264
    .local v0, "vgrav":I
    sparse-switch v0, :sswitch_data_a

    .line 2270
    iget v1, p0, mGravity:I

    and-int/lit8 v0, v1, 0x70

    .end local v0    # "vgrav":I
    :sswitch_9
    return v0

    .line 2264
    :sswitch_data_a
    .sparse-switch
        0x10 -> :sswitch_9
        0x30 -> :sswitch_9
        0x50 -> :sswitch_9
    .end sparse-switch
.end method

.method private getHorizontalMargins(Landroid/view/View;)I
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2334
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2335
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    .prologue
    .line 1141
    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getVerticalMargins(Landroid/view/View;)I
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2339
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2340
    .local v0, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method private getViewListMeasuredWidth(Ljava/util/List;[I)I
    .registers 16
    .param p2, "collapsingMargins"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    .prologue
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v12, 0x0

    .line 2186
    aget v0, p2, v12

    .line 2187
    .local v0, "collapseLeft":I
    const/4 v11, 0x1

    aget v1, p2, v11

    .line 2188
    .local v1, "collapseRight":I
    const/4 v10, 0x0

    .line 2189
    .local v10, "width":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 2190
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v2, :cond_3e

    .line 2191
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 2192
    .local v9, "v":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/Toolbar$LayoutParams;

    .line 2193
    .local v6, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v11, v6, Landroid/widget/Toolbar$LayoutParams;->leftMargin:I

    sub-int v4, v11, v0

    .line 2194
    .local v4, "l":I
    iget v11, v6, Landroid/widget/Toolbar$LayoutParams;->rightMargin:I

    sub-int v7, v11, v1

    .line 2195
    .local v7, "r":I
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2196
    .local v5, "leftMargin":I
    invoke-static {v12, v7}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2197
    .local v8, "rightMargin":I
    neg-int v11, v4

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2198
    neg-int v11, v7

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2199
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v11, v5

    add-int/2addr v11, v8

    add-int/2addr v10, v11

    .line 2190
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 2201
    .end local v4    # "l":I
    .end local v5    # "leftMargin":I
    .end local v6    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .end local v7    # "r":I
    .end local v8    # "rightMargin":I
    .end local v9    # "v":Landroid/view/View;
    :cond_3e
    return v10
.end method

.method private isChildOrHidden(Landroid/view/View;)Z
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 2406
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_e

    iget-object v0, p0, mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private static isCustomView(Landroid/view/View;)Z
    .registers 2
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 2372
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar$LayoutParams;

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private layoutAnimationContainer()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1943
    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1944
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1945
    return-void
.end method

.method private layoutChildLeft(Landroid/view/View;I[II)I
    .registers 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    .prologue
    const/4 v6, 0x0

    .line 2206
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar$LayoutParams;

    .line 2207
    .local v2, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v4, v2, Landroid/widget/Toolbar$LayoutParams;->leftMargin:I

    aget v5, p3, v6

    sub-int v1, v4, v5

    .line 2208
    .local v1, "l":I
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr p2, v4

    .line 2209
    neg-int v4, v1

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p3, v6

    .line 2210
    invoke-direct {p0, p1, p4}, getChildTop(Landroid/view/View;I)I

    move-result v3

    .line 2211
    .local v3, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 2212
    .local v0, "childWidth":I
    add-int v4, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1, p2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 2213
    iget v4, v2, Landroid/widget/Toolbar$LayoutParams;->rightMargin:I

    add-int/2addr v4, v0

    add-int/2addr p2, v4

    .line 2214
    return p2
.end method

.method private layoutChildRight(Landroid/view/View;I[II)I
    .registers 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "right"    # I
    .param p3, "collapsingMargins"    # [I
    .param p4, "alignmentHeight"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2219
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/Toolbar$LayoutParams;

    .line 2220
    .local v1, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v4, v1, Landroid/widget/Toolbar$LayoutParams;->rightMargin:I

    aget v5, p3, v7

    sub-int v2, v4, v5

    .line 2221
    .local v2, "r":I
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    .line 2222
    neg-int v4, v2

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p3, v7

    .line 2223
    invoke-direct {p0, p1, p4}, getChildTop(Landroid/view/View;I)I

    move-result v3

    .line 2224
    .local v3, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 2225
    .local v0, "childWidth":I
    sub-int v4, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {p1, v4, v3, p2, v5}, Landroid/view/View;->layout(IIII)V

    .line 2226
    iget v4, v1, Landroid/widget/Toolbar$LayoutParams;->leftMargin:I

    add-int/2addr v4, v0

    sub-int/2addr p2, v4

    .line 2227
    return p2
.end method

.method private measureAnimationContainer(II)V
    .registers 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 1760
    const/4 v7, 0x0

    .line 1761
    .local v7, "maxHeight":I
    const/4 v8, 0x0

    .line 1762
    .local v8, "maxWidth":I
    const/4 v6, 0x0

    .line 1764
    .local v6, "childState":I
    iget-object v0, p0, mAnimationContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_a

    .line 1783
    :goto_9
    return-void

    .line 1768
    :cond_a
    iget-object v1, p0, mAnimationContainer:Landroid/view/ViewGroup;

    .line 1770
    .local v1, "child":Landroid/view/View;
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    .line 1771
    invoke-virtual/range {v0 .. v5}, measureChildWithMargins(Landroid/view/View;IIII)V

    .line 1772
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1774
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1775
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v6, v0}, combineMeasuredStates(II)I

    move-result v6

    .line 1777
    invoke-virtual {p0}, getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1778
    invoke-virtual {p0}, getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1780
    invoke-static {v8, p1, v6}, resolveSizeAndState(III)I

    move-result v0

    shl-int/lit8 v2, v6, 0x10

    invoke-static {v7, p2, v2}, resolveSizeAndState(III)I

    move-result v2

    invoke-virtual {p0, v0, v2}, setMeasuredDimension(II)V

    goto :goto_9
.end method

.method private measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .registers 18
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "collapsingMargins"    # [I

    .prologue
    .line 1721
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1723
    .local v5, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v9, 0x0

    aget v9, p6, v9

    sub-int v3, v8, v9

    .line 1724
    .local v3, "leftDiff":I
    iget v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v9, 0x1

    aget v9, p6, v9

    sub-int v6, v8, v9

    .line 1725
    .local v6, "rightDiff":I
    const/4 v8, 0x0

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1726
    .local v4, "leftMargin":I
    const/4 v8, 0x0

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1727
    .local v7, "rightMargin":I
    add-int v2, v4, v7

    .line 1728
    .local v2, "hMargins":I
    const/4 v8, 0x0

    const/4 v9, 0x0

    neg-int v10, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, p6, v8

    .line 1729
    const/4 v8, 0x1

    const/4 v9, 0x0

    neg-int v10, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, p6, v8

    .line 1731
    iget v8, p0, mPaddingLeft:I

    iget v9, p0, mPaddingRight:I

    add-int/2addr v8, v9

    add-int/2addr v8, v2

    add-int/2addr v8, p3

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v8, v9}, getChildMeasureSpec(III)I

    move-result v1

    .line 1733
    .local v1, "childWidthMeasureSpec":I
    iget v8, p0, mPaddingTop:I

    iget v9, p0, mPaddingBottom:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    add-int v8, v8, p5

    iget v9, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v8, v9}, getChildMeasureSpec(III)I

    move-result v0

    .line 1737
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1738
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v2

    return v8
.end method

.method private measureChildConstrained(Landroid/view/View;IIIII)V
    .registers 15
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightSpec"    # I
    .param p5, "heightUsed"    # I
    .param p6, "heightConstraint"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 1696
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1698
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v5, p0, mPaddingLeft:I

    iget v6, p0, mPaddingRight:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    add-int/2addr v5, p3

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v5, v6}, getChildMeasureSpec(III)I

    move-result v2

    .line 1701
    .local v2, "childWidthSpec":I
    iget v5, p0, mPaddingTop:I

    iget v6, p0, mPaddingBottom:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v6

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    add-int/2addr v5, p5

    iget v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v5, v6}, getChildMeasureSpec(III)I

    move-result v1

    .line 1705
    .local v1, "childHeightSpec":I
    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1706
    .local v0, "childHeightMode":I
    if-eq v0, v7, :cond_42

    if-ltz p6, :cond_42

    .line 1707
    if-eqz v0, :cond_46

    invoke-static {v1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {v5, p6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1710
    .local v4, "size":I
    :goto_3e
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1712
    .end local v4    # "size":I
    :cond_42
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V

    .line 1713
    return-void

    :cond_46
    move v4, p6

    .line 1707
    goto :goto_3e
.end method

.method private postShowOverflowMenu()V
    .registers 2

    .prologue
    .line 1403
    iget-object v0, p0, mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1404
    iget-object v0, p0, mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, post(Ljava/lang/Runnable;)Z

    .line 1405
    return-void
.end method

.method private shouldCollapse()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 1745
    iget-boolean v4, p0, mCollapsible:Z

    if-nez v4, :cond_6

    .line 1755
    :cond_5
    :goto_5
    return v3

    .line 1747
    :cond_6
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 1748
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_26

    .line 1749
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1750
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v0}, shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_23

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-gtz v4, :cond_5

    .line 1748
    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1755
    .end local v0    # "child":Landroid/view/View;
    :cond_26
    const/4 v3, 0x1

    goto :goto_5
.end method

.method private shouldLayout(Landroid/view/View;)Z
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2330
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_12

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method


# virtual methods
.method addChildrenForExpandedActionView()V
    .registers 4

    .prologue
    .line 2397
    iget-object v2, p0, mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2399
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_18

    .line 2400
    iget-object v2, p0, mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {p0, v2}, addView(Landroid/view/View;)V

    .line 2399
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 2402
    :cond_18
    iget-object v2, p0, mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2403
    return-void
.end method

.method public animateTriangleToLeft()V
    .registers 7

    .prologue
    .line 1585
    const-string v4, "Toolbar"

    const-string v5, "Toolbar::animateTriangleToLeft()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    iget-object v4, p0, mTriangleToLeft:Landroid/view/View;

    if-nez v4, :cond_c

    .line 1609
    :goto_b
    return-void

    .line 1591
    :cond_c
    invoke-virtual {p0}, getWidth()I

    move-result v3

    .line 1592
    .local v3, "startOffset":I
    iget-object v4, p0, mTriangleToLeft:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    neg-int v1, v4

    .line 1593
    .local v1, "endOffset":I
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v3, v4, v5

    const/4 v5, 0x1

    aput v1, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1594
    .local v0, "anim":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1596
    new-instance v2, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    .line 1597
    .local v2, "interpolator":Landroid/view/animation/interpolator/SineEaseInOut;
    const/high16 v4, 0x428c0000    # 70.0f

    invoke-virtual {v2, v4}, Landroid/view/animation/interpolator/SineEaseInOut;->getInterpolation(F)F

    .line 1598
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1600
    new-instance v4, Landroid/widget/Toolbar$8;

    invoke-direct {v4, p0}, Landroid/widget/Toolbar$8;-><init>(Landroid/widget/Toolbar;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1607
    iget-object v4, p0, mShowToLeftListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1608
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_b
.end method

.method public animateTriangleToRight()V
    .registers 7

    .prologue
    .line 1615
    const-string v4, "Toolbar"

    const-string v5, "Toolbar::animateTriangleToRight()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    iget-object v4, p0, mTriangleToRight:Landroid/view/View;

    if-nez v4, :cond_c

    .line 1639
    :goto_b
    return-void

    .line 1621
    :cond_c
    iget-object v4, p0, mTriangleToRight:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    neg-int v3, v4

    .line 1622
    .local v3, "startOffset":I
    invoke-virtual {p0}, getWidth()I

    move-result v1

    .line 1623
    .local v1, "endOffset":I
    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v3, v4, v5

    const/4 v5, 0x1

    aput v1, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 1624
    .local v0, "anim":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1626
    new-instance v2, Landroid/view/animation/interpolator/SineEaseInOut;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    .line 1627
    .local v2, "interpolator":Landroid/view/animation/interpolator/SineEaseInOut;
    const/high16 v4, 0x428c0000    # 70.0f

    invoke-virtual {v2, v4}, Landroid/view/animation/interpolator/SineEaseInOut;->getInterpolation(F)F

    .line 1628
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1630
    new-instance v4, Landroid/widget/Toolbar$9;

    invoke-direct {v4, p0}, Landroid/widget/Toolbar$9;-><init>(Landroid/widget/Toolbar;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1637
    iget-object v4, p0, mShowToRightListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1638
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_b
.end method

.method public canShowOverflowMenu()Z
    .registers 2

    .prologue
    .line 580
    invoke-virtual {p0}, getVisibility()I

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_14

    iget-object v0, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2368
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_c

    instance-of v0, p1, Landroid/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public collapseActionView()V
    .registers 3

    .prologue
    .line 785
    iget-object v1, p0, mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_b

    const/4 v0, 0x0

    .line 787
    .local v0, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_5
    if-eqz v0, :cond_a

    .line 788
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 790
    :cond_a
    return-void

    .line 785
    .end local v0    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_b
    iget-object v1, p0, mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v0, v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    goto :goto_5
.end method

.method public dismissPopupMenus()V
    .registers 2

    .prologue
    .line 656
    iget-object v0, p0, mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_9

    .line 657
    iget-object v0, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->dismissPopupMenus()V

    .line 659
    :cond_9
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 135
    invoke-virtual {p0}, generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 2363
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/Toolbar$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 135
    invoke-virtual {p0, p1}, generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 135
    invoke-virtual {p0, p1}, generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/Toolbar$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2345
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/Toolbar$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 2350
    instance-of v0, p1, Landroid/widget/Toolbar$LayoutParams;

    if-eqz v0, :cond_c

    .line 2351
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    check-cast p1, Landroid/widget/Toolbar$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/widget/Toolbar$LayoutParams;)V

    .line 2357
    :goto_b
    return-object v0

    .line 2352
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    instance-of v0, p1, Landroid/app/ActionBar$LayoutParams;

    if-eqz v0, :cond_18

    .line 2353
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    check-cast p1, Landroid/app/ActionBar$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_b

    .line 2354
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_18
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_24

    .line 2355
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_b

    .line 2357
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_24
    new-instance v0, Landroid/widget/Toolbar$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b
.end method

.method public getContentInsetEnd()I
    .registers 2

    .prologue
    .line 1238
    iget-object v0, p0, mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Landroid/widget/RtlSpacingHelper;->getEnd()I

    move-result v0

    return v0
.end method

.method public getContentInsetLeft()I
    .registers 2

    .prologue
    .line 1277
    iget-object v0, p0, mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Landroid/widget/RtlSpacingHelper;->getLeft()I

    move-result v0

    return v0
.end method

.method public getContentInsetRight()I
    .registers 2

    .prologue
    .line 1296
    iget-object v0, p0, mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Landroid/widget/RtlSpacingHelper;->getRight()I

    move-result v0

    return v0
.end method

.method public getContentInsetStart()I
    .registers 2

    .prologue
    .line 1219
    iget-object v0, p0, mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v0}, Landroid/widget/RtlSpacingHelper;->getStart()I

    move-result v0

    return v0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 713
    iget-object v0, p0, mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    iget-object v0, p0, mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 751
    iget-object v0, p0, mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    iget-object v0, p0, mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 2

    .prologue
    .line 1082
    invoke-direct {p0}, ensureMenu()V

    .line 1083
    iget-object v0, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 959
    iget-object v0, p0, mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_b

    iget-object v0, p0, mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 1056
    iget-object v0, p0, mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_b

    iget-object v0, p0, mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method getOuterActionMenuPresenter()Landroid/widget/ActionMenuPresenter;
    .registers 2

    .prologue
    .line 2432
    iget-object v0, p0, mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 1103
    invoke-direct {p0}, ensureMenu()V

    .line 1104
    iget-object v0, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getPopupContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 2436
    iget-object v0, p0, mPopupContext:Landroid/content/Context;

    return-object v0
.end method

.method public getPopupTheme()I
    .registers 2

    .prologue
    .line 556
    iget v0, p0, mPopupTheme:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 854
    iget-object v0, p0, mSubtitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 798
    iget-object v0, p0, mTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getWrapper()Lcom/android/internal/widget/DecorToolbar;
    .registers 3

    .prologue
    .line 2377
    iget-object v0, p0, mWrapper:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    if-nez v0, :cond_c

    .line 2378
    new-instance v0, Lcom/android/internal/widget/ToolbarWidgetWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ToolbarWidgetWrapper;-><init>(Landroid/widget/Toolbar;Z)V

    iput-object v0, p0, mWrapper:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    .line 2380
    :cond_c
    iget-object v0, p0, mWrapper:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    return-object v0
.end method

.method public hasExpandedActionView()Z
    .registers 2

    .prologue
    .line 771
    iget-object v0, p0, mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_c

    iget-object v0, p0, mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hideOverflowMenu()Z
    .registers 2

    .prologue
    .line 613
    iget-object v0, p0, mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_e

    iget-object v0, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public inflateMenu(I)V
    .registers 4
    .param p1, "resId"    # I

    .prologue
    .line 1153
    invoke-direct {p0}, getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0}, getMenu()Landroid/view/Menu;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1154
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .registers 2

    .prologue
    .line 595
    iget-object v0, p0, mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_e

    iget-object v0, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    .prologue
    .line 590
    iget-object v0, p0, mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_e

    iget-object v0, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isTitleTruncated()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 663
    iget-object v4, p0, mTitleTextView:Landroid/widget/TextView;

    if-nez v4, :cond_6

    .line 678
    :cond_5
    :goto_5
    return v3

    .line 667
    :cond_6
    iget-object v4, p0, mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 668
    .local v2, "titleLayout":Landroid/text/Layout;
    if-eqz v2, :cond_5

    .line 672
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 673
    .local v1, "lineCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_13
    if-ge v0, v1, :cond_5

    .line 674
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_1d

    .line 675
    const/4 v3, 0x1

    goto :goto_5

    .line 673
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_13
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v5, 0x0

    .line 507
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 512
    iget-boolean v3, p0, mIsThemeDeviceDefaultFamily:Z

    if-eqz v3, :cond_2b

    .line 513
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, ATTRS:[I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 514
    .local v2, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 515
    .local v0, "height":I
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 517
    invoke-virtual {p0}, getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 518
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 519
    invoke-virtual {p0, v1}, setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    iput v0, p0, mMaxButtonHeight:I

    .line 522
    invoke-virtual {p0, v0}, setMinimumHeight(I)V

    .line 526
    .end local v0    # "height":I
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "ta":Landroid/content/res/TypedArray;
    :cond_2b
    iget-object v3, p0, mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v3, :cond_34

    .line 527
    iget-object v3, p0, mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v3, p1}, Landroid/widget/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 530
    :cond_34
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 1409
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1410
    iget-object v0, p0, mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1411
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1463
    iget-boolean v0, p0, V_SWEEP_VI_DEMO:Z

    if-eqz v0, :cond_28

    .line 1464
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_62

    .line 1480
    const-string v0, "Toolbar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInterceptTouchEvent - ELSE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1484
    :cond_28
    :goto_28
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 1466
    :pswitch_2d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v0, v1}, checkSweepAction(FF)V

    .line 1467
    const-string v0, "Toolbar"

    const-string/jumbo v1, "onInterceptTouchEvent - ACTION_UP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 1470
    :pswitch_41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, mDownPositionX:F

    .line 1471
    const-string v0, "Toolbar"

    const-string/jumbo v1, "onInterceptTouchEvent - ACTION_DOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 1474
    :pswitch_50
    const-string v0, "Toolbar"

    const-string/jumbo v1, "onInterceptTouchEvent - ACTION_MOVE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 1477
    :pswitch_59
    const-string v0, "Toolbar"

    const-string/jumbo v1, "onInterceptTouchEvent - ACTION_CANCEL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 1464
    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_41
        :pswitch_2d
        :pswitch_50
        :pswitch_59
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 56
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1950
    invoke-virtual/range {p0 .. p0}, getLayoutDirection()I

    move-result v46

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_334

    const/16 v16, 0x1

    .line 1951
    .local v16, "isRtl":Z
    :goto_e
    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v45

    .line 1952
    .local v45, "width":I
    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v14

    .line 1953
    .local v14, "height":I
    invoke-virtual/range {p0 .. p0}, getPaddingLeft()I

    move-result v24

    .line 1954
    .local v24, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, getPaddingRight()I

    move-result v25

    .line 1955
    .local v25, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, getPaddingTop()I

    move-result v26

    .line 1956
    .local v26, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, getPaddingBottom()I

    move-result v23

    .line 1957
    .local v23, "paddingBottom":I
    move/from16 v20, v24

    .line 1958
    .local v20, "left":I
    sub-int v29, v45, v25

    .line 1960
    .local v29, "right":I
    move-object/from16 v0, p0

    iget-object v12, v0, mTempMargins:[I

    .line 1961
    .local v12, "collapsingMargins":[I
    const/16 v46, 0x0

    const/16 v47, 0x1

    const/16 v48, 0x0

    aput v48, v12, v47

    aput v48, v12, v46

    .line 1964
    invoke-virtual/range {p0 .. p0}, getMinimumHeight()I

    move-result v5

    .line 1967
    .local v5, "alignmentHeight":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, V_SWEEP_VI_DEMO:Z

    move/from16 v46, v0

    if-eqz v46, :cond_47

    .line 1968
    invoke-direct/range {p0 .. p0}, layoutAnimationContainer()V

    .line 1972
    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, shouldLayout(Landroid/view/View;)Z

    move-result v46

    if-eqz v46, :cond_69

    .line 1973
    if-eqz v16, :cond_338

    .line 1974
    move-object/from16 v0, p0

    iget-object v0, v0, mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v12, v5}, layoutChildRight(Landroid/view/View;I[II)I

    move-result v29

    .line 1982
    :cond_69
    :goto_69
    move-object/from16 v0, p0

    iget-object v0, v0, mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, shouldLayout(Landroid/view/View;)Z

    move-result v46

    if-eqz v46, :cond_8b

    .line 1983
    if-eqz v16, :cond_34a

    .line 1984
    move-object/from16 v0, p0

    iget-object v0, v0, mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v12, v5}, layoutChildRight(Landroid/view/View;I[II)I

    move-result v29

    .line 1992
    :cond_8b
    :goto_8b
    move-object/from16 v0, p0

    iget-object v0, v0, mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, shouldLayout(Landroid/view/View;)Z

    move-result v46

    if-eqz v46, :cond_ad

    .line 1993
    if-eqz v16, :cond_35c

    .line 1994
    move-object/from16 v0, p0

    iget-object v0, v0, mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12, v5}, layoutChildLeft(Landroid/view/View;I[II)I

    move-result v20

    .line 2002
    :cond_ad
    :goto_ad
    const/16 v46, 0x0

    const/16 v47, 0x0

    invoke-virtual/range {p0 .. p0}, getContentInsetLeft()I

    move-result v48

    sub-int v48, v48, v20

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v47

    aput v47, v12, v46

    .line 2003
    const/16 v46, 0x1

    const/16 v47, 0x0

    invoke-virtual/range {p0 .. p0}, getContentInsetRight()I

    move-result v48

    sub-int v49, v45, v25

    sub-int v49, v49, v29

    sub-int v48, v48, v49

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v47

    aput v47, v12, v46

    .line 2004
    invoke-virtual/range {p0 .. p0}, getContentInsetLeft()I

    move-result v46

    move/from16 v0, v20

    move/from16 v1, v46

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 2005
    sub-int v46, v45, v25

    invoke-virtual/range {p0 .. p0}, getContentInsetRight()I

    move-result v47

    sub-int v46, v46, v47

    move/from16 v0, v29

    move/from16 v1, v46

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v29

    .line 2007
    move-object/from16 v0, p0

    iget-object v0, v0, mExpandedActionView:Landroid/view/View;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, shouldLayout(Landroid/view/View;)Z

    move-result v46

    if-eqz v46, :cond_10f

    .line 2008
    if-eqz v16, :cond_36e

    .line 2009
    move-object/from16 v0, p0

    iget-object v0, v0, mExpandedActionView:Landroid/view/View;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v12, v5}, layoutChildRight(Landroid/view/View;I[II)I

    move-result v29

    .line 2017
    :cond_10f
    :goto_10f
    move-object/from16 v0, p0

    iget-object v0, v0, mLogoView:Landroid/widget/ImageView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, shouldLayout(Landroid/view/View;)Z

    move-result v46

    if-eqz v46, :cond_131

    .line 2018
    if-eqz v16, :cond_380

    .line 2019
    move-object/from16 v0, p0

    iget-object v0, v0, mLogoView:Landroid/widget/ImageView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v12, v5}, layoutChildRight(Landroid/view/View;I[II)I

    move-result v29

    .line 2027
    :cond_131
    :goto_131
    move-object/from16 v0, p0

    iget-object v0, v0, mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, shouldLayout(Landroid/view/View;)Z

    move-result v18

    .line 2028
    .local v18, "layoutTitle":Z
    move-object/from16 v0, p0

    iget-object v0, v0, mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, shouldLayout(Landroid/view/View;)Z

    move-result v17

    .line 2029
    .local v17, "layoutSubtitle":Z
    const/16 v39, 0x0

    .line 2030
    .local v39, "titleHeight":I
    if-eqz v18, :cond_179

    .line 2031
    move-object/from16 v0, p0

    iget-object v0, v0, mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/Toolbar$LayoutParams;

    .line 2032
    .local v22, "lp":Landroid/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v47

    add-int v46, v46, v47

    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v47, v0

    add-int v46, v46, v47

    add-int v39, v39, v46

    .line 2034
    .end local v22    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_179
    if-eqz v17, :cond_1a3

    .line 2035
    move-object/from16 v0, p0

    iget-object v0, v0, mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/Toolbar$LayoutParams;

    .line 2036
    .restart local v22    # "lp":Landroid/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v47

    add-int v46, v46, v47

    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v47, v0

    add-int v46, v46, v47

    add-int v39, v39, v46

    .line 2039
    .end local v22    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_1a3
    if-nez v18, :cond_1a7

    if-eqz v17, :cond_2e9

    .line 2041
    :cond_1a7
    if-eqz v18, :cond_392

    move-object/from16 v0, p0

    iget-object v0, v0, mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v43, v0

    .line 2042
    .local v43, "topChild":Landroid/view/View;
    :goto_1af
    if-eqz v17, :cond_39a

    move-object/from16 v0, p0

    iget-object v6, v0, mSubtitleTextView:Landroid/widget/TextView;

    .line 2043
    .local v6, "bottomChild":Landroid/view/View;
    :goto_1b5
    invoke-virtual/range {v43 .. v43}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v44

    check-cast v44, Landroid/widget/Toolbar$LayoutParams;

    .line 2044
    .local v44, "toplp":Landroid/widget/Toolbar$LayoutParams;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/Toolbar$LayoutParams;

    .line 2045
    .local v7, "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    if-eqz v18, :cond_1cf

    move-object/from16 v0, p0

    iget-object v0, v0, mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v46

    if-gtz v46, :cond_1dd

    :cond_1cf
    if-eqz v17, :cond_3a0

    move-object/from16 v0, p0

    iget-object v0, v0, mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v46

    if-lez v46, :cond_3a0

    :cond_1dd
    const/16 v38, 0x1

    .line 2048
    .local v38, "titleHasWidth":Z
    :goto_1df
    move-object/from16 v0, p0

    iget v0, v0, mGravity:I

    move/from16 v46, v0

    and-int/lit8 v46, v46, 0x70

    sparse-switch v46, :sswitch_data_5f0

    .line 2054
    sub-int v46, v14, v26

    sub-int v31, v46, v23

    .line 2055
    .local v31, "space":I
    sub-int v46, v31, v39

    div-int/lit8 v32, v46, 0x2

    .line 2056
    .local v32, "spaceAbove":I
    move-object/from16 v0, v44

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, mTitleMarginTop:I

    move/from16 v47, v0

    add-int v46, v46, v47

    move/from16 v0, v32

    move/from16 v1, v46

    if-ge v0, v1, :cond_3ba

    .line 2057
    move-object/from16 v0, v44

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, mTitleMarginTop:I

    move/from16 v47, v0

    add-int v32, v46, v47

    .line 2066
    :cond_214
    :goto_214
    add-int v42, v26, v32

    .line 2073
    .end local v31    # "space":I
    .end local v32    # "spaceAbove":I
    .local v42, "titleTop":I
    :goto_216
    if-eqz v16, :cond_406

    .line 2074
    if-eqz v38, :cond_402

    move-object/from16 v0, p0

    iget v0, v0, mTitleMarginStart:I

    move/from16 v46, v0

    :goto_220
    const/16 v47, 0x1

    aget v47, v12, v47

    sub-int v28, v46, v47

    .line 2075
    .local v28, "rd":I
    const/16 v46, 0x0

    move/from16 v0, v46

    move/from16 v1, v28

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v46

    sub-int v29, v29, v46

    .line 2076
    const/16 v46, 0x1

    const/16 v47, 0x0

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v48, v0

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v47

    aput v47, v12, v46

    .line 2077
    move/from16 v41, v29

    .line 2078
    .local v41, "titleRight":I
    move/from16 v36, v29

    .line 2080
    .local v36, "subtitleRight":I
    if-eqz v18, :cond_28e

    .line 2081
    move-object/from16 v0, p0

    iget-object v0, v0, mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/Toolbar$LayoutParams;

    .line 2082
    .restart local v22    # "lp":Landroid/widget/Toolbar$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v46

    sub-int v40, v41, v46

    .line 2083
    .local v40, "titleLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v46

    add-int v37, v42, v46

    .line 2084
    .local v37, "titleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v40

    move/from16 v2, v42

    move/from16 v3, v41

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 2085
    move-object/from16 v0, p0

    iget v0, v0, mTitleMarginEnd:I

    move/from16 v46, v0

    sub-int v41, v40, v46

    .line 2086
    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v46, v0

    add-int v42, v37, v46

    .line 2088
    .end local v22    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .end local v37    # "titleBottom":I
    .end local v40    # "titleLeft":I
    :cond_28e
    if-eqz v17, :cond_2df

    .line 2089
    move-object/from16 v0, p0

    iget-object v0, v0, mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/Toolbar$LayoutParams;

    .line 2090
    .restart local v22    # "lp":Landroid/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v46, v0

    add-int v42, v42, v46

    .line 2091
    move-object/from16 v0, p0

    iget-object v0, v0, mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v46

    sub-int v35, v36, v46

    .line 2092
    .local v35, "subtitleLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v46

    add-int v34, v42, v46

    .line 2093
    .local v34, "subtitleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v35

    move/from16 v2, v42

    move/from16 v3, v36

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 2094
    move-object/from16 v0, p0

    iget v0, v0, mTitleMarginEnd:I

    move/from16 v46, v0

    sub-int v36, v36, v46

    .line 2095
    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v46, v0

    add-int v42, v34, v46

    .line 2097
    .end local v22    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .end local v34    # "subtitleBottom":I
    .end local v35    # "subtitleLeft":I
    :cond_2df
    if-eqz v38, :cond_2e9

    .line 2098
    move/from16 v0, v41

    move/from16 v1, v36

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v29

    .line 2133
    .end local v6    # "bottomChild":Landroid/view/View;
    .end local v7    # "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    .end local v28    # "rd":I
    .end local v36    # "subtitleRight":I
    .end local v38    # "titleHasWidth":Z
    .end local v41    # "titleRight":I
    .end local v42    # "titleTop":I
    .end local v43    # "topChild":Landroid/view/View;
    .end local v44    # "toplp":Landroid/widget/Toolbar$LayoutParams;
    :cond_2e9
    :goto_2e9
    move-object/from16 v0, p0

    iget-object v0, v0, mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    const/16 v47, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 2134
    move-object/from16 v0, p0

    iget-object v0, v0, mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 2135
    .local v21, "leftViewsCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_305
    move/from16 v0, v21

    if-ge v15, v0, :cond_4f7

    .line 2137
    move-object/from16 v0, p0

    iget-boolean v0, v0, V_SWEEP_VI_DEMO:Z

    move/from16 v46, v0

    if-eqz v46, :cond_4dd

    move-object/from16 v0, p0

    iget-object v0, v0, mAnimationContainer:Landroid/view/ViewGroup;

    move-object/from16 v46, v0

    if-eqz v46, :cond_4dd

    move-object/from16 v0, p0

    iget-object v0, v0, mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, mAnimationContainer:Landroid/view/ViewGroup;

    move-object/from16 v47, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_4dd

    .line 2135
    :goto_331
    add-int/lit8 v15, v15, 0x1

    goto :goto_305

    .line 1950
    .end local v5    # "alignmentHeight":I
    .end local v12    # "collapsingMargins":[I
    .end local v14    # "height":I
    .end local v15    # "i":I
    .end local v16    # "isRtl":Z
    .end local v17    # "layoutSubtitle":Z
    .end local v18    # "layoutTitle":Z
    .end local v20    # "left":I
    .end local v21    # "leftViewsCount":I
    .end local v23    # "paddingBottom":I
    .end local v24    # "paddingLeft":I
    .end local v25    # "paddingRight":I
    .end local v26    # "paddingTop":I
    .end local v29    # "right":I
    .end local v39    # "titleHeight":I
    .end local v45    # "width":I
    :cond_334
    const/16 v16, 0x0

    goto/16 :goto_e

    .line 1977
    .restart local v5    # "alignmentHeight":I
    .restart local v12    # "collapsingMargins":[I
    .restart local v14    # "height":I
    .restart local v16    # "isRtl":Z
    .restart local v20    # "left":I
    .restart local v23    # "paddingBottom":I
    .restart local v24    # "paddingLeft":I
    .restart local v25    # "paddingRight":I
    .restart local v26    # "paddingTop":I
    .restart local v29    # "right":I
    .restart local v45    # "width":I
    :cond_338
    move-object/from16 v0, p0

    iget-object v0, v0, mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12, v5}, layoutChildLeft(Landroid/view/View;I[II)I

    move-result v20

    goto/16 :goto_69

    .line 1987
    :cond_34a
    move-object/from16 v0, p0

    iget-object v0, v0, mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12, v5}, layoutChildLeft(Landroid/view/View;I[II)I

    move-result v20

    goto/16 :goto_8b

    .line 1997
    :cond_35c
    move-object/from16 v0, p0

    iget-object v0, v0, mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v12, v5}, layoutChildRight(Landroid/view/View;I[II)I

    move-result v29

    goto/16 :goto_ad

    .line 2012
    :cond_36e
    move-object/from16 v0, p0

    iget-object v0, v0, mExpandedActionView:Landroid/view/View;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12, v5}, layoutChildLeft(Landroid/view/View;I[II)I

    move-result v20

    goto/16 :goto_10f

    .line 2022
    :cond_380
    move-object/from16 v0, p0

    iget-object v0, v0, mLogoView:Landroid/widget/ImageView;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12, v5}, layoutChildLeft(Landroid/view/View;I[II)I

    move-result v20

    goto/16 :goto_131

    .line 2041
    .restart local v17    # "layoutSubtitle":Z
    .restart local v18    # "layoutTitle":Z
    .restart local v39    # "titleHeight":I
    :cond_392
    move-object/from16 v0, p0

    iget-object v0, v0, mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v43, v0

    goto/16 :goto_1af

    .line 2042
    .restart local v43    # "topChild":Landroid/view/View;
    :cond_39a
    move-object/from16 v0, p0

    iget-object v6, v0, mTitleTextView:Landroid/widget/TextView;

    goto/16 :goto_1b5

    .line 2045
    .restart local v6    # "bottomChild":Landroid/view/View;
    .restart local v7    # "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    .restart local v44    # "toplp":Landroid/widget/Toolbar$LayoutParams;
    :cond_3a0
    const/16 v38, 0x0

    goto/16 :goto_1df

    .line 2050
    .restart local v38    # "titleHasWidth":Z
    :sswitch_3a4
    invoke-virtual/range {p0 .. p0}, getPaddingTop()I

    move-result v46

    move-object/from16 v0, v44

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v47, v0

    add-int v46, v46, v47

    move-object/from16 v0, p0

    iget v0, v0, mTitleMarginTop:I

    move/from16 v47, v0

    add-int v42, v46, v47

    .line 2051
    .restart local v42    # "titleTop":I
    goto/16 :goto_216

    .line 2059
    .end local v42    # "titleTop":I
    .restart local v31    # "space":I
    .restart local v32    # "spaceAbove":I
    :cond_3ba
    sub-int v46, v14, v23

    sub-int v46, v46, v39

    sub-int v46, v46, v32

    sub-int v33, v46, v26

    .line 2061
    .local v33, "spaceBelow":I
    move-object/from16 v0, v44

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v46, v0

    move-object/from16 v0, p0

    iget v0, v0, mTitleMarginBottom:I

    move/from16 v47, v0

    add-int v46, v46, v47

    move/from16 v0, v33

    move/from16 v1, v46

    if-ge v0, v1, :cond_214

    .line 2062
    const/16 v46, 0x0

    iget v0, v7, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v47, v0

    move-object/from16 v0, p0

    iget v0, v0, mTitleMarginBottom:I

    move/from16 v48, v0

    add-int v47, v47, v48

    sub-int v47, v47, v33

    sub-int v47, v32, v47

    invoke-static/range {v46 .. v47}, Ljava/lang/Math;->max(II)I

    move-result v32

    goto/16 :goto_214

    .line 2069
    .end local v31    # "space":I
    .end local v32    # "spaceAbove":I
    .end local v33    # "spaceBelow":I
    :sswitch_3ee
    sub-int v46, v14, v23

    iget v0, v7, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v47, v0

    sub-int v46, v46, v47

    move-object/from16 v0, p0

    iget v0, v0, mTitleMarginBottom:I

    move/from16 v47, v0

    sub-int v46, v46, v47

    sub-int v42, v46, v39

    .restart local v42    # "titleTop":I
    goto/16 :goto_216

    .line 2074
    :cond_402
    const/16 v46, 0x0

    goto/16 :goto_220

    .line 2101
    :cond_406
    if-eqz v38, :cond_4d9

    move-object/from16 v0, p0

    iget v0, v0, mTitleMarginStart:I

    move/from16 v46, v0

    :goto_40e
    const/16 v47, 0x0

    aget v47, v12, v47

    sub-int v19, v46, v47

    .line 2102
    .local v19, "ld":I
    const/16 v46, 0x0

    move/from16 v0, v46

    move/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v46

    add-int v20, v20, v46

    .line 2103
    const/16 v46, 0x0

    const/16 v47, 0x0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v48, v0

    invoke-static/range {v47 .. v48}, Ljava/lang/Math;->max(II)I

    move-result v47

    aput v47, v12, v46

    .line 2104
    move/from16 v40, v20

    .line 2105
    .restart local v40    # "titleLeft":I
    move/from16 v35, v20

    .line 2107
    .restart local v35    # "subtitleLeft":I
    if-eqz v18, :cond_47c

    .line 2108
    move-object/from16 v0, p0

    iget-object v0, v0, mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/Toolbar$LayoutParams;

    .line 2109
    .restart local v22    # "lp":Landroid/widget/Toolbar$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v46

    add-int v41, v40, v46

    .line 2110
    .restart local v41    # "titleRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v46

    add-int v37, v42, v46

    .line 2111
    .restart local v37    # "titleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v40

    move/from16 v2, v42

    move/from16 v3, v41

    move/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 2112
    move-object/from16 v0, p0

    iget v0, v0, mTitleMarginEnd:I

    move/from16 v46, v0

    add-int v40, v41, v46

    .line 2113
    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v46, v0

    add-int v42, v37, v46

    .line 2115
    .end local v22    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .end local v37    # "titleBottom":I
    .end local v41    # "titleRight":I
    :cond_47c
    if-eqz v17, :cond_4cd

    .line 2116
    move-object/from16 v0, p0

    iget-object v0, v0, mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Landroid/widget/Toolbar$LayoutParams;

    .line 2117
    .restart local v22    # "lp":Landroid/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v46, v0

    add-int v42, v42, v46

    .line 2118
    move-object/from16 v0, p0

    iget-object v0, v0, mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v46

    add-int v36, v35, v46

    .line 2119
    .restart local v36    # "subtitleRight":I
    move-object/from16 v0, p0

    iget-object v0, v0, mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v46

    add-int v34, v42, v46

    .line 2120
    .restart local v34    # "subtitleBottom":I
    move-object/from16 v0, p0

    iget-object v0, v0, mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    move/from16 v1, v35

    move/from16 v2, v42

    move/from16 v3, v36

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 2121
    move-object/from16 v0, p0

    iget v0, v0, mTitleMarginEnd:I

    move/from16 v46, v0

    add-int v35, v36, v46

    .line 2122
    move-object/from16 v0, v22

    iget v0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    move/from16 v46, v0

    add-int v42, v34, v46

    .line 2124
    .end local v22    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .end local v34    # "subtitleBottom":I
    .end local v36    # "subtitleRight":I
    :cond_4cd
    if-eqz v38, :cond_2e9

    .line 2125
    move/from16 v0, v40

    move/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v20

    goto/16 :goto_2e9

    .line 2101
    .end local v19    # "ld":I
    .end local v35    # "subtitleLeft":I
    .end local v40    # "titleLeft":I
    :cond_4d9
    const/16 v46, 0x0

    goto/16 :goto_40e

    .line 2141
    .end local v6    # "bottomChild":Landroid/view/View;
    .end local v7    # "bottomlp":Landroid/widget/Toolbar$LayoutParams;
    .end local v38    # "titleHasWidth":Z
    .end local v42    # "titleTop":I
    .end local v43    # "topChild":Landroid/view/View;
    .end local v44    # "toplp":Landroid/widget/Toolbar$LayoutParams;
    .restart local v15    # "i":I
    .restart local v21    # "leftViewsCount":I
    :cond_4dd
    move-object/from16 v0, p0

    iget-object v0, v0, mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v12, v5}, layoutChildLeft(Landroid/view/View;I[II)I

    move-result v20

    goto/16 :goto_331

    .line 2145
    :cond_4f7
    move-object/from16 v0, p0

    iget-object v0, v0, mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    const/16 v47, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 2146
    move-object/from16 v0, p0

    iget-object v0, v0, mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v30

    .line 2147
    .local v30, "rightViewsCount":I
    const/4 v15, 0x0

    :goto_513
    move/from16 v0, v30

    if-ge v15, v0, :cond_55b

    .line 2149
    move-object/from16 v0, p0

    iget-boolean v0, v0, V_SWEEP_VI_DEMO:Z

    move/from16 v46, v0

    if-eqz v46, :cond_542

    move-object/from16 v0, p0

    iget-object v0, v0, mAnimationContainer:Landroid/view/ViewGroup;

    move-object/from16 v46, v0

    if-eqz v46, :cond_542

    move-object/from16 v0, p0

    iget-object v0, v0, mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, mAnimationContainer:Landroid/view/ViewGroup;

    move-object/from16 v47, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_542

    .line 2147
    :goto_53f
    add-int/lit8 v15, v15, 0x1

    goto :goto_513

    .line 2153
    :cond_542
    move-object/from16 v0, p0

    iget-object v0, v0, mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v12, v5}, layoutChildRight(Landroid/view/View;I[II)I

    move-result v29

    goto :goto_53f

    .line 2159
    :cond_55b
    move-object/from16 v0, p0

    iget-object v0, v0, mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    const/16 v47, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v47

    invoke-direct {v0, v1, v2}, addCustomViewsWithGravity(Ljava/util/List;I)V

    .line 2160
    move-object/from16 v0, p0

    iget-object v0, v0, mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v12}, getViewListMeasuredWidth(Ljava/util/List;[I)I

    move-result v11

    .line 2161
    .local v11, "centerViewsWidth":I
    sub-int v46, v45, v24

    sub-int v46, v46, v25

    div-int/lit8 v46, v46, 0x2

    add-int v27, v24, v46

    .line 2162
    .local v27, "parentCenter":I
    div-int/lit8 v13, v11, 0x2

    .line 2163
    .local v13, "halfCenterViewsWidth":I
    sub-int v8, v27, v13

    .line 2164
    .local v8, "centerLeft":I
    add-int v9, v8, v11

    .line 2165
    .local v9, "centerRight":I
    move/from16 v0, v20

    if-ge v8, v0, :cond_5c6

    .line 2166
    move/from16 v8, v20

    .line 2171
    :cond_58e
    :goto_58e
    move-object/from16 v0, p0

    iget-object v0, v0, mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 2172
    .local v10, "centerViewsCount":I
    const/4 v15, 0x0

    :goto_599
    if-ge v15, v10, :cond_5e6

    .line 2174
    move-object/from16 v0, p0

    iget-boolean v0, v0, V_SWEEP_VI_DEMO:Z

    move/from16 v46, v0

    if-eqz v46, :cond_5cf

    move-object/from16 v0, p0

    iget-object v0, v0, mAnimationContainer:Landroid/view/ViewGroup;

    move-object/from16 v46, v0

    if-eqz v46, :cond_5cf

    move-object/from16 v0, p0

    iget-object v0, v0, mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    move-object/from16 v0, p0

    iget-object v0, v0, mAnimationContainer:Landroid/view/ViewGroup;

    move-object/from16 v47, v0

    move-object/from16 v0, v46

    move-object/from16 v1, v47

    if-ne v0, v1, :cond_5cf

    .line 2172
    :goto_5c3
    add-int/lit8 v15, v15, 0x1

    goto :goto_599

    .line 2167
    .end local v10    # "centerViewsCount":I
    :cond_5c6
    move/from16 v0, v29

    if-le v9, v0, :cond_58e

    .line 2168
    sub-int v46, v9, v29

    sub-int v8, v8, v46

    goto :goto_58e

    .line 2178
    .restart local v10    # "centerViewsCount":I
    :cond_5cf
    move-object/from16 v0, p0

    iget-object v0, v0, mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-direct {v0, v1, v8, v12, v5}, layoutChildLeft(Landroid/view/View;I[II)I

    move-result v8

    goto :goto_5c3

    .line 2182
    :cond_5e6
    move-object/from16 v0, p0

    iget-object v0, v0, mTempViews:Ljava/util/ArrayList;

    move-object/from16 v46, v0

    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->clear()V

    .line 2183
    return-void

    .line 2048
    :sswitch_data_5f0
    .sparse-switch
        0x30 -> :sswitch_3a4
        0x50 -> :sswitch_3ee
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 44
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1788
    const/4 v6, 0x0

    .line 1789
    .local v6, "width":I
    const/16 v27, 0x0

    .line 1790
    .local v27, "height":I
    const/16 v23, 0x0

    .line 1792
    .local v23, "childState":I
    move-object/from16 v0, p0

    iget-object v13, v0, mTempMargins:[I

    .line 1795
    .local v13, "collapsingMargins":[I
    invoke-virtual/range {p0 .. p0}, isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_21c

    .line 1796
    const/16 v31, 0x1

    .line 1797
    .local v31, "marginStartIndex":I
    const/16 v30, 0x0

    .line 1804
    .local v30, "marginEndIndex":I
    :goto_13
    move-object/from16 v0, p0

    iget-boolean v3, v0, V_SWEEP_VI_DEMO:Z

    if-eqz v3, :cond_1c

    .line 1805
    invoke-direct/range {p0 .. p2}, measureAnimationContainer(II)V

    .line 1811
    :cond_1c
    const/16 v35, 0x0

    .line 1812
    .local v35, "navWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 1813
    move-object/from16 v0, p0

    iget-object v4, v0, mNavButtonView:Landroid/widget/ImageButton;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, mMaxButtonHeight:I

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v9}, measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1815
    move-object/from16 v0, p0

    iget-object v3, v0, mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v35, v3, v5

    .line 1816
    move-object/from16 v0, p0

    iget-object v3, v0, mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, mNavButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1818
    move-object/from16 v0, p0

    iget-object v3, v0, mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v3

    move/from16 v0, v23

    invoke-static {v0, v3}, combineMeasuredStates(II)I

    move-result v23

    .line 1821
    :cond_77
    move-object/from16 v0, p0

    iget-object v3, v0, mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 1822
    move-object/from16 v0, p0

    iget-object v4, v0, mCollapseButtonView:Landroid/widget/ImageButton;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, mMaxButtonHeight:I

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v9}, measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1824
    move-object/from16 v0, p0

    iget-object v3, v0, mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v35, v3, v5

    .line 1826
    move-object/from16 v0, p0

    iget-object v3, v0, mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, mCollapseButtonView:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1828
    move-object/from16 v0, p0

    iget-object v3, v0, mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v3

    move/from16 v0, v23

    invoke-static {v0, v3}, combineMeasuredStates(II)I

    move-result v23

    .line 1831
    :cond_d0
    invoke-virtual/range {p0 .. p0}, getContentInsetStart()I

    move-result v25

    .line 1832
    .local v25, "contentInsetStart":I
    move/from16 v0, v25

    move/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v6, v3

    .line 1833
    const/4 v3, 0x0

    sub-int v5, v25, v35

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v13, v31

    .line 1835
    const/16 v34, 0x0

    .line 1836
    .local v34, "menuWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_141

    .line 1837
    move-object/from16 v0, p0

    iget-object v4, v0, mMenuView:Landroid/widget/ActionMenuView;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, mMaxButtonHeight:I

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-direct/range {v3 .. v9}, measureChildConstrained(Landroid/view/View;IIIII)V

    .line 1839
    move-object/from16 v0, p0

    iget-object v3, v0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v3}, Landroid/widget/ActionMenuView;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v34, v3, v5

    .line 1840
    move-object/from16 v0, p0

    iget-object v3, v0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v3}, Landroid/widget/ActionMenuView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, mMenuView:Landroid/widget/ActionMenuView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1842
    move-object/from16 v0, p0

    iget-object v3, v0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v3}, Landroid/widget/ActionMenuView;->getMeasuredState()I

    move-result v3

    move/from16 v0, v23

    invoke-static {v0, v3}, combineMeasuredStates(II)I

    move-result v23

    .line 1845
    :cond_141
    invoke-virtual/range {p0 .. p0}, getContentInsetEnd()I

    move-result v24

    .line 1846
    .local v24, "contentInsetEnd":I
    move/from16 v0, v24

    move/from16 v1, v34

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr v6, v3

    .line 1847
    const/4 v3, 0x0

    sub-int v5, v24, v34

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v13, v30

    .line 1849
    move-object/from16 v0, p0

    iget-object v3, v0, mExpandedActionView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_19b

    .line 1850
    move-object/from16 v0, p0

    iget-object v4, v0, mExpandedActionView:Landroid/view/View;

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    move-object v9, v13

    invoke-direct/range {v3 .. v9}, measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    add-int/2addr v6, v3

    .line 1852
    move-object/from16 v0, p0

    iget-object v3, v0, mExpandedActionView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, mExpandedActionView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1854
    move-object/from16 v0, p0

    iget-object v3, v0, mExpandedActionView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    move/from16 v0, v23

    invoke-static {v0, v3}, combineMeasuredStates(II)I

    move-result v23

    .line 1857
    :cond_19b
    move-object/from16 v0, p0

    iget-object v3, v0, mLogoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1df

    .line 1858
    move-object/from16 v0, p0

    iget-object v4, v0, mLogoView:Landroid/widget/ImageView;

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    move-object v9, v13

    invoke-direct/range {v3 .. v9}, measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    add-int/2addr v6, v3

    .line 1860
    move-object/from16 v0, p0

    iget-object v3, v0, mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, mLogoView:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1862
    move-object/from16 v0, p0

    iget-object v3, v0, mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredState()I

    move-result v3

    move/from16 v0, v23

    invoke-static {v0, v3}, combineMeasuredStates(II)I

    move-result v23

    .line 1865
    :cond_1df
    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v22

    .line 1866
    .local v22, "childCount":I
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_1e5
    move/from16 v0, v28

    move/from16 v1, v22

    if-ge v0, v1, :cond_24b

    .line 1867
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1868
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/Toolbar$LayoutParams;

    .line 1869
    .local v29, "lp":Landroid/widget/Toolbar$LayoutParams;
    move-object/from16 v0, v29

    iget v3, v0, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    if-nez v3, :cond_219

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_219

    move-object/from16 v0, p0

    iget-boolean v3, v0, V_SWEEP_VI_DEMO:Z

    if-eqz v3, :cond_222

    move-object/from16 v0, p0

    iget-object v3, v0, mAnimationContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_222

    move-object/from16 v0, p0

    iget-object v3, v0, mAnimationContainer:Landroid/view/ViewGroup;

    if-ne v4, v3, :cond_222

    .line 1866
    :cond_219
    :goto_219
    add-int/lit8 v28, v28, 0x1

    goto :goto_1e5

    .line 1799
    .end local v4    # "child":Landroid/view/View;
    .end local v22    # "childCount":I
    .end local v24    # "contentInsetEnd":I
    .end local v25    # "contentInsetStart":I
    .end local v28    # "i":I
    .end local v29    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .end local v30    # "marginEndIndex":I
    .end local v31    # "marginStartIndex":I
    .end local v34    # "menuWidth":I
    .end local v35    # "navWidth":I
    :cond_21c
    const/16 v31, 0x0

    .line 1800
    .restart local v31    # "marginStartIndex":I
    const/16 v30, 0x1

    .restart local v30    # "marginEndIndex":I
    goto/16 :goto_13

    .line 1875
    .restart local v4    # "child":Landroid/view/View;
    .restart local v22    # "childCount":I
    .restart local v24    # "contentInsetEnd":I
    .restart local v25    # "contentInsetStart":I
    .restart local v28    # "i":I
    .restart local v29    # "lp":Landroid/widget/Toolbar$LayoutParams;
    .restart local v34    # "menuWidth":I
    .restart local v35    # "navWidth":I
    :cond_222
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    move-object v9, v13

    invoke-direct/range {v3 .. v9}, measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    add-int/2addr v6, v3

    .line 1877
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1878
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    move/from16 v0, v23

    invoke-static {v0, v3}, combineMeasuredStates(II)I

    move-result v23

    goto :goto_219

    .line 1881
    .end local v4    # "child":Landroid/view/View;
    .end local v29    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_24b
    const/16 v39, 0x0

    .line 1882
    .local v39, "titleWidth":I
    const/16 v37, 0x0

    .line 1883
    .local v37, "titleHeight":I
    move-object/from16 v0, p0

    iget v3, v0, mTitleMarginTop:I

    move-object/from16 v0, p0

    iget v5, v0, mTitleMarginBottom:I

    add-int v12, v3, v5

    .line 1884
    .local v12, "titleVertMargins":I
    move-object/from16 v0, p0

    iget v3, v0, mTitleMarginStart:I

    move-object/from16 v0, p0

    iget v5, v0, mTitleMarginEnd:I

    add-int v38, v3, v5

    .line 1885
    .local v38, "titleHorizMargins":I
    move-object/from16 v0, p0

    iget-object v3, v0, mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_30d

    .line 1887
    move-object/from16 v0, p0

    iget-boolean v3, v0, mIsThemeDeviceDefaultFamily:Z

    if-eqz v3, :cond_2c7

    .line 1888
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, mTitleTextAppearance:I

    sget-object v7, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {v3, v5, v7}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v21

    .line 1890
    .local v21, "appearance":Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v40

    .line 1891
    .local v40, "value":Landroid/util/TypedValue;
    move-object/from16 v0, v40

    iget v3, v0, Landroid/util/TypedValue;->data:I

    invoke-static {v3}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v36

    .line 1892
    .local v36, "textSize":F
    invoke-virtual/range {v21 .. v21}, Landroid/content/res/TypedArray;->recycle()V

    .line 1894
    move-object/from16 v0, p0

    iget-object v3, v0, mSubtitleText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3ab

    .line 1895
    invoke-virtual/range {p0 .. p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->fontScale:F

    move/from16 v26, v0

    .line 1897
    .local v26, "fontScale":F
    move-object/from16 v0, p0

    iget v3, v0, mMaxFontScale:F

    cmpl-float v3, v26, v3

    if-lez v3, :cond_2bd

    .line 1898
    move-object/from16 v0, p0

    iget v0, v0, mMaxFontScale:F

    move/from16 v26, v0

    .line 1900
    :cond_2bd
    move-object/from16 v0, p0

    iget-object v3, v0, mTitleTextView:Landroid/widget/TextView;

    const/4 v5, 0x1

    mul-float v7, v36, v26

    invoke-virtual {v3, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1906
    .end local v21    # "appearance":Landroid/content/res/TypedArray;
    .end local v26    # "fontScale":F
    .end local v36    # "textSize":F
    .end local v40    # "value":Landroid/util/TypedValue;
    :cond_2c7
    :goto_2c7
    move-object/from16 v0, p0

    iget-object v8, v0, mTitleTextView:Landroid/widget/TextView;

    add-int v10, v6, v38

    move-object/from16 v7, p0

    move/from16 v9, p1

    move/from16 v11, p2

    invoke-direct/range {v7 .. v13}, measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v39

    .line 1909
    move-object/from16 v0, p0

    iget-object v3, v0, mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, getHorizontalMargins(Landroid/view/View;)I

    move-result v5

    add-int v39, v3, v5

    .line 1910
    move-object/from16 v0, p0

    iget-object v3, v0, mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int v37, v3, v5

    .line 1911
    move-object/from16 v0, p0

    iget-object v3, v0, mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v3

    move/from16 v0, v23

    invoke-static {v0, v3}, combineMeasuredStates(II)I

    move-result v23

    .line 1913
    :cond_30d
    move-object/from16 v0, p0

    iget-object v3, v0, mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, shouldLayout(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_356

    .line 1914
    move-object/from16 v0, p0

    iget-object v15, v0, mSubtitleTextView:Landroid/widget/TextView;

    add-int v17, v6, v38

    add-int v19, v37, v12

    move-object/from16 v14, p0

    move/from16 v16, p1

    move/from16 v18, p2

    move-object/from16 v20, v13

    invoke-direct/range {v14 .. v20}, measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v3

    move/from16 v0, v39

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v39

    .line 1918
    move-object/from16 v0, p0

    iget-object v3, v0, mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, mSubtitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, getVerticalMargins(Landroid/view/View;)I

    move-result v5

    add-int/2addr v3, v5

    add-int v37, v37, v3

    .line 1920
    move-object/from16 v0, p0

    iget-object v3, v0, mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v3

    move/from16 v0, v23

    invoke-static {v0, v3}, combineMeasuredStates(II)I

    move-result v23

    .line 1923
    :cond_356
    add-int v6, v6, v39

    .line 1924
    move/from16 v0, v27

    move/from16 v1, v37

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v27

    .line 1928
    invoke-virtual/range {p0 .. p0}, getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, getPaddingRight()I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v6, v3

    .line 1929
    invoke-virtual/range {p0 .. p0}, getPaddingTop()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, getPaddingBottom()I

    move-result v5

    add-int/2addr v3, v5

    add-int v27, v27, v3

    .line 1931
    invoke-virtual/range {p0 .. p0}, getSuggestedMinimumWidth()I

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/high16 v5, -0x1000000

    and-int v5, v5, v23

    move/from16 v0, p1

    invoke-static {v3, v0, v5}, resolveSizeAndState(III)I

    move-result v33

    .line 1934
    .local v33, "measuredWidth":I
    invoke-virtual/range {p0 .. p0}, getSuggestedMinimumHeight()I

    move-result v3

    move/from16 v0, v27

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    shl-int/lit8 v5, v23, 0x10

    move/from16 v0, p2

    invoke-static {v3, v0, v5}, resolveSizeAndState(III)I

    move-result v32

    .line 1938
    .local v32, "measuredHeight":I
    invoke-direct/range {p0 .. p0}, shouldCollapse()Z

    move-result v3

    if-eqz v3, :cond_3a1

    const/16 v32, 0x0

    .end local v32    # "measuredHeight":I
    :cond_3a1
    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, setMeasuredDimension(II)V

    .line 1939
    return-void

    .line 1902
    .end local v33    # "measuredWidth":I
    .restart local v21    # "appearance":Landroid/content/res/TypedArray;
    .restart local v36    # "textSize":F
    .restart local v40    # "value":Landroid/util/TypedValue;
    :cond_3ab
    move-object/from16 v0, p0

    iget-object v3, v0, mTitleTextView:Landroid/widget/TextView;

    const/4 v5, 0x1

    move/from16 v0, v36

    invoke-virtual {v3, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/16 :goto_2c7
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1386
    move-object v2, p1

    check-cast v2, Landroid/widget/Toolbar$SavedState;

    .line 1387
    .local v2, "ss":Landroid/widget/Toolbar$SavedState;
    invoke-virtual {v2}, Landroid/widget/Toolbar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v3

    invoke-super {p0, v3}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1389
    iget-object v3, p0, mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v3, :cond_31

    iget-object v3, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v3}, Landroid/widget/ActionMenuView;->peekMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    .line 1390
    .local v1, "menu":Landroid/view/Menu;
    :goto_14
    iget v3, v2, Landroid/widget/Toolbar$SavedState;->expandedMenuItemId:I

    if-eqz v3, :cond_29

    iget-object v3, p0, mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v3, :cond_29

    if-eqz v1, :cond_29

    .line 1391
    iget v3, v2, Landroid/widget/Toolbar$SavedState;->expandedMenuItemId:I

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1392
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_29

    .line 1393
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1397
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_29
    iget-boolean v3, v2, Landroid/widget/Toolbar$SavedState;->isOverflowOpen:Z

    if-eqz v3, :cond_30

    .line 1398
    invoke-direct {p0}, postShowOverflowMenu()V

    .line 1400
    :cond_30
    return-void

    .line 1389
    .end local v1    # "menu":Landroid/view/Menu;
    :cond_31
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 4
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v0, 0x1

    .line 561
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRtlPropertiesChanged(I)V

    .line 562
    iget-object v1, p0, mContentInsets:Landroid/widget/RtlSpacingHelper;

    if-ne p1, v0, :cond_c

    :goto_8
    invoke-virtual {v1, v0}, Landroid/widget/RtlSpacingHelper;->setDirection(Z)V

    .line 563
    return-void

    .line 562
    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .prologue
    .line 1373
    new-instance v0, Landroid/widget/Toolbar$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1375
    .local v0, "state":Landroid/widget/Toolbar$SavedState;
    iget-object v1, p0, mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_1d

    iget-object v1, p0, mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v1, :cond_1d

    .line 1376
    iget-object v1, p0, mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v1, v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v1

    iput v1, v0, Landroid/widget/Toolbar$SavedState;->expandedMenuItemId:I

    .line 1379
    :cond_1d
    invoke-virtual {p0}, isOverflowMenuShowing()Z

    move-result v1

    iput-boolean v1, v0, Landroid/widget/Toolbar$SavedState;->isOverflowOpen:Z

    .line 1381
    return-object v0
.end method

.method protected onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1689
    invoke-virtual {p0, p2}, checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1690
    invoke-virtual {p0, p2}, generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/Toolbar$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1692
    :cond_d
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1420
    iget-boolean v2, p0, V_SWEEP_VI_DEMO:Z

    if-eqz v2, :cond_2a

    .line 1421
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_78

    .line 1436
    const-string v2, "Toolbar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTouchEvent - ELSE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :cond_2a
    :goto_2a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1442
    .local v0, "action":I
    if-nez v0, :cond_32

    .line 1443
    iput-boolean v6, p0, mEatingTouch:Z

    .line 1446
    :cond_32
    iget-boolean v2, p0, mEatingTouch:Z

    if-nez v2, :cond_40

    .line 1447
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1448
    .local v1, "handled":Z
    if-nez v0, :cond_40

    if-nez v1, :cond_40

    .line 1449
    iput-boolean v5, p0, mEatingTouch:Z

    .line 1453
    .end local v1    # "handled":Z
    :cond_40
    if-eq v0, v5, :cond_45

    const/4 v2, 0x3

    if-ne v0, v2, :cond_47

    .line 1454
    :cond_45
    iput-boolean v6, p0, mEatingTouch:Z

    .line 1457
    :cond_47
    return v5

    .line 1423
    .end local v0    # "action":I
    :pswitch_48
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2, v3}, checkSweepAction(FF)V

    .line 1424
    const-string v2, "Toolbar"

    const-string/jumbo v3, "onTouchEvent - ACTION_UP"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 1427
    :pswitch_5c
    const-string v2, "Toolbar"

    const-string/jumbo v3, "onTouchEvent - ACTION_DOWN"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 1430
    :pswitch_65
    const-string v2, "Toolbar"

    const-string/jumbo v3, "onTouchEvent - ACTION_MOVE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 1433
    :pswitch_6e
    const-string v2, "Toolbar"

    const-string/jumbo v3, "onTouchEvent - ACTION_CANCEL"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 1421
    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_48
        :pswitch_65
        :pswitch_6e
    .end packed-switch
.end method

.method removeChildrenForExpandedActionView()V
    .registers 7

    .prologue
    .line 2384
    invoke-virtual {p0}, getChildCount()I

    move-result v1

    .line 2386
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_6
    if-ltz v2, :cond_26

    .line 2387
    invoke-virtual {p0, v2}, getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2388
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/Toolbar$LayoutParams;

    .line 2389
    .local v3, "lp":Landroid/widget/Toolbar$LayoutParams;
    iget v4, v3, Landroid/widget/Toolbar$LayoutParams;->mViewType:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_23

    iget-object v4, p0, mMenuView:Landroid/widget/ActionMenuView;

    if-eq v0, v4, :cond_23

    .line 2390
    invoke-virtual {p0, v2}, removeViewAt(I)V

    .line 2391
    iget-object v4, p0, mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2386
    :cond_23
    add-int/lit8 v2, v2, -0x1

    goto :goto_6

    .line 2394
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/Toolbar$LayoutParams;
    :cond_26
    return-void
.end method

.method public setCollapsible(Z)V
    .registers 2
    .param p1, "collapsible"    # Z

    .prologue
    .line 2415
    iput-boolean p1, p0, mCollapsible:Z

    .line 2416
    invoke-virtual {p0}, requestLayout()V

    .line 2417
    return-void
.end method

.method public setContentInsetsAbsolute(II)V
    .registers 4
    .param p1, "contentInsetLeft"    # I
    .param p2, "contentInsetRight"    # I

    .prologue
    .line 1258
    iget-object v0, p0, mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RtlSpacingHelper;->setAbsolute(II)V

    .line 1259
    return-void
.end method

.method public setContentInsetsRelative(II)V
    .registers 4
    .param p1, "contentInsetStart"    # I
    .param p2, "contentInsetEnd"    # I

    .prologue
    .line 1200
    iget-object v0, p0, mContentInsets:Landroid/widget/RtlSpacingHelper;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RtlSpacingHelper;->setRelative(II)V

    .line 1201
    return-void
.end method

.method public setExpandShrinkButton(IIZII)V
    .registers 16
    .param p1, "displayId"    # I
    .param p2, "tintColor"    # I
    .param p3, "isExapndable"    # Z
    .param p4, "rotation"    # I
    .param p5, "visibility"    # I

    .prologue
    .line 386
    iget-object v5, p0, mAnimationContainer:Landroid/view/ViewGroup;

    if-nez v5, :cond_5

    .line 503
    :cond_4
    :goto_4
    return-void

    .line 390
    :cond_5
    iget-object v5, p0, mExpandResId:[I

    if-nez v5, :cond_2e

    .line 391
    const/4 v5, 0x4

    new-array v5, v5, [I

    iput-object v5, p0, mExpandResId:[I

    .line 392
    iget-object v5, p0, mExpandResId:[I

    const/4 v6, 0x0

    const v7, 0x1080924

    aput v7, v5, v6

    .line 393
    iget-object v5, p0, mExpandResId:[I

    const/4 v6, 0x1

    const v7, 0x1080925

    aput v7, v5, v6

    .line 394
    iget-object v5, p0, mExpandResId:[I

    const/4 v6, 0x2

    const v7, 0x1080926

    aput v7, v5, v6

    .line 395
    iget-object v5, p0, mExpandResId:[I

    const/4 v6, 0x3

    const v7, 0x1080923

    aput v7, v5, v6

    .line 398
    :cond_2e
    iget-object v5, p0, mShrinkResId:[I

    if-nez v5, :cond_57

    .line 399
    const/4 v5, 0x4

    new-array v5, v5, [I

    iput-object v5, p0, mShrinkResId:[I

    .line 400
    iget-object v5, p0, mShrinkResId:[I

    const/4 v6, 0x0

    const v7, 0x10809e2

    aput v7, v5, v6

    .line 401
    iget-object v5, p0, mShrinkResId:[I

    const/4 v6, 0x1

    const v7, 0x10809e3

    aput v7, v5, v6

    .line 402
    iget-object v5, p0, mShrinkResId:[I

    const/4 v6, 0x2

    const v7, 0x10809e4

    aput v7, v5, v6

    .line 403
    iget-object v5, p0, mShrinkResId:[I

    const/4 v6, 0x3

    const v7, 0x10809e1

    aput v7, v5, v6

    .line 407
    :cond_57
    iget-object v5, p0, mExpandShrinkButton:Landroid/widget/ImageButton;

    if-nez v5, :cond_a2

    .line 408
    new-instance v5, Landroid/widget/ImageButton;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, mExpandShrinkButton:Landroid/widget/ImageButton;

    .line 409
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v5, 0x60

    const/16 v6, 0x60

    invoke-direct {v0, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 410
    .local v0, "framelayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const v5, 0x800015

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 411
    const/16 v5, 0x24

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 412
    iget-object v5, p0, mExpandShrinkButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    iget-object v5, p0, mAnimationContainer:Landroid/view/ViewGroup;

    iget-object v6, p0, mExpandShrinkButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 414
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x108088b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 415
    .local v3, "ripple":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, mExpandShrinkButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v3}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 417
    iget-object v5, p0, mExpandShrinkButton:Landroid/widget/ImageButton;

    new-instance v6, Landroid/widget/Toolbar$3;

    invoke-direct {v6, p0}, Landroid/widget/Toolbar$3;-><init>(Landroid/widget/Toolbar;)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    .end local v0    # "framelayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "ripple":Landroid/graphics/drawable/Drawable;
    :cond_a2
    const/4 v2, 0x0

    .line 440
    .local v2, "resId":I
    if-eqz p3, :cond_13f

    .line 441
    iget-object v5, p0, mExpandShrinkButton:Landroid/widget/ImageButton;

    const-string v6, "Expand"

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 442
    if-eqz p4, :cond_b1

    const/4 v5, 0x2

    if-ne p4, v5, :cond_100

    .line 443
    :cond_b1
    iget-object v5, p0, mExpandResId:[I

    aget v2, v5, p1

    .line 479
    :cond_b5
    :goto_b5
    iget-object v5, p0, mExpandShrinkButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 481
    new-instance v4, Landroid/content/res/ColorStateList;

    const/4 v5, 0x2

    new-array v5, v5, [[I

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const v9, 0x101009e

    aput v9, v7, v8

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-array v7, v7, [I

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput p2, v6, v7

    const/4 v7, 0x1

    aput p2, v6, v7

    invoke-direct {v4, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 487
    .local v4, "tint":Landroid/content/res/ColorStateList;
    iget-object v5, p0, mExpandShrinkButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 488
    iget-object v5, p0, mExpandShrinkButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, p5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 490
    iget-object v5, p0, mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v5, :cond_4

    .line 491
    if-eqz p5, :cond_193

    .line 492
    iget-object v5, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v5}, Landroid/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 493
    .local v1, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 494
    iget-object v5, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v5, v1}, Landroid/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    .line 445
    .end local v1    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "tint":Landroid/content/res/ColorStateList;
    :cond_100
    const/4 v5, 0x1

    if-ne p4, v5, :cond_11f

    .line 446
    sget-object v5, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v5}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v5

    if-ne p1, v5, :cond_111

    .line 447
    iget-object v5, p0, mExpandResId:[I

    const/4 v6, 0x2

    aget v2, v5, v6

    goto :goto_b5

    .line 448
    :cond_111
    sget-object v5, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v5}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v5

    if-ne p1, v5, :cond_b5

    .line 449
    iget-object v5, p0, mExpandResId:[I

    const/4 v6, 0x3

    aget v2, v5, v6

    goto :goto_b5

    .line 451
    :cond_11f
    const/4 v5, 0x3

    if-ne p4, v5, :cond_b5

    .line 452
    sget-object v5, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v5}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v5

    if-ne p1, v5, :cond_130

    .line 453
    iget-object v5, p0, mExpandResId:[I

    const/4 v6, 0x3

    aget v2, v5, v6

    goto :goto_b5

    .line 454
    :cond_130
    sget-object v5, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v5}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v5

    if-ne p1, v5, :cond_b5

    .line 455
    iget-object v5, p0, mExpandResId:[I

    const/4 v6, 0x2

    aget v2, v5, v6

    goto/16 :goto_b5

    .line 460
    :cond_13f
    iget-object v5, p0, mExpandShrinkButton:Landroid/widget/ImageButton;

    const-string v6, "Shrink"

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 461
    if-eqz p4, :cond_14b

    const/4 v5, 0x2

    if-ne p4, v5, :cond_151

    .line 462
    :cond_14b
    iget-object v5, p0, mShrinkResId:[I

    aget v2, v5, p1

    goto/16 :goto_b5

    .line 464
    :cond_151
    const/4 v5, 0x1

    if-ne p4, v5, :cond_172

    .line 465
    sget-object v5, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v5}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v5

    if-ne p1, v5, :cond_163

    .line 466
    iget-object v5, p0, mShrinkResId:[I

    const/4 v6, 0x2

    aget v2, v5, v6

    goto/16 :goto_b5

    .line 467
    :cond_163
    sget-object v5, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v5}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v5

    if-ne p1, v5, :cond_b5

    .line 468
    iget-object v5, p0, mShrinkResId:[I

    const/4 v6, 0x3

    aget v2, v5, v6

    goto/16 :goto_b5

    .line 470
    :cond_172
    const/4 v5, 0x3

    if-ne p4, v5, :cond_b5

    .line 471
    sget-object v5, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v5}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v5

    if-ne p1, v5, :cond_184

    .line 472
    iget-object v5, p0, mShrinkResId:[I

    const/4 v6, 0x3

    aget v2, v5, v6

    goto/16 :goto_b5

    .line 473
    :cond_184
    sget-object v5, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v5}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v5

    if-ne p1, v5, :cond_b5

    .line 474
    iget-object v5, p0, mShrinkResId:[I

    const/4 v6, 0x2

    aget v2, v5, v6

    goto/16 :goto_b5

    .line 495
    .restart local v4    # "tint":Landroid/content/res/ColorStateList;
    :cond_193
    if-nez p5, :cond_4

    .line 496
    iget-object v5, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v5}, Landroid/widget/ActionMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 497
    .restart local v1    # "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v5

    if-gtz v5, :cond_4

    .line 498
    const/16 v5, 0xa8

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 499
    iget-object v5, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v5, v1}, Landroid/widget/ActionMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4
.end method

.method public setLogo(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 575
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 576
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 691
    if-eqz p1, :cond_1d

    .line 692
    invoke-direct {p0}, ensureLogoView()V

    .line 693
    iget-object v0, p0, mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 694
    iget-object v0, p0, mLogoView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, addSystemView(Landroid/view/View;Z)V

    .line 700
    :cond_13
    :goto_13
    iget-object v0, p0, mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1c

    .line 701
    iget-object v0, p0, mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 703
    :cond_1c
    return-void

    .line 696
    :cond_1d
    iget-object v0, p0, mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_13

    iget-object v0, p0, mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 697
    iget-object v0, p0, mLogoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, removeView(Landroid/view/View;)V

    .line 698
    iget-object v0, p0, mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_13
.end method

.method public setLogoDescription(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 725
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, setLogoDescription(Ljava/lang/CharSequence;)V

    .line 726
    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 737
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 738
    invoke-direct {p0}, ensureLogoView()V

    .line 740
    :cond_9
    iget-object v0, p0, mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_12

    .line 741
    iget-object v0, p0, mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 743
    :cond_12
    return-void
.end method

.method public setMenu(Lcom/android/internal/view/menu/MenuBuilder;Landroid/widget/ActionMenuPresenter;)V
    .registers 8
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "outerPresenter"    # Landroid/widget/ActionMenuPresenter;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 618
    if-nez p1, :cond_9

    iget-object v1, p0, mMenuView:Landroid/widget/ActionMenuView;

    if-nez v1, :cond_9

    .line 650
    :cond_8
    :goto_8
    return-void

    .line 622
    :cond_9
    invoke-direct {p0}, ensureMenuView()V

    .line 623
    iget-object v1, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/ActionMenuView;->peekMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    .line 624
    .local v0, "oldMenu":Lcom/android/internal/view/menu/MenuBuilder;
    if-eq v0, p1, :cond_8

    .line 628
    if-eqz v0, :cond_20

    .line 629
    iget-object v1, p0, mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 630
    iget-object v1, p0, mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 633
    :cond_20
    iget-object v1, p0, mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_2b

    .line 634
    new-instance v1, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-direct {v1, p0, v4}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Landroid/widget/Toolbar;Landroid/widget/Toolbar$1;)V

    iput-object v1, p0, mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    .line 637
    :cond_2b
    invoke-virtual {p2, v3}, Landroid/widget/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 638
    if-eqz p1, :cond_4b

    .line 639
    iget-object v1, p0, mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, p2, v1}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 640
    iget-object v1, p0, mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, mPopupContext:Landroid/content/Context;

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;Landroid/content/Context;)V

    .line 647
    :goto_3c
    iget-object v1, p0, mMenuView:Landroid/widget/ActionMenuView;

    iget v2, p0, mPopupTheme:I

    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->setPopupTheme(I)V

    .line 648
    iget-object v1, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v1, p2}, Landroid/widget/ActionMenuView;->setPresenter(Landroid/widget/ActionMenuPresenter;)V

    .line 649
    iput-object p2, p0, mOuterActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    goto :goto_8

    .line 642
    :cond_4b
    iget-object v1, p0, mPopupContext:Landroid/content/Context;

    invoke-virtual {p2, v1, v4}, Landroid/widget/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 643
    iget-object v1, p0, mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object v2, p0, mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v4}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 644
    invoke-virtual {p2, v3}, Landroid/widget/ActionMenuPresenter;->updateMenuView(Z)V

    .line 645
    iget-object v1, p0, mExpandedMenuPresenter:Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;

    invoke-virtual {v1, v3}, Landroid/widget/Toolbar$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    goto :goto_3c
.end method

.method public setMenuCallbacks(Lcom/android/internal/view/menu/MenuPresenter$Callback;Lcom/android/internal/view/menu/MenuBuilder$Callback;)V
    .registers 3
    .param p1, "pcb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .prologue
    .line 2424
    iput-object p1, p0, mActionMenuPresenterCallback:Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .line 2425
    iput-object p2, p0, mMenuBuilderCallback:Lcom/android/internal/view/menu/MenuBuilder$Callback;

    .line 2426
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 973
    if-eqz p1, :cond_e

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_a
    invoke-virtual {p0, v0}, setNavigationContentDescription(Ljava/lang/CharSequence;)V

    .line 974
    return-void

    .line 973
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 987
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 988
    invoke-direct {p0}, ensureNavButtonView()V

    .line 990
    :cond_9
    iget-object v0, p0, mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_12

    .line 991
    iget-object v0, p0, mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 993
    :cond_12
    return-void
.end method

.method public setNavigationIcon(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 1010
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1011
    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x1

    .line 1028
    if-eqz p1, :cond_2b

    .line 1030
    iget-boolean v0, p0, mChangedTheme:Z

    if-eqz v0, :cond_11

    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_11

    move-object v0, p1

    .line 1031
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAutoMirrored(Z)V

    .line 1034
    :cond_11
    invoke-direct {p0}, ensureNavButtonView()V

    .line 1035
    iget-object v0, p0, mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 1036
    iget-object v0, p0, mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0, v1}, addSystemView(Landroid/view/View;Z)V

    .line 1042
    :cond_21
    :goto_21
    iget-object v0, p0, mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2a

    .line 1043
    iget-object v0, p0, mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1045
    :cond_2a
    return-void

    .line 1038
    :cond_2b
    iget-object v0, p0, mNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_21

    iget-object v0, p0, mNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1039
    iget-object v0, p0, mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, removeView(Landroid/view/View;)V

    .line 1040
    iget-object v0, p0, mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_21
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 1069
    invoke-direct {p0}, ensureNavButtonView()V

    .line 1070
    iget-object v0, p0, mNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1071
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/Toolbar$OnMenuItemClickListener;

    .prologue
    .line 1165
    iput-object p1, p0, mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

    .line 1166
    return-void
.end method

.method public setOnToolbarSweepListener(Landroid/widget/Toolbar$OnToolbarSweepListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/Toolbar$OnToolbarSweepListener;

    .prologue
    .line 1181
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1092
    invoke-direct {p0}, ensureMenu()V

    .line 1093
    iget-object v0, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1094
    return-void
.end method

.method public setPopupTheme(I)V
    .registers 4
    .param p1, "resId"    # I

    .prologue
    .line 540
    iget v0, p0, mPopupTheme:I

    if-eq v0, p1, :cond_c

    .line 541
    iput p1, p0, mPopupTheme:I

    .line 542
    if-nez p1, :cond_d

    .line 543
    iget-object v0, p0, mContext:Landroid/content/Context;

    iput-object v0, p0, mPopupContext:Landroid/content/Context;

    .line 548
    :cond_c
    :goto_c
    return-void

    .line 545
    :cond_d
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, mPopupContext:Landroid/content/Context;

    goto :goto_c
.end method

.method public setSubtitle(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 865
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, setSubtitle(Ljava/lang/CharSequence;)V

    .line 866
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 876
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 877
    iget-object v1, p0, mSubtitleTextView:Landroid/widget/TextView;

    if-nez v1, :cond_37

    .line 878
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    .line 879
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mSubtitleTextView:Landroid/widget/TextView;

    .line 880
    iget-object v1, p0, mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 881
    iget-object v1, p0, mSubtitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 882
    iget v1, p0, mSubtitleTextAppearance:I

    if-eqz v1, :cond_2c

    .line 883
    iget-object v1, p0, mSubtitleTextView:Landroid/widget/TextView;

    iget v2, p0, mSubtitleTextAppearance:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 885
    :cond_2c
    iget v1, p0, mSubtitleTextColor:I

    if-eqz v1, :cond_37

    .line 886
    iget-object v1, p0, mSubtitleTextView:Landroid/widget/TextView;

    iget v2, p0, mSubtitleTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 889
    .end local v0    # "context":Landroid/content/Context;
    :cond_37
    iget-object v1, p0, mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, isChildOrHidden(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 890
    iget-object v1, p0, mSubtitleTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, addSystemView(Landroid/view/View;Z)V

    .line 896
    :cond_45
    :goto_45
    iget-object v1, p0, mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_4e

    .line 897
    iget-object v1, p0, mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 899
    :cond_4e
    iput-object p1, p0, mSubtitleText:Ljava/lang/CharSequence;

    .line 900
    return-void

    .line 892
    :cond_51
    iget-object v1, p0, mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_45

    iget-object v1, p0, mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, isChildOrHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 893
    iget-object v1, p0, mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, removeView(Landroid/view/View;)V

    .line 894
    iget-object v1, p0, mHiddenViews:Ljava/util/ArrayList;

    iget-object v2, p0, mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_45
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 918
    iput p2, p0, mSubtitleTextAppearance:I

    .line 919
    iget-object v0, p0, mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 920
    iget-object v0, p0, mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 922
    :cond_b
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 942
    iput p1, p0, mSubtitleTextColor:I

    .line 943
    iget-object v0, p0, mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 944
    iget-object v0, p0, mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 946
    :cond_b
    return-void
.end method

.method public setSweepImageColor(I)V
    .registers 6
    .param p1, "color"    # I

    .prologue
    const/16 v3, 0xd9

    .line 1654
    iget-object v2, p0, mTriangleToLeft:Landroid/view/View;

    if-eqz v2, :cond_26

    .line 1655
    iget-object v2, p0, mTriangleToLeft:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1656
    .local v1, "temp":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_26

    .line 1657
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "temp":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1658
    .local v0, "bmpDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 1659
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1660
    iget-object v2, p0, mTriangleToLeft:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1664
    .end local v0    # "bmpDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_26
    iget-object v2, p0, mTriangleToRight:Landroid/view/View;

    if-eqz v2, :cond_4a

    .line 1665
    iget-object v2, p0, mTriangleToRight:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1666
    .restart local v1    # "temp":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_4a

    .line 1667
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1    # "temp":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1668
    .restart local v0    # "bmpDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTint(I)V

    .line 1669
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 1670
    iget-object v2, p0, mTriangleToRight:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1673
    .end local v0    # "bmpDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_4a
    return-void
.end method

.method public setTitle(I)V
    .registers 3
    .param p1, "resId"    # I

    .prologue
    .line 810
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, setTitle(Ljava/lang/CharSequence;)V

    .line 811
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 822
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 823
    iget-object v1, p0, mTitleTextView:Landroid/widget/TextView;

    if-nez v1, :cond_37

    .line 824
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    .line 825
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mTitleTextView:Landroid/widget/TextView;

    .line 826
    iget-object v1, p0, mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 827
    iget-object v1, p0, mTitleTextView:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 828
    iget v1, p0, mTitleTextAppearance:I

    if-eqz v1, :cond_2c

    .line 829
    iget-object v1, p0, mTitleTextView:Landroid/widget/TextView;

    iget v2, p0, mTitleTextAppearance:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 831
    :cond_2c
    iget v1, p0, mTitleTextColor:I

    if-eqz v1, :cond_37

    .line 832
    iget-object v1, p0, mTitleTextView:Landroid/widget/TextView;

    iget v2, p0, mTitleTextColor:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 835
    .end local v0    # "context":Landroid/content/Context;
    :cond_37
    iget-object v1, p0, mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, isChildOrHidden(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 836
    iget-object v1, p0, mTitleTextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, addSystemView(Landroid/view/View;Z)V

    .line 842
    :cond_45
    :goto_45
    iget-object v1, p0, mTitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_4e

    .line 843
    iget-object v1, p0, mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 845
    :cond_4e
    iput-object p1, p0, mTitleText:Ljava/lang/CharSequence;

    .line 846
    return-void

    .line 838
    :cond_51
    iget-object v1, p0, mTitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_45

    iget-object v1, p0, mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, isChildOrHidden(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 839
    iget-object v1, p0, mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, removeView(Landroid/view/View;)V

    .line 840
    iget-object v1, p0, mHiddenViews:Ljava/util/ArrayList;

    iget-object v2, p0, mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_45
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 907
    iput p2, p0, mTitleTextAppearance:I

    .line 908
    iget-object v0, p0, mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 909
    iget-object v0, p0, mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 911
    :cond_b
    return-void
.end method

.method public setTitleTextColor(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    .line 930
    iput p1, p0, mTitleTextColor:I

    .line 931
    iget-object v0, p0, mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 932
    iget-object v0, p0, mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 934
    :cond_b
    return-void
.end method

.method public showOverflowMenu()Z
    .registers 2

    .prologue
    .line 604
    iget-object v0, p0, mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v0, :cond_e

    iget-object v0, p0, mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/ActionMenuView;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
