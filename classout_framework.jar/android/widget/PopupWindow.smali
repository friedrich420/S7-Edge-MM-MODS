.class public Landroid/widget/PopupWindow;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupWindow$PopupBackgroundView;,
        Landroid/widget/PopupWindow$PopupDecorView;,
        Landroid/widget/PopupWindow$OnDismissListener;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I

.field private static final ANIMATION_STYLE_DEFAULT:I = -0x1

.field private static final DEFAULT_ANCHORED_GRAVITY:I = 0x800033

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "PopupWindow"


# instance fields
.field private mAboveAnchor:Z

.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAllowScrollingAnchorParent:Z

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnchoredGravity:I

.field private mAnimationStyle:I

.field private mAttachedInDecor:Z

.field private mAttachedInDecorSet:Z

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundView:Landroid/view/View;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

.field private mDimAmount:F

.field private mDimBehind:Z

.field private final mDrawingLocation:[I

.field private mElevation:F

.field private mEnterTransition:Landroid/transition/Transition;

.field private mExitTransition:Landroid/transition/Transition;

.field private mFocusable:Z

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mIgnoreMultiWindowLayout:Z

.field private mInputMethodMode:I

.field private mIsDeviceDefaultLight:Z

.field private mIsDropdown:Z

.field private mIsShowing:Z

.field private mIsTransitioningToDismiss:Z

.field private mIsWindowPopupOutsideBound:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mLayoutInsetDecor:Z

.field private mNotTouchModal:Z

.field private mOldDisplayId:I

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mOverlapAnchor:Z

.field private mPopupHeight:I

.field private mPopupViewInitialLayoutDirectionInherited:Z

.field private mPopupWidth:I

.field private final mScreenLocation:[I

.field private mShowForAllUsers:Z

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private mStatusBarHeight:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 187
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100aa

    aput v2, v0, v1

    sput-object v0, ABOVE_ANCHOR_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, <init>(Landroid/view/View;II)V

    .line 307
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 333
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, <init>(Landroid/view/View;II)V

    .line 334
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 222
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 230
    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 231
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 239
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 240
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, mDrawingLocation:[I

    .line 115
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, mScreenLocation:[I

    .line 116
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, mTempRect:Landroid/graphics/Rect;

    .line 135
    const/4 v7, 0x0

    iput v7, p0, mInputMethodMode:I

    .line 136
    const/4 v7, 0x1

    iput v7, p0, mSoftInputMode:I

    .line 137
    const/4 v7, 0x1

    iput-boolean v7, p0, mTouchable:Z

    .line 138
    const/4 v7, 0x0

    iput-boolean v7, p0, mOutsideTouchable:Z

    .line 139
    const/4 v7, 0x1

    iput-boolean v7, p0, mClippingEnabled:Z

    .line 140
    const/4 v7, -0x1

    iput v7, p0, mSplitTouchEnabled:I

    .line 143
    const/4 v7, 0x1

    iput-boolean v7, p0, mAllowScrollingAnchorParent:Z

    .line 144
    const/4 v7, 0x0

    iput-boolean v7, p0, mLayoutInsetDecor:Z

    .line 146
    const/4 v7, 0x1

    iput-boolean v7, p0, mAttachedInDecor:Z

    .line 147
    const/4 v7, 0x0

    iput-boolean v7, p0, mAttachedInDecorSet:Z

    .line 152
    const/4 v7, -0x2

    iput v7, p0, mWidth:I

    .line 155
    const/4 v7, -0x2

    iput v7, p0, mHeight:I

    .line 171
    const/16 v7, 0x3e8

    iput v7, p0, mWindowLayoutType:I

    .line 174
    const/4 v7, 0x0

    iput-boolean v7, p0, mIgnoreCheekPress:Z

    .line 175
    const/4 v7, 0x0

    iput v7, p0, mStatusBarHeight:I

    .line 176
    const/4 v7, 0x0

    iput-boolean v7, p0, mIsWindowPopupOutsideBound:Z

    .line 178
    const/4 v7, -0x1

    iput v7, p0, mAnimationStyle:I

    .line 180
    const/4 v7, 0x0

    iput-boolean v7, p0, mShowForAllUsers:Z

    .line 181
    const/4 v7, 0x0

    iput-boolean v7, p0, mIgnoreMultiWindowLayout:Z

    .line 184
    const/4 v7, 0x0

    iput-boolean v7, p0, mIsDeviceDefaultLight:Z

    .line 185
    const/4 v7, 0x0

    iput v7, p0, mOldDisplayId:I

    .line 193
    new-instance v7, Landroid/widget/PopupWindow$1;

    invoke-direct {v7, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v7, p0, mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 2177
    const/4 v7, 0x0

    iput-boolean v7, p0, mDimBehind:Z

    .line 2178
    const/4 v7, 0x0

    iput v7, p0, mDimAmount:F

    .line 248
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 249
    const-string/jumbo v7, "window"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    iput-object v7, p0, mWindowManager:Landroid/view/WindowManager;

    .line 251
    sget-object v7, Lcom/android/internal/R$styleable;->PopupWindow:[I

    invoke-virtual {p1, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 253
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 254
    .local v2, "bg":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, mElevation:F

    .line 255
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, mOverlapAnchor:Z

    .line 260
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v7

    if-eqz v7, :cond_f4

    .line 261
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 262
    .local v1, "animStyle":I
    const v7, 0x10302ec

    if-ne v1, v7, :cond_f1

    .line 263
    const/4 v7, -0x1

    iput v7, p0, mAnimationStyle:I

    .line 271
    .end local v1    # "animStyle":I
    :goto_9e
    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-direct {p0, v7}, getTransition(I)Landroid/transition/Transition;

    move-result-object v4

    .line 274
    .local v4, "enterTransition":Landroid/transition/Transition;
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v7

    if-eqz v7, :cond_f8

    .line 275
    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-direct {p0, v7}, getTransition(I)Landroid/transition/Transition;

    move-result-object v5

    .line 281
    .local v5, "exitTransition":Landroid/transition/Transition;
    :goto_b9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 283
    invoke-virtual {p0, v4}, setEnterTransition(Landroid/transition/Transition;)V

    .line 284
    invoke-virtual {p0, v5}, setExitTransition(Landroid/transition/Transition;)V

    .line 285
    invoke-virtual {p0, v2}, setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    .line 289
    .local v6, "outValue":Landroid/util/TypedValue;
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 290
    .local v3, "colorValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x11600bd

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v6, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 291
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x11600bf

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v3, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 292
    iget v7, v6, Landroid/util/TypedValue;->data:I

    if-eqz v7, :cond_f0

    iget v7, v3, Landroid/util/TypedValue;->data:I

    if-nez v7, :cond_f0

    .line 293
    const/4 v7, 0x1

    iput-boolean v7, p0, mIsDeviceDefaultLight:Z

    .line 297
    :cond_f0
    return-void

    .line 265
    .end local v3    # "colorValue":Landroid/util/TypedValue;
    .end local v4    # "enterTransition":Landroid/transition/Transition;
    .end local v5    # "exitTransition":Landroid/transition/Transition;
    .end local v6    # "outValue":Landroid/util/TypedValue;
    .restart local v1    # "animStyle":I
    :cond_f1
    iput v1, p0, mAnimationStyle:I

    goto :goto_9e

    .line 268
    .end local v1    # "animStyle":I
    :cond_f4
    const/4 v7, -0x1

    iput v7, p0, mAnimationStyle:I

    goto :goto_9e

    .line 278
    .restart local v4    # "enterTransition":Landroid/transition/Transition;
    :cond_f8
    if-nez v4, :cond_fc

    const/4 v5, 0x0

    .restart local v5    # "exitTransition":Landroid/transition/Transition;
    :goto_fb
    goto :goto_b9

    .end local v5    # "exitTransition":Landroid/transition/Transition;
    :cond_fc
    invoke-virtual {v4}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v5

    goto :goto_fb
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 319
    invoke-direct {p0, p1, v0, v0}, <init>(Landroid/view/View;II)V

    .line 320
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .registers 5
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 349
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/view/View;IIZ)V

    .line 350
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .registers 11
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, -0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-array v0, v5, [I

    iput-object v0, p0, mDrawingLocation:[I

    .line 115
    new-array v0, v5, [I

    iput-object v0, p0, mScreenLocation:[I

    .line 116
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mTempRect:Landroid/graphics/Rect;

    .line 135
    iput v1, p0, mInputMethodMode:I

    .line 136
    iput v2, p0, mSoftInputMode:I

    .line 137
    iput-boolean v2, p0, mTouchable:Z

    .line 138
    iput-boolean v1, p0, mOutsideTouchable:Z

    .line 139
    iput-boolean v2, p0, mClippingEnabled:Z

    .line 140
    iput v4, p0, mSplitTouchEnabled:I

    .line 143
    iput-boolean v2, p0, mAllowScrollingAnchorParent:Z

    .line 144
    iput-boolean v1, p0, mLayoutInsetDecor:Z

    .line 146
    iput-boolean v2, p0, mAttachedInDecor:Z

    .line 147
    iput-boolean v1, p0, mAttachedInDecorSet:Z

    .line 152
    iput v3, p0, mWidth:I

    .line 155
    iput v3, p0, mHeight:I

    .line 171
    const/16 v0, 0x3e8

    iput v0, p0, mWindowLayoutType:I

    .line 174
    iput-boolean v1, p0, mIgnoreCheekPress:Z

    .line 175
    iput v1, p0, mStatusBarHeight:I

    .line 176
    iput-boolean v1, p0, mIsWindowPopupOutsideBound:Z

    .line 178
    iput v4, p0, mAnimationStyle:I

    .line 180
    iput-boolean v1, p0, mShowForAllUsers:Z

    .line 181
    iput-boolean v1, p0, mIgnoreMultiWindowLayout:Z

    .line 184
    iput-boolean v1, p0, mIsDeviceDefaultLight:Z

    .line 185
    iput v1, p0, mOldDisplayId:I

    .line 193
    new-instance v0, Landroid/widget/PopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 2177
    iput-boolean v1, p0, mDimBehind:Z

    .line 2178
    const/4 v0, 0x0

    iput v0, p0, mDimAmount:F

    .line 365
    if-eqz p1, :cond_64

    .line 366
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 367
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, mWindowManager:Landroid/view/WindowManager;

    .line 370
    :cond_64
    invoke-virtual {p0, p1}, setContentView(Landroid/view/View;)V

    .line 371
    invoke-virtual {p0, p2}, setWidth(I)V

    .line 372
    invoke-virtual {p0, p3}, setHeight(I)V

    .line 373
    invoke-virtual {p0, p4}, setFocusable(Z)V

    .line 374
    return-void
.end method

.method static synthetic access$000(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;
    .registers 2
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 78
    iget-object v0, p0, mAnchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow$PopupDecorView;
    .registers 2
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 78
    iget-object v0, p0, mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/PopupWindow;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 78
    iget-boolean v0, p0, mAboveAnchor:Z

    return v0
.end method

.method static synthetic access$1300()[I
    .registers 1

    .prologue
    .line 78
    sget-object v0, ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/PopupWindow;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 78
    iget v0, p0, mAnchorXoff:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/PopupWindow;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 78
    iget v0, p0, mAnchorYoff:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/PopupWindow;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 78
    iget v0, p0, mAnchoredGravity:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .registers 7
    .param p0, "x0"    # Landroid/widget/PopupWindow;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 78
    invoke-direct/range {p0 .. p5}, findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/PopupWindow;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/PopupWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1}, updateAboveAnchor(Z)V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 4
    .param p0, "x0"    # Landroid/widget/PopupWindow;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/ViewGroup;
    .param p3, "x3"    # Landroid/view/View;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 78
    iget-object v0, p0, mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/PopupWindow;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 78
    invoke-direct {p0}, getRelativeAnchorBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private computeAnimationResource()I
    .registers 3

    .prologue
    .line 1443
    iget v0, p0, mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 1444
    iget-boolean v0, p0, mIsDropdown:Z

    if-eqz v0, :cond_15

    .line 1445
    iget-boolean v0, p0, mAboveAnchor:Z

    if-eqz v0, :cond_11

    const v0, 0x10302e4

    .line 1451
    :goto_10
    return v0

    .line 1445
    :cond_11
    const v0, 0x10302e3

    goto :goto_10

    .line 1449
    :cond_15
    const/4 v0, 0x0

    goto :goto_10

    .line 1451
    :cond_17
    iget v0, p0, mAnimationStyle:I

    goto :goto_10
.end method

.method private computeFlags(I)I
    .registers 5
    .param p1, "curFlags"    # I

    .prologue
    const/high16 v2, 0x20000

    .line 1396
    const v0, -0x868219

    and-int/2addr p1, v0

    .line 1404
    iget-boolean v0, p0, mIgnoreCheekPress:Z

    if-eqz v0, :cond_e

    .line 1405
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 1407
    :cond_e
    iget-boolean v0, p0, mFocusable:Z

    if-nez v0, :cond_51

    .line 1408
    or-int/lit8 p1, p1, 0x8

    .line 1409
    iget v0, p0, mInputMethodMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    .line 1410
    or-int/2addr p1, v2

    .line 1415
    :cond_1a
    :goto_1a
    iget-boolean v0, p0, mTouchable:Z

    if-nez v0, :cond_20

    .line 1416
    or-int/lit8 p1, p1, 0x10

    .line 1418
    :cond_20
    iget-boolean v0, p0, mOutsideTouchable:Z

    if-eqz v0, :cond_27

    .line 1419
    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    .line 1421
    :cond_27
    iget-boolean v0, p0, mClippingEnabled:Z

    if-nez v0, :cond_2d

    .line 1422
    or-int/lit16 p1, p1, 0x200

    .line 1424
    :cond_2d
    invoke-virtual {p0}, isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 1425
    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    .line 1427
    :cond_36
    iget-boolean v0, p0, mLayoutInScreen:Z

    if-eqz v0, :cond_3c

    .line 1428
    or-int/lit16 p1, p1, 0x100

    .line 1430
    :cond_3c
    iget-boolean v0, p0, mLayoutInsetDecor:Z

    if-eqz v0, :cond_43

    .line 1431
    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    .line 1433
    :cond_43
    iget-boolean v0, p0, mNotTouchModal:Z

    if-eqz v0, :cond_49

    .line 1434
    or-int/lit8 p1, p1, 0x20

    .line 1436
    :cond_49
    iget-boolean v0, p0, mAttachedInDecor:Z

    if-eqz v0, :cond_50

    .line 1437
    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    .line 1439
    :cond_50
    return p1

    .line 1412
    :cond_51
    iget v0, p0, mInputMethodMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    .line 1413
    or-int/2addr p1, v2

    goto :goto_1a
.end method

.method private createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;
    .registers 8
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 1259
    iget-object v4, p0, mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1261
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_1f

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_1f

    .line 1262
    const/4 v1, -0x2

    .line 1267
    .local v1, "height":I
    :goto_e
    new-instance v0, Landroid/widget/PopupWindow$PopupBackgroundView;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v4}, Landroid/widget/PopupWindow$PopupBackgroundView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 1268
    .local v0, "backgroundView":Landroid/widget/PopupWindow$PopupBackgroundView;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1270
    .local v3, "listParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, p1, v3}, Landroid/widget/PopupWindow$PopupBackgroundView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1272
    return-object v0

    .line 1264
    .end local v0    # "backgroundView":Landroid/widget/PopupWindow$PopupBackgroundView;
    .end local v1    # "height":I
    .end local v3    # "listParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1f
    const/4 v1, -0x1

    .restart local v1    # "height":I
    goto :goto_e
.end method

.method private createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;
    .registers 8
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 1282
    iget-object v3, p0, mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1284
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v2, :cond_21

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_21

    .line 1285
    const/4 v1, -0x2

    .line 1290
    .local v1, "height":I
    :goto_f
    new-instance v0, Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Landroid/widget/PopupWindow$PopupDecorView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 1291
    .local v0, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    const/4 v3, -0x1

    invoke-virtual {v0, p1, v3, v1}, Landroid/widget/PopupWindow$PopupDecorView;->addView(Landroid/view/View;II)V

    .line 1292
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow$PopupDecorView;->setClipChildren(Z)V

    .line 1293
    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow$PopupDecorView;->setClipToPadding(Z)V

    .line 1294
    return-object v0

    .line 1287
    .end local v0    # "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    .end local v1    # "height":I
    :cond_21
    const/4 v1, -0x1

    .restart local v1    # "height":I
    goto :goto_f
.end method

.method private createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1352
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1358
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1359
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1360
    iget v1, p0, mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1361
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1362
    iget v1, p0, mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1363
    invoke-direct {p0}, computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1365
    iget-object v1, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_76

    .line 1366
    iget-object v1, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1371
    :goto_2e
    iget v1, p0, mHeightMode:I

    if-gez v1, :cond_7a

    .line 1372
    iget v1, p0, mHeightMode:I

    iput v1, p0, mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1378
    :goto_38
    iget-boolean v1, p0, mDimBehind:Z

    if-eqz v1, :cond_4d

    iget v1, p0, mDimAmount:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4d

    .line 1379
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1380
    iget v1, p0, mDimAmount:F

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1383
    :cond_4d
    iget v1, p0, mWidthMode:I

    if-gez v1, :cond_81

    .line 1384
    iget v1, p0, mWidthMode:I

    iput v1, p0, mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1390
    :goto_57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1392
    return-object v0

    .line 1368
    :cond_76
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_2e

    .line 1374
    :cond_7a
    iget v1, p0, mHeight:I

    iput v1, p0, mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_38

    .line 1386
    :cond_81
    iget v1, p0, mWidth:I

    iput v1, p0, mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_57
.end method

.method private dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 6
    .param p1, "decorView"    # Landroid/view/View;
    .param p2, "contentHolder"    # Landroid/view/ViewGroup;
    .param p3, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 1876
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1877
    iget-object v0, p0, mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 1880
    :cond_c
    if-eqz p2, :cond_11

    .line 1881
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1886
    :cond_11
    iput-object v1, p0, mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1887
    iput-object v1, p0, mBackgroundView:Landroid/view/View;

    .line 1888
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsTransitioningToDismiss:Z

    .line 1889
    return-void
.end method

.method private findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .registers 38
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "gravity"    # I

    .prologue
    .line 1472
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 1473
    .local v5, "anchorHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1474
    .local v6, "anchorWidth":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, mOverlapAnchor:Z

    move/from16 v29, v0

    if-eqz v29, :cond_12

    .line 1475
    sub-int p4, p4, v5

    .line 1478
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, mDrawingLocation:[I

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1479
    move-object/from16 v0, p0

    iget-object v0, v0, mDrawingLocation:[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget v29, v29, v30

    add-int v29, v29, p3

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1480
    move-object/from16 v0, p0

    iget-object v0, v0, mDrawingLocation:[I

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget v29, v29, v30

    add-int v29, v29, v5

    add-int v29, v29, p4

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1482
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v29

    move/from16 v0, p5

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v29

    and-int/lit8 v13, v29, 0x7

    .line 1484
    .local v13, "hgrav":I
    const/16 v29, 0x5

    move/from16 v0, v29

    if-ne v13, v0, :cond_6f

    .line 1487
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, mPopupWidth:I

    move/from16 v30, v0

    sub-int v30, v30, v6

    sub-int v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1490
    :cond_6f
    const/4 v15, 0x0

    .line 1492
    .local v15, "onTop":Z
    const/16 v29, 0x33

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1494
    move-object/from16 v0, p0

    iget-object v0, v0, mScreenLocation:[I

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1495
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 1496
    .local v8, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1498
    move-object/from16 v0, p0

    iget-object v0, v0, mScreenLocation:[I

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget v29, v29, v30

    add-int v29, v29, v5

    add-int v21, v29, p4

    .line 1499
    .local v21, "screenY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v19

    .line 1503
    .local v19, "root":Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    .line 1504
    .local v26, "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/16 v27, 0x0

    .line 1506
    .local v27, "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v26

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v29, v0

    if-eqz v29, :cond_b3

    move-object/from16 v27, v26

    .line 1507
    check-cast v27, Landroid/view/WindowManager$LayoutParams;

    .line 1509
    :cond_b3
    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    .line 1510
    .local v25, "visibleDisplayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1512
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsWindowPopupOutsideBound:Z

    move/from16 v29, v0

    if-eqz v29, :cond_ce

    .line 1513
    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1517
    :cond_ce
    move-object/from16 v0, p0

    iget v0, v0, mPopupHeight:I

    move/from16 v29, v0

    add-int v29, v29, v21

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_f6

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, mPopupWidth:I

    move/from16 v30, v0

    add-int v29, v29, v30

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v30

    sub-int v29, v29, v30

    if-lez v29, :cond_290

    .line 1519
    :cond_f6
    move-object/from16 v0, p0

    iget v0, v0, mPopupHeight:I

    move/from16 v29, v0

    add-int v29, v29, v21

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-gt v0, v1, :cond_3ee

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, mPopupWidth:I

    move/from16 v30, v0

    add-int v29, v29, v30

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v30

    sub-int v29, v29, v30

    if-lez v29, :cond_3ee

    const/4 v14, 0x1

    .line 1525
    .local v14, "isOnlyOverScreenWidth":Z
    :goto_11f
    move-object/from16 v0, p0

    iget-boolean v0, v0, mAllowScrollingAnchorParent:Z

    move/from16 v29, v0

    if-eqz v29, :cond_167

    .line 1526
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v22

    .line 1527
    .local v22, "scrollX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v23

    .line 1528
    .local v23, "scrollY":I
    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, mPopupWidth:I

    move/from16 v29, v0

    add-int v29, v29, v22

    add-int v29, v29, p3

    move-object/from16 v0, p0

    iget v0, v0, mPopupHeight:I

    move/from16 v30, v0

    add-int v30, v30, v23

    add-int v30, v30, v5

    add-int v30, v30, p4

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1530
    .local v17, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsDeviceDefaultLight:Z

    move/from16 v29, v0

    if-eqz v29, :cond_3f1

    .line 1531
    const/16 v29, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 1539
    .end local v17    # "r":Landroid/graphics/Rect;
    .end local v22    # "scrollX":I
    .end local v23    # "scrollY":I
    :cond_167
    :goto_167
    move-object/from16 v0, p0

    iget-object v0, v0, mDrawingLocation:[I

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1540
    move-object/from16 v0, p0

    iget-object v0, v0, mDrawingLocation:[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget v29, v29, v30

    add-int v29, v29, p3

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, mDrawingLocation:[I

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget v29, v29, v30

    add-int v29, v29, v5

    add-int v29, v29, p4

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1544
    const/16 v29, 0x5

    move/from16 v0, v29

    if-ne v13, v0, :cond_1b6

    .line 1545
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, mPopupWidth:I

    move/from16 v30, v0

    sub-int v30, v30, v6

    sub-int v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1549
    :cond_1b6
    move-object/from16 v0, p0

    iget-object v0, v0, mScreenLocation:[I

    move-object/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1550
    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mScreenLocation:[I

    move-object/from16 v30, v0

    const/16 v31, 0x1

    aget v30, v30, v31

    sub-int v29, v29, v30

    sub-int v29, v29, v5

    sub-int v29, v29, p4

    move-object/from16 v0, p0

    iget-object v0, v0, mScreenLocation:[I

    move-object/from16 v30, v0

    const/16 v31, 0x1

    aget v30, v30, v31

    sub-int v30, v30, p4

    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    sub-int v30, v30, v31

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_3fe

    const/4 v15, 0x1

    .line 1552
    :goto_1f0
    if-eqz v15, :cond_401

    .line 1553
    const/16 v29, 0x53

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1554
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v29

    move-object/from16 v0, p0

    iget-object v0, v0, mDrawingLocation:[I

    move-object/from16 v30, v0

    const/16 v31, 0x1

    aget v30, v30, v31

    sub-int v29, v29, v30

    add-int v29, v29, p4

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1555
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v29, v0

    if-gez v29, :cond_222

    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1557
    :cond_222
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsDeviceDefaultLight:Z

    move/from16 v29, v0

    if-eqz v29, :cond_248

    if-eqz v14, :cond_248

    .line 1558
    const/16 v29, 0x33

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1559
    move-object/from16 v0, p0

    iget-object v0, v0, mDrawingLocation:[I

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget v29, v29, v30

    add-int v29, v29, v5

    add-int v29, v29, p4

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1567
    :cond_248
    :goto_248
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, mPopupWidth:I

    move/from16 v30, v0

    add-int v29, v29, v30

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v30

    sub-int v29, v29, v30

    if-lez v29, :cond_290

    .line 1568
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, mPopupWidth:I

    move/from16 v30, v0

    add-int v29, v29, v30

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v30

    sub-int v7, v29, v30

    .line 1569
    .local v7, "diff":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v29, v0

    sub-int v29, v29, v7

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1570
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v29, v0

    if-gtz v29, :cond_290

    .line 1571
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1577
    .end local v7    # "diff":I
    .end local v14    # "isOnlyOverScreenWidth":Z
    :cond_290
    move-object/from16 v0, p0

    iget-boolean v0, v0, mClipToScreen:Z

    move/from16 v29, v0

    if-eqz v29, :cond_389

    invoke-direct/range {p0 .. p0}, isCascadeTypeMultiWindow()Z

    move-result v29

    if-nez v29, :cond_389

    .line 1578
    iget v0, v8, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v30, v0

    sub-int v11, v29, v30

    .line 1579
    .local v11, "displayFrameWidth":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v29, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v30, v0

    add-int v18, v29, v30

    .line 1581
    .local v18, "right":I
    iget v9, v8, Landroid/graphics/Rect;->left:I

    .line 1582
    .local v9, "displayFrameLeft":I
    iget v10, v8, Landroid/graphics/Rect;->top:I

    .line 1583
    .local v10, "displayFrameTop":I
    invoke-direct/range {p0 .. p0}, isMultiWindow()Z

    move-result v29

    if-eqz v29, :cond_2d7

    .line 1584
    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 1585
    .local v20, "rootLocation":[I
    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1586
    const/16 v29, 0x0

    aget v29, v20, v29

    sub-int v9, v9, v29

    .line 1587
    const/16 v29, 0x1

    aget v29, v20, v29

    sub-int v10, v10, v29

    .line 1591
    .end local v20    # "rootLocation":[I
    :cond_2d7
    move/from16 v0, v18

    if-le v0, v11, :cond_2eb

    .line 1592
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v29, v0

    sub-int v30, v18, v11

    sub-int v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1596
    :cond_2eb
    invoke-direct/range {p0 .. p0}, isMultiWindow()Z

    move-result v29

    if-eqz v29, :cond_319

    move-object/from16 v0, p0

    iget v0, v0, mPopupWidth:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-le v11, v0, :cond_319

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, mPopupWidth:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-ge v0, v1, :cond_319

    .line 1598
    move-object/from16 v0, p0

    iget v0, v0, mPopupWidth:I

    move/from16 v29, v0

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1602
    :cond_319
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v0, v9, :cond_339

    .line 1603
    move-object/from16 v0, p2

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1604
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1607
    :cond_339
    if-eqz v15, :cond_423

    .line 1608
    move-object/from16 v0, p0

    iget-object v0, v0, mScreenLocation:[I

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget v29, v29, v30

    sub-int v29, v29, p4

    move-object/from16 v0, p0

    iget v0, v0, mPopupHeight:I

    move/from16 v30, v0

    sub-int v16, v29, v30

    .line 1613
    .local v16, "popupTop":I
    const/16 v24, 0x0

    .line 1614
    .local v24, "statusBarHeight":I
    const-string/jumbo v29, "window"

    invoke-static/range {v29 .. v29}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v28

    .line 1616
    .local v28, "wm":Landroid/view/IWindowManager;
    :try_start_35c
    invoke-interface/range {v28 .. v28}, Landroid/view/IWindowManager;->isStatusBarVisible()Z

    move-result v29

    if-eqz v29, :cond_373

    .line 1617
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x1050017

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_372
    .catch Landroid/os/RemoteException; {:try_start_35c .. :try_end_372} :catch_417

    move-result v24

    .line 1624
    :cond_373
    :goto_373
    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_389

    .line 1625
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v29, v0

    sub-int v30, v24, v16

    sub-int v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1636
    .end local v9    # "displayFrameLeft":I
    .end local v10    # "displayFrameTop":I
    .end local v11    # "displayFrameWidth":I
    .end local v16    # "popupTop":I
    .end local v18    # "right":I
    .end local v24    # "statusBarHeight":I
    .end local v28    # "wm":Landroid/view/IWindowManager;
    :cond_389
    :goto_389
    invoke-direct/range {p0 .. p0}, isMultiWindow()Z

    move-result v29

    if-eqz v29, :cond_3b5

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v29, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_3b5

    if-nez v15, :cond_3b5

    .line 1638
    move-object/from16 v0, p0

    iget-object v0, v0, mScreenLocation:[I

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget v29, v29, v30

    add-int v29, v29, v5

    add-int v29, v29, p4

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1640
    :cond_3b5
    invoke-direct/range {p0 .. p0}, isCascadeTypeMultiWindow()Z

    move-result v29

    if-eqz v29, :cond_3dd

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isAttachedToFullWindow()Z

    move-result v29

    if-eqz v29, :cond_3dd

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v29, v0

    if-gez v29, :cond_3dd

    move-object/from16 v0, p0

    iget-object v0, v0, mScreenLocation:[I

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget v29, v29, v30

    if-gez v29, :cond_3dd

    .line 1646
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1651
    :cond_3dd
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v29, v0

    const/high16 v30, 0x10000000

    or-int v29, v29, v30

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1653
    return v15

    .line 1519
    :cond_3ee
    const/4 v14, 0x0

    goto/16 :goto_11f

    .line 1533
    .restart local v14    # "isOnlyOverScreenWidth":Z
    .restart local v17    # "r":Landroid/graphics/Rect;
    .restart local v22    # "scrollX":I
    .restart local v23    # "scrollY":I
    :cond_3f1
    const/16 v29, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    goto/16 :goto_167

    .line 1550
    .end local v17    # "r":Landroid/graphics/Rect;
    .end local v22    # "scrollX":I
    .end local v23    # "scrollY":I
    :cond_3fe
    const/4 v15, 0x0

    goto/16 :goto_1f0

    .line 1562
    :cond_401
    move-object/from16 v0, p0

    iget-object v0, v0, mDrawingLocation:[I

    move-object/from16 v29, v0

    const/16 v30, 0x1

    aget v29, v29, v30

    add-int v29, v29, v5

    add-int v29, v29, p4

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_248

    .line 1619
    .end local v14    # "isOnlyOverScreenWidth":Z
    .restart local v9    # "displayFrameLeft":I
    .restart local v10    # "displayFrameTop":I
    .restart local v11    # "displayFrameWidth":I
    .restart local v16    # "popupTop":I
    .restart local v18    # "right":I
    .restart local v24    # "statusBarHeight":I
    .restart local v28    # "wm":Landroid/view/IWindowManager;
    :catch_417
    move-exception v12

    .line 1620
    .local v12, "e":Landroid/os/RemoteException;
    const-string v29, "PopupWindow"

    invoke-virtual {v12}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_373

    .line 1629
    .end local v12    # "e":Landroid/os/RemoteException;
    .end local v16    # "popupTop":I
    .end local v24    # "statusBarHeight":I
    .end local v28    # "wm":Landroid/view/IWindowManager;
    :cond_423
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-static {v0, v10}, Ljava/lang/Math;->max(II)I

    move-result v29

    move/from16 v0, v29

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_389
.end method

.method private getRelativeAnchorBounds()Landroid/graphics/Rect;
    .registers 10

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1853
    iget-object v5, p0, mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_18

    iget-object v5, p0, mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move-object v0, v5

    .line 1854
    .local v0, "anchor":Landroid/view/View;
    :goto_10
    iget-object v3, p0, mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1855
    .local v3, "decor":Landroid/view/View;
    if-eqz v0, :cond_16

    if-nez v3, :cond_1a

    :cond_16
    move-object v2, v6

    .line 1865
    :goto_17
    return-object v2

    .end local v0    # "anchor":Landroid/view/View;
    .end local v3    # "decor":Landroid/view/View;
    :cond_18
    move-object v0, v6

    .line 1853
    goto :goto_10

    .line 1859
    .restart local v0    # "anchor":Landroid/view/View;
    .restart local v3    # "decor":Landroid/view/View;
    :cond_1a
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v1

    .line 1860
    .local v1, "anchorLocation":[I
    iget-object v5, p0, mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v5}, Landroid/widget/PopupWindow$PopupDecorView;->getLocationOnScreen()[I

    move-result-object v4

    .line 1863
    .local v4, "popupLocation":[I
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {v2, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1864
    .local v2, "bounds":Landroid/graphics/Rect;
    aget v5, v1, v7

    aget v6, v4, v7

    sub-int/2addr v5, v6

    aget v6, v1, v8

    aget v7, v4, v8

    sub-int/2addr v6, v7

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_17
.end method

.method private getTransition(I)Landroid/transition/Transition;
    .registers 6
    .param p1, "resId"    # I

    .prologue
    .line 385
    if-eqz p1, :cond_25

    const/high16 v3, 0x10f0000

    if-eq p1, v3, :cond_25

    .line 386
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v0

    .line 387
    .local v0, "inflater":Landroid/transition/TransitionInflater;
    invoke-virtual {v0, p1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v2

    .line 388
    .local v2, "transition":Landroid/transition/Transition;
    if-eqz v2, :cond_25

    .line 389
    instance-of v3, v2, Landroid/transition/TransitionSet;

    if-eqz v3, :cond_23

    move-object v3, v2

    check-cast v3, Landroid/transition/TransitionSet;

    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v3

    if-nez v3, :cond_23

    const/4 v1, 0x1

    .line 391
    .local v1, "isEmpty":Z
    :goto_20
    if-nez v1, :cond_25

    .line 396
    .end local v0    # "inflater":Landroid/transition/TransitionInflater;
    .end local v1    # "isEmpty":Z
    .end local v2    # "transition":Landroid/transition/Transition;
    :goto_22
    return-object v2

    .line 389
    .restart local v0    # "inflater":Landroid/transition/TransitionInflater;
    .restart local v2    # "transition":Landroid/transition/Transition;
    :cond_23
    const/4 v1, 0x0

    goto :goto_20

    .line 396
    .end local v0    # "inflater":Landroid/transition/TransitionInflater;
    .end local v2    # "transition":Landroid/transition/Transition;
    :cond_25
    const/4 v2, 0x0

    goto :goto_22
.end method

.method private getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 13
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x0

    .line 1657
    if-eqz p1, :cond_5

    if-nez p2, :cond_6

    .line 1707
    :cond_5
    :goto_5
    return-void

    .line 1661
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 1663
    .local v2, "root":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 1664
    .local v5, "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v6, 0x0

    .line 1666
    .local v6, "wlp":Landroid/view/WindowManager$LayoutParams;
    instance-of v7, v5, Landroid/view/WindowManager$LayoutParams;

    if-eqz v7, :cond_1f

    move-object v6, v5

    .line 1667
    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 1669
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v7, v7, 0x200

    if-nez v7, :cond_82

    move v7, v8

    :goto_1d
    iput-boolean v7, p0, mIsWindowPopupOutsideBound:Z

    .line 1672
    :cond_1f
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1673
    .local v4, "visibleDisplayFrame":Landroid/graphics/Rect;
    iput v8, p0, mStatusBarHeight:I

    .line 1674
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1675
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget-object v7, p0, mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1677
    if-eqz v6, :cond_53

    iget-object v7, p0, mContext:Landroid/content/Context;

    if-eqz v7, :cond_53

    .line 1678
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v9, v6, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v3, v7, v9

    .line 1679
    .local v3, "systemUiVisibility":I
    and-int/lit16 v7, v3, 0x404

    if-nez v7, :cond_53

    .line 1681
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x1050017

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, mStatusBarHeight:I

    .line 1685
    .end local v3    # "systemUiVisibility":I
    :cond_53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1687
    .local v0, "displayFrame":Landroid/graphics/Rect;
    invoke-direct {p0}, isCascadeTypeMultiWindow()Z

    move-result v7

    if-eqz v7, :cond_84

    .line 1690
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleContentFrame(Landroid/graphics/Rect;)V

    .line 1692
    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 1693
    iput v8, v4, Landroid/graphics/Rect;->top:I

    .line 1694
    iget v7, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 1695
    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    .line 1703
    :goto_77
    iget-boolean v7, p0, mIsWindowPopupOutsideBound:Z

    if-eqz v7, :cond_7e

    .line 1704
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1706
    :cond_7e
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_5

    .line 1669
    .end local v0    # "displayFrame":Landroid/graphics/Rect;
    .end local v1    # "dm":Landroid/util/DisplayMetrics;
    .end local v4    # "visibleDisplayFrame":Landroid/graphics/Rect;
    :cond_82
    const/4 v7, 0x1

    goto :goto_1d

    .line 1697
    .restart local v0    # "displayFrame":Landroid/graphics/Rect;
    .restart local v1    # "dm":Landroid/util/DisplayMetrics;
    .restart local v4    # "visibleDisplayFrame":Landroid/graphics/Rect;
    :cond_84
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1698
    iput v8, v4, Landroid/graphics/Rect;->left:I

    .line 1699
    iget v7, p0, mStatusBarHeight:I

    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 1700
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 1701
    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_77
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1306
    iget-object v1, p0, mContext:Landroid/content/Context;

    if-eqz v1, :cond_c

    .line 1307
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1310
    :cond_c
    iget-object v0, p0, mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1311
    .local v0, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    iget-boolean v1, p0, mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->setFitsSystemWindows(Z)V

    .line 1314
    iget-boolean v1, p0, mShowForAllUsers:Z

    if-eqz v1, :cond_1d

    .line 1315
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1317
    :cond_1d
    iget-boolean v1, p0, mIgnoreMultiWindowLayout:Z

    if-eqz v1, :cond_27

    .line 1318
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 1323
    :cond_27
    invoke-direct {p0}, setLayoutDirectionFromAnchor()V

    .line 1329
    iget-object v1, p0, mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1330
    iget-object v1, p0, mEnterTransition:Landroid/transition/Transition;

    if-eqz v1, :cond_38

    .line 1331
    iget-object v1, p0, mEnterTransition:Landroid/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->requestEnterTransition(Landroid/transition/Transition;)V

    .line 1333
    :cond_38
    return-void
.end method

.method private isCascadeTypeMultiWindow()Z
    .registers 3

    .prologue
    .line 2197
    iget-object v1, p0, mContext:Landroid/content/Context;

    if-eqz v1, :cond_14

    .line 2198
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 2199
    .local v0, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2200
    const/4 v1, 0x1

    .line 2202
    .end local v0    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private isMultiWindow()Z
    .registers 3

    .prologue
    .line 2189
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 2190
    .local v0, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v1

    if-nez v1, :cond_10

    .line 2191
    const/4 v1, 0x1

    .line 2193
    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private isSplitTypeMultiWindow()Z
    .registers 3

    .prologue
    .line 2206
    iget-object v1, p0, mContext:Landroid/content/Context;

    if-eqz v1, :cond_14

    .line 2207
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 2208
    .local v0, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 2209
    const/4 v1, 0x1

    .line 2211
    .end local v0    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x0

    goto :goto_13
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .registers 10
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1202
    iget-object v5, p0, mContentView:Landroid/view/View;

    if-eqz v5, :cond_e

    iget-object v5, p0, mContext:Landroid/content/Context;

    if-eqz v5, :cond_e

    iget-object v5, p0, mWindowManager:Landroid/view/WindowManager;

    if-nez v5, :cond_16

    .line 1203
    :cond_e
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1209
    :cond_16
    iget-object v5, p0, mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz v5, :cond_1f

    .line 1210
    iget-object v5, p0, mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v5}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    .line 1215
    :cond_1f
    iget-object v5, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_92

    .line 1216
    iget-object v5, p0, mContentView:Landroid/view/View;

    invoke-direct {p0, v5}, createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;

    move-result-object v5

    iput-object v5, p0, mBackgroundView:Landroid/view/View;

    .line 1217
    iget-object v5, p0, mBackgroundView:Landroid/view/View;

    iget-object v6, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1222
    :goto_32
    iget-object v5, p0, mBackgroundView:Landroid/view/View;

    invoke-direct {p0, v5}, createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;

    move-result-object v5

    iput-object v5, p0, mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1225
    iget-object v5, p0, mBackgroundView:Landroid/view/View;

    iget v6, p0, mElevation:F

    invoke-virtual {v5, v6}, Landroid/view/View;->setElevation(F)V

    .line 1229
    iget-object v5, p0, mBackgroundView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getZ()F

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    .line 1230
    .local v1, "surfaceInset":I
    iget-object v5, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1231
    iput-boolean v3, p1, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 1233
    iget-object v5, p0, mContentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_97

    :goto_60
    iput-boolean v3, p0, mPopupViewInitialLayoutDirectionInherited:Z

    .line 1235
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v3, p0, mPopupWidth:I

    .line 1236
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v3, p0, mPopupHeight:I

    .line 1240
    iget v3, p0, mPopupWidth:I

    if-nez v3, :cond_91

    iget-object v3, p0, mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz v3, :cond_91

    iget-object v3, p0, mContext:Landroid/content/Context;

    if-eqz v3, :cond_91

    .line 1241
    invoke-direct {p0}, isCascadeTypeMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_91

    .line 1242
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1243
    .local v2, "widthMeasureSpec":I
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1244
    .local v0, "heightMeasureSpec":I
    iget-object v3, p0, mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v3, v2, v0}, Landroid/widget/PopupWindow$PopupDecorView;->measure(II)V

    .line 1245
    iget-object v3, p0, mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v3}, Landroid/widget/PopupWindow$PopupDecorView;->getMeasuredWidth()I

    move-result v3

    iput v3, p0, mPopupWidth:I

    .line 1250
    .end local v0    # "heightMeasureSpec":I
    .end local v2    # "widthMeasureSpec":I
    :cond_91
    return-void

    .line 1219
    .end local v1    # "surfaceInset":I
    :cond_92
    iget-object v5, p0, mContentView:Landroid/view/View;

    iput-object v5, p0, mBackgroundView:Landroid/view/View;

    goto :goto_32

    .restart local v1    # "surfaceInset":I
    :cond_97
    move v3, v4

    .line 1233
    goto :goto_60
.end method

.method private registerForScrollChanged(Landroid/view/View;III)V
    .registers 7
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .prologue
    .line 2147
    invoke-direct {p0}, unregisterForScrollChanged()V

    .line 2149
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, mAnchor:Ljava/lang/ref/WeakReference;

    .line 2151
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 2152
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_15

    .line 2153
    iget-object v1, p0, mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 2156
    :cond_15
    iput p2, p0, mAnchorXoff:I

    .line 2157
    iput p3, p0, mAnchorYoff:I

    .line 2158
    iput p4, p0, mAnchoredGravity:I

    .line 2159
    return-void
.end method

.method private setLayoutDirectionFromAnchor()V
    .registers 4

    .prologue
    .line 1336
    iget-object v1, p0, mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1b

    .line 1337
    iget-object v1, p0, mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1338
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_1b

    iget-boolean v1, p0, mPopupViewInitialLayoutDirectionInherited:Z

    if-eqz v1, :cond_1b

    .line 1339
    iget-object v1, p0, mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow$PopupDecorView;->setLayoutDirection(I)V

    .line 1342
    .end local v0    # "anchor":Landroid/view/View;
    :cond_1b
    return-void
.end method

.method private unregisterForScrollChanged()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2136
    iget-object v1, p0, mAnchor:Ljava/lang/ref/WeakReference;

    .line 2137
    .local v1, "anchorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-nez v1, :cond_14

    move-object v0, v4

    .line 2138
    .local v0, "anchor":Landroid/view/View;
    :goto_6
    if-eqz v0, :cond_11

    .line 2139
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 2140
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    iget-object v3, p0, mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 2143
    .end local v2    # "vto":Landroid/view/ViewTreeObserver;
    :cond_11
    iput-object v4, p0, mAnchor:Ljava/lang/ref/WeakReference;

    .line 2144
    return-void

    .line 2137
    .end local v0    # "anchor":Landroid/view/View;
    :cond_14
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    move-object v0, v3

    goto :goto_6
.end method

.method private update(Landroid/view/View;ZIIZII)V
    .registers 25
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "updateLocation"    # Z
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "updateDimension"    # Z
    .param p6, "width"    # I
    .param p7, "height"    # I

    .prologue
    .line 2085
    invoke-virtual/range {p0 .. p0}, isShowing()Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, mContentView:Landroid/view/View;

    if-nez v4, :cond_d

    .line 2123
    :cond_c
    :goto_c
    return-void

    .line 2089
    :cond_d
    move-object/from16 v0, p0

    iget-object v14, v0, mAnchor:Ljava/lang/ref/WeakReference;

    .line 2090
    .local v14, "oldAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    if-eqz p2, :cond_9e

    move-object/from16 v0, p0

    iget v4, v0, mAnchorXoff:I

    move/from16 v0, p3

    if-ne v4, v0, :cond_23

    move-object/from16 v0, p0

    iget v4, v0, mAnchorYoff:I

    move/from16 v0, p4

    if-eq v4, v0, :cond_9e

    :cond_23
    const/4 v13, 0x1

    .line 2091
    .local v13, "needsUpdate":Z
    :goto_24
    if-eqz v14, :cond_36

    invoke-virtual {v14}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p1

    if-ne v4, v0, :cond_36

    if-eqz v13, :cond_a0

    move-object/from16 v0, p0

    iget-boolean v4, v0, mIsDropdown:Z

    if-nez v4, :cond_a0

    .line 2092
    :cond_36
    move-object/from16 v0, p0

    iget v4, v0, mAnchoredGravity:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3, v4}, registerForScrollChanged(Landroid/view/View;III)V

    .line 2099
    :cond_45
    :goto_45
    if-eqz p5, :cond_5d

    .line 2100
    const/4 v4, -0x1

    move/from16 v0, p6

    if-ne v0, v4, :cond_af

    .line 2101
    move-object/from16 v0, p0

    iget v0, v0, mPopupWidth:I

    move/from16 p6, v0

    .line 2105
    :goto_52
    const/4 v4, -0x1

    move/from16 v0, p7

    if-ne v0, v4, :cond_b6

    .line 2106
    move-object/from16 v0, p0

    iget v0, v0, mPopupHeight:I

    move/from16 p7, v0

    .line 2112
    :cond_5d
    :goto_5d
    move-object/from16 v0, p0

    iget-object v4, v0, mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v4}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 2114
    .local v6, "p":Landroid/view/WindowManager$LayoutParams;
    iget v15, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2115
    .local v15, "x":I
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v16, v0

    .line 2116
    .local v16, "y":I
    if-eqz p2, :cond_bd

    .line 2117
    move-object/from16 v0, p0

    iget v9, v0, mAnchoredGravity:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v4 .. v9}, findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, updateAboveAnchor(Z)V

    .line 2122
    :goto_84
    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v9, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v15, v4, :cond_92

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v0, v16

    if-eq v0, v4, :cond_d7

    :cond_92
    const/4 v12, 0x1

    :goto_93
    move-object/from16 v7, p0

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v7 .. v12}, update(IIIIZ)V

    goto/16 :goto_c

    .line 2090
    .end local v6    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v13    # "needsUpdate":Z
    .end local v15    # "x":I
    .end local v16    # "y":I
    :cond_9e
    const/4 v13, 0x0

    goto :goto_24

    .line 2093
    .restart local v13    # "needsUpdate":Z
    :cond_a0
    if-eqz v13, :cond_45

    .line 2095
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, mAnchorXoff:I

    .line 2096
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, mAnchorYoff:I

    goto :goto_45

    .line 2103
    :cond_af
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, mPopupWidth:I

    goto :goto_52

    .line 2108
    :cond_b6
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, mPopupHeight:I

    goto :goto_5d

    .line 2119
    .restart local v6    # "p":Landroid/view/WindowManager$LayoutParams;
    .restart local v15    # "x":I
    .restart local v16    # "y":I
    :cond_bd
    move-object/from16 v0, p0

    iget v7, v0, mAnchorXoff:I

    move-object/from16 v0, p0

    iget v8, v0, mAnchorYoff:I

    move-object/from16 v0, p0

    iget v9, v0, mAnchoredGravity:I

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, updateAboveAnchor(Z)V

    goto :goto_84

    .line 2122
    :cond_d7
    const/4 v12, 0x0

    goto :goto_93
.end method

.method private updateAboveAnchor(Z)V
    .registers 4
    .param p1, "aboveAnchor"    # Z

    .prologue
    .line 1159
    iget-boolean v0, p0, mAboveAnchor:Z

    if-eq p1, v0, :cond_1d

    .line 1160
    iput-boolean p1, p0, mAboveAnchor:Z

    .line 1162
    iget-object v0, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1d

    iget-object v0, p0, mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_1d

    .line 1166
    iget-object v0, p0, mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_26

    .line 1167
    iget-boolean v0, p0, mAboveAnchor:Z

    if-eqz v0, :cond_1e

    .line 1168
    iget-object v0, p0, mBackgroundView:Landroid/view/View;

    iget-object v1, p0, mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1177
    :cond_1d
    :goto_1d
    return-void

    .line 1170
    :cond_1e
    iget-object v0, p0, mBackgroundView:Landroid/view/View;

    iget-object v1, p0, mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1d

    .line 1173
    :cond_26
    iget-object v0, p0, mBackgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_1d
.end method


# virtual methods
.method public dismiss()V
    .registers 9

    .prologue
    .line 1798
    invoke-virtual {p0}, isShowing()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-boolean v7, p0, mIsTransitioningToDismiss:Z

    if-eqz v7, :cond_b

    .line 1850
    :cond_a
    :goto_a
    return-void

    .line 1802
    :cond_b
    iget-object v3, p0, mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    .line 1803
    .local v3, "decorView":Landroid/widget/PopupWindow$PopupDecorView;
    iget-object v2, p0, mContentView:Landroid/view/View;

    .line 1806
    .local v2, "contentView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1807
    .local v1, "contentParent":Landroid/view/ViewParent;
    instance-of v7, v1, Landroid/view/ViewGroup;

    if-eqz v7, :cond_65

    move-object v0, v1

    .line 1808
    check-cast v0, Landroid/view/ViewGroup;

    .line 1814
    .local v0, "contentHolder":Landroid/view/ViewGroup;
    :goto_1a
    invoke-virtual {v3}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    .line 1816
    const/4 v7, 0x0

    iput-boolean v7, p0, mIsShowing:Z

    .line 1817
    const/4 v7, 0x1

    iput-boolean v7, p0, mIsTransitioningToDismiss:Z

    .line 1819
    iget-object v5, p0, mExitTransition:Landroid/transition/Transition;

    .line 1820
    .local v5, "exitTransition":Landroid/transition/Transition;
    if-eqz v5, :cond_67

    invoke-virtual {v3}, Landroid/widget/PopupWindow$PopupDecorView;->isLaidOut()Z

    move-result v7

    if-eqz v7, :cond_67

    .line 1822
    invoke-virtual {v3}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 1823
    .local v6, "p":Landroid/view/WindowManager$LayoutParams;
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1824
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1825
    iget-object v7, p0, mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v7, v3, v6}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1827
    invoke-direct {p0}, getRelativeAnchorBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 1828
    .local v4, "epicenter":Landroid/graphics/Rect;
    new-instance v7, Landroid/widget/PopupWindow$2;

    invoke-direct {v7, p0, v4}, Landroid/widget/PopupWindow$2;-><init>(Landroid/widget/PopupWindow;Landroid/graphics/Rect;)V

    invoke-virtual {v5, v7}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    .line 1834
    new-instance v7, Landroid/widget/PopupWindow$3;

    invoke-direct {v7, p0, v3, v0, v2}, Landroid/widget/PopupWindow$3;-><init>(Landroid/widget/PopupWindow;Landroid/widget/PopupWindow$PopupDecorView;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v3, v5, v7}, Landroid/widget/PopupWindow$PopupDecorView;->startExitTransition(Landroid/transition/Transition;Landroid/transition/Transition$TransitionListener;)V

    .line 1845
    .end local v4    # "epicenter":Landroid/graphics/Rect;
    .end local v6    # "p":Landroid/view/WindowManager$LayoutParams;
    :goto_58
    invoke-direct {p0}, unregisterForScrollChanged()V

    .line 1847
    iget-object v7, p0, mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v7, :cond_a

    .line 1848
    iget-object v7, p0, mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v7}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_a

    .line 1810
    .end local v0    # "contentHolder":Landroid/view/ViewGroup;
    .end local v5    # "exitTransition":Landroid/transition/Transition;
    :cond_65
    const/4 v0, 0x0

    .restart local v0    # "contentHolder":Landroid/view/ViewGroup;
    goto :goto_1a

    .line 1841
    .restart local v5    # "exitTransition":Landroid/transition/Transition;
    :cond_67
    invoke-direct {p0, v3, v0, v2}, dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_58
.end method

.method public getAnimationStyle()I
    .registers 2

    .prologue
    .line 485
    iget v0, p0, mAnimationStyle:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 407
    iget-object v0, p0, mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .registers 2

    .prologue
    .line 529
    iget-object v0, p0, mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getElevation()F
    .registers 2

    .prologue
    .line 465
    iget v0, p0, mElevation:F

    return v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 942
    iget v0, p0, mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .registers 2

    .prologue
    .line 617
    iget v0, p0, mInputMethodMode:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .registers 3
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 1720
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .registers 4
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I

    .prologue
    .line 1735
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .registers 14
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I
    .param p3, "ignoreBottomDecorations"    # Z

    .prologue
    const/4 v9, 0x1

    .line 1756
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 1757
    .local v3, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1758
    invoke-direct {p0, p1, v3}, getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1760
    iget-object v1, p0, mDrawingLocation:[I

    .line 1761
    .local v1, "anchorPos":[I
    invoke-direct {p0}, isCascadeTypeMultiWindow()Z

    move-result v8

    if-eqz v8, :cond_60

    .line 1762
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1767
    :goto_17
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 1768
    .local v2, "bottomEdge":I
    if-eqz p3, :cond_2f

    invoke-direct {p0}, isCascadeTypeMultiWindow()Z

    move-result v8

    if-nez v8, :cond_2f

    .line 1770
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1771
    .local v6, "res":Landroid/content/res/Resources;
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v2, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1774
    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_2f
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1775
    .local v0, "anchorHeight":I
    iget-boolean v8, p0, mOverlapAnchor:Z

    if-eqz v8, :cond_38

    .line 1776
    const/4 v0, 0x0

    .line 1777
    :cond_38
    aget v8, v1, v9

    add-int/2addr v8, v0

    sub-int v8, v2, v8

    sub-int v4, v8, p2

    .line 1778
    .local v4, "distanceToBottom":I
    aget v8, v1, v9

    iget v9, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    add-int v5, v8, p2

    .line 1781
    .local v5, "distanceToTop":I
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1782
    .local v7, "returnedHeight":I
    iget-object v8, p0, mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_5f

    .line 1783
    iget-object v8, p0, mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1784
    iget-object v8, p0, mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    sub-int/2addr v7, v8

    .line 1787
    :cond_5f
    return v7

    .line 1764
    .end local v0    # "anchorHeight":I
    .end local v2    # "bottomEdge":I
    .end local v4    # "distanceToBottom":I
    .end local v5    # "distanceToTop":I
    .end local v7    # "returnedHeight":I
    :cond_60
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    goto :goto_17
.end method

.method public getOverlapAnchor()Z
    .registers 2

    .prologue
    .line 1008
    iget-boolean v0, p0, mOverlapAnchor:Z

    return v0
.end method

.method public getSoftInputMode()I
    .registers 2

    .prologue
    .line 658
    iget v0, p0, mSoftInputMode:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 966
    iget v0, p0, mWidth:I

    return v0
.end method

.method public getWindowLayoutType()I
    .registers 2

    .prologue
    .line 893
    iget v0, p0, mWindowLayoutType:I

    return v0
.end method

.method public isAboveAnchor()Z
    .registers 2

    .prologue
    .line 1191
    iget-boolean v0, p0, mAboveAnchor:Z

    return v0
.end method

.method public isAttachedInDecor()Z
    .registers 2

    .prologue
    .line 838
    iget-boolean v0, p0, mAttachedInDecor:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .registers 2

    .prologue
    .line 732
    iget-boolean v0, p0, mClippingEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .registers 2

    .prologue
    .line 588
    iget-boolean v0, p0, mFocusable:Z

    return v0
.end method

.method public isLayoutInScreenEnabled()Z
    .registers 2

    .prologue
    .line 813
    iget-boolean v0, p0, mLayoutInScreen:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .registers 2

    .prologue
    .line 700
    iget-boolean v0, p0, mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 1017
    iget-boolean v0, p0, mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 782
    iget v2, p0, mSplitTouchEnabled:I

    if-gez v2, :cond_19

    iget-object v2, p0, mContext:Landroid/content/Context;

    if-eqz v2, :cond_19

    .line 783
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_17

    .line 785
    :cond_16
    :goto_16
    return v0

    :cond_17
    move v0, v1

    .line 783
    goto :goto_16

    .line 785
    :cond_19
    iget v2, p0, mSplitTouchEnabled:I

    if-eq v2, v0, :cond_16

    move v0, v1

    goto :goto_16
.end method

.method public isTouchable()Z
    .registers 2

    .prologue
    .line 669
    iget-boolean v0, p0, mTouchable:Z

    return v0
.end method

.method setAllowScrollingAnchorParent(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 771
    iput-boolean p1, p0, mAllowScrollingAnchorParent:Z

    .line 772
    return-void
.end method

.method public setAnimationStyle(I)V
    .registers 2
    .param p1, "animationStyle"    # I

    .prologue
    .line 518
    iput p1, p0, mAnimationStyle:I

    .line 519
    return-void
.end method

.method public setAttachedInDecor(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 854
    iput-boolean p1, p0, mAttachedInDecor:Z

    .line 855
    const/4 v0, 0x1

    iput-boolean v0, p0, mAttachedInDecorSet:Z

    .line 856
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 10
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 419
    iput-object p1, p0, mBackground:Landroid/graphics/drawable/Drawable;

    .line 430
    iget-object v5, p0, mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v5, v5, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v5, :cond_2f

    .line 431
    iget-object v4, p0, mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v4, Landroid/graphics/drawable/StateListDrawable;

    .line 434
    .local v4, "stateList":Landroid/graphics/drawable/StateListDrawable;
    sget-object v5, ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v0

    .line 438
    .local v0, "aboveAnchorStateIndex":I
    invoke-virtual {v4}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v2

    .line 439
    .local v2, "count":I
    const/4 v1, -0x1

    .line 440
    .local v1, "belowAnchorStateIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    if-ge v3, v2, :cond_1f

    .line 441
    if-eq v3, v0, :cond_30

    .line 442
    move v1, v3

    .line 449
    :cond_1f
    if-eq v0, v6, :cond_33

    if-eq v1, v6, :cond_33

    .line 450
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 451
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 457
    .end local v0    # "aboveAnchorStateIndex":I
    .end local v1    # "belowAnchorStateIndex":I
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v4    # "stateList":Landroid/graphics/drawable/StateListDrawable;
    :cond_2f
    :goto_2f
    return-void

    .line 440
    .restart local v0    # "aboveAnchorStateIndex":I
    .restart local v1    # "belowAnchorStateIndex":I
    .restart local v2    # "count":I
    .restart local v3    # "i":I
    .restart local v4    # "stateList":Landroid/graphics/drawable/StateListDrawable;
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 453
    :cond_33
    iput-object v7, p0, mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 454
    iput-object v7, p0, mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2f
.end method

.method public setClipToScreenEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 760
    iput-boolean p1, p0, mClipToScreen:Z

    .line 761
    if-nez p1, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0}, setClippingEnabled(Z)V

    .line 762
    return-void

    .line 761
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public setClippingEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 750
    iput-boolean p1, p0, mClippingEnabled:Z

    .line 751
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .registers 4
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 544
    invoke-virtual {p0}, isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 570
    :cond_6
    :goto_6
    return-void

    .line 548
    :cond_7
    iput-object p1, p0, mContentView:Landroid/view/View;

    .line 550
    iget-object v0, p0, mContext:Landroid/content/Context;

    if-nez v0, :cond_19

    iget-object v0, p0, mContentView:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 551
    iget-object v0, p0, mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 554
    :cond_19
    iget-object v0, p0, mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_2e

    iget-object v0, p0, mContentView:Landroid/view/View;

    if-eqz v0, :cond_2e

    .line 555
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, mWindowManager:Landroid/view/WindowManager;

    .line 562
    :cond_2e
    iget-object v0, p0, mContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, mAttachedInDecorSet:Z

    if-nez v0, :cond_6

    .line 566
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_47

    const/4 v0, 0x1

    :goto_43
    invoke-virtual {p0, v0}, setAttachedInDecor(Z)V

    goto :goto_6

    :cond_47
    const/4 v0, 0x0

    goto :goto_43
.end method

.method public setDimBehind(ZF)V
    .registers 3
    .param p1, "dimBehind"    # Z
    .param p2, "dimAmount"    # F

    .prologue
    .line 2183
    iput-boolean p1, p0, mDimBehind:Z

    .line 2184
    iput p2, p0, mDimAmount:F

    .line 2185
    return-void
.end method

.method public setElevation(F)V
    .registers 2
    .param p1, "elevation"    # F

    .prologue
    .line 476
    iput p1, p0, mElevation:F

    .line 477
    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "enterTransition"    # Landroid/transition/Transition;

    .prologue
    .line 377
    iput-object p1, p0, mEnterTransition:Landroid/transition/Transition;

    .line 378
    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .registers 2
    .param p1, "exitTransition"    # Landroid/transition/Transition;

    .prologue
    .line 381
    iput-object p1, p0, mExitTransition:Landroid/transition/Transition;

    .line 382
    return-void
.end method

.method public setFocusable(Z)V
    .registers 2
    .param p1, "focusable"    # Z

    .prologue
    .line 608
    iput-boolean p1, p0, mFocusable:Z

    .line 609
    return-void
.end method

.method public setHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .prologue
    .line 956
    iput p1, p0, mHeight:I

    .line 957
    return-void
.end method

.method public setIgnoreCheekPress()V
    .registers 2

    .prologue
    .line 500
    const/4 v0, 0x1

    iput-boolean v0, p0, mIgnoreCheekPress:Z

    .line 501
    return-void
.end method

.method public setIgnoreMultiWindowLayout(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2173
    iput-boolean p1, p0, mIgnoreMultiWindowLayout:Z

    .line 2174
    return-void
.end method

.method public setInputMethodMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .prologue
    .line 634
    iput p1, p0, mInputMethodMode:I

    .line 635
    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 825
    iput-boolean p1, p0, mLayoutInScreen:Z

    .line 826
    return-void
.end method

.method public setLayoutInsetDecor(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 871
    iput-boolean p1, p0, mLayoutInsetDecor:Z

    .line 872
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .registers 2
    .param p1, "onDismissListener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 1897
    iput-object p1, p0, mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 1898
    return-void
.end method

.method public setOutsideTouchable(Z)V
    .registers 2
    .param p1, "touchable"    # Z

    .prologue
    .line 721
    iput-boolean p1, p0, mOutsideTouchable:Z

    .line 722
    return-void
.end method

.method public setOverlapAnchor(Z)V
    .registers 2
    .param p1, "overlapAnchor"    # Z

    .prologue
    .line 996
    iput-boolean p1, p0, mOverlapAnchor:Z

    .line 997
    return-void
.end method

.method public setShowForAllUsers(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2166
    iput-boolean p1, p0, mShowForAllUsers:Z

    .line 2167
    return-void
.end method

.method public setSoftInputMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .prologue
    .line 648
    iput p1, p0, mSoftInputMode:I

    .line 649
    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 802
    if-eqz p1, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput v0, p0, mSplitTouchEnabled:I

    .line 803
    return-void

    .line 802
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .registers 2
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 577
    iput-object p1, p0, mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 578
    return-void
.end method

.method public setTouchModal(Z)V
    .registers 3
    .param p1, "touchModal"    # Z

    .prologue
    .line 902
    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, mNotTouchModal:Z

    .line 903
    return-void

    .line 902
    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public setTouchable(Z)V
    .registers 2
    .param p1, "touchable"    # Z

    .prologue
    .line 688
    iput-boolean p1, p0, mTouchable:Z

    .line 689
    return-void
.end method

.method public setWidth(I)V
    .registers 2
    .param p1, "width"    # I

    .prologue
    .line 980
    iput p1, p0, mWidth:I

    .line 981
    return-void
.end method

.method public setWindowLayoutMode(II)V
    .registers 3
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 931
    iput p1, p0, mWidthMode:I

    .line 932
    iput p2, p0, mHeightMode:I

    .line 933
    return-void
.end method

.method public setWindowLayoutType(I)V
    .registers 2
    .param p1, "layoutType"    # I

    .prologue
    .line 884
    iput p1, p0, mWindowLayoutType:I

    .line 885
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .registers 3
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 1093
    invoke-virtual {p0, p1, v0, v0}, showAsDropDown(Landroid/view/View;II)V

    .line 1094
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .registers 5
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    .line 1114
    const v0, 0x800033

    invoke-virtual {p0, p1, p2, p3, v0}, showAsDropDown(Landroid/view/View;III)V

    .line 1115
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .registers 12
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .prologue
    const/4 v1, 0x1

    .line 1138
    invoke-virtual {p0}, isShowing()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, mContentView:Landroid/view/View;

    if-nez v0, :cond_c

    .line 1156
    :cond_b
    :goto_b
    return-void

    .line 1142
    :cond_c
    iget-object v0, p0, mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 1144
    invoke-direct {p0, p1, p2, p3, p4}, registerForScrollChanged(Landroid/view/View;III)V

    .line 1146
    iput-boolean v1, p0, mIsShowing:Z

    .line 1147
    iput-boolean v1, p0, mIsDropdown:Z

    .line 1149
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1150
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v2}, preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 1152
    invoke-direct/range {v0 .. v5}, findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v6

    .line 1153
    .local v6, "aboveAnchor":Z
    invoke-direct {p0, v6}, updateAboveAnchor(Z)V

    .line 1155
    invoke-direct {p0, v2}, invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_b
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .registers 7
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 1050
    invoke-virtual {p0}, isShowing()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, mContentView:Landroid/view/View;

    if-nez v1, :cond_b

    .line 1078
    :cond_a
    :goto_a
    return-void

    .line 1054
    :cond_b
    iget-object v1, p0, mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v1}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    .line 1056
    invoke-direct {p0}, unregisterForScrollChanged()V

    .line 1058
    const/4 v1, 0x1

    iput-boolean v1, p0, mIsShowing:Z

    .line 1059
    const/4 v1, 0x0

    iput-boolean v1, p0, mIsDropdown:Z

    .line 1061
    invoke-direct {p0, p1}, createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1062
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v0}, preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 1065
    if-eqz p2, :cond_24

    .line 1066
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1069
    :cond_24
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1070
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1073
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    .line 1077
    invoke-direct {p0, v0}, invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_a
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .registers 6
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 1035
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, showAtLocation(Landroid/os/IBinder;III)V

    .line 1036
    return-void
.end method

.method public update()V
    .registers 7

    .prologue
    .line 1915
    invoke-virtual {p0}, isShowing()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, mContentView:Landroid/view/View;

    if-nez v4, :cond_b

    .line 1940
    :cond_a
    :goto_a
    return-void

    .line 1919
    :cond_b
    iget-object v4, p0, mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v4}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 1922
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    .line 1924
    .local v3, "update":Z
    invoke-direct {p0}, computeAnimationResource()I

    move-result v0

    .line 1925
    .local v0, "newAnim":I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v0, v4, :cond_1f

    .line 1926
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1927
    const/4 v3, 0x1

    .line 1930
    :cond_1f
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v4}, computeFlags(I)I

    move-result v1

    .line 1931
    .local v1, "newFlags":I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v4, :cond_2c

    .line 1932
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1933
    const/4 v3, 0x1

    .line 1936
    :cond_2c
    if-eqz v3, :cond_a

    .line 1937
    invoke-direct {p0}, setLayoutDirectionFromAnchor()V

    .line 1938
    iget-object v4, p0, mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_a
.end method

.method public update(II)V
    .registers 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1952
    iget-object v0, p0, mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 1954
    .local v6, "p":Landroid/view/WindowManager$LayoutParams;
    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, update(IIIIZ)V

    .line 1955
    return-void
.end method

.method public update(IIII)V
    .registers 11
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1970
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, update(IIIIZ)V

    .line 1971
    return-void
.end method

.method public update(IIIIZ)V
    .registers 14
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "force"    # Z

    .prologue
    const/4 v7, -0x1

    .line 1989
    if-ltz p3, :cond_8

    .line 1990
    iput p3, p0, mLastWidth:I

    .line 1991
    invoke-virtual {p0, p3}, setWidth(I)V

    .line 1994
    :cond_8
    if-ltz p4, :cond_f

    .line 1995
    iput p4, p0, mLastHeight:I

    .line 1996
    invoke-virtual {p0, p4}, setHeight(I)V

    .line 1999
    :cond_f
    invoke-virtual {p0}, isShowing()Z

    move-result v6

    if-eqz v6, :cond_19

    iget-object v6, p0, mContentView:Landroid/view/View;

    if-nez v6, :cond_1a

    .line 2046
    :cond_19
    :goto_19
    return-void

    .line 2003
    :cond_1a
    iget-object v6, p0, mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v6}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    .line 2006
    .local v4, "p":Landroid/view/WindowManager$LayoutParams;
    move v5, p5

    .line 2008
    .local v5, "update":Z
    iget v6, p0, mWidthMode:I

    if-gez v6, :cond_78

    iget v1, p0, mWidthMode:I

    .line 2009
    .local v1, "finalWidth":I
    :goto_29
    if-eq p3, v7, :cond_34

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v6, v1, :cond_34

    .line 2010
    iput v1, p0, mLastWidth:I

    iput v1, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 2011
    const/4 v5, 0x1

    .line 2014
    :cond_34
    iget v6, p0, mHeightMode:I

    if-gez v6, :cond_7b

    iget v0, p0, mHeightMode:I

    .line 2015
    .local v0, "finalHeight":I
    :goto_3a
    if-eq p4, v7, :cond_45

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v6, v0, :cond_45

    .line 2016
    iput v0, p0, mLastHeight:I

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 2017
    const/4 v5, 0x1

    .line 2020
    :cond_45
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v6, p1, :cond_4c

    .line 2021
    iput p1, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2022
    const/4 v5, 0x1

    .line 2025
    :cond_4c
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v6, p2, :cond_53

    .line 2026
    iput p2, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2027
    const/4 v5, 0x1

    .line 2030
    :cond_53
    invoke-direct {p0}, computeAnimationResource()I

    move-result v2

    .line 2031
    .local v2, "newAnim":I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v2, v6, :cond_5e

    .line 2032
    iput v2, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 2033
    const/4 v5, 0x1

    .line 2036
    :cond_5e
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v6}, computeFlags(I)I

    move-result v3

    .line 2037
    .local v3, "newFlags":I
    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v3, v6, :cond_6b

    .line 2038
    iput v3, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2039
    const/4 v5, 0x1

    .line 2042
    :cond_6b
    if-eqz v5, :cond_19

    .line 2043
    invoke-direct {p0}, setLayoutDirectionFromAnchor()V

    .line 2044
    iget-object v6, p0, mWindowManager:Landroid/view/WindowManager;

    iget-object v7, p0, mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-interface {v6, v7, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_19

    .line 2008
    .end local v0    # "finalHeight":I
    .end local v1    # "finalWidth":I
    .end local v2    # "newAnim":I
    .end local v3    # "newFlags":I
    :cond_78
    iget v1, p0, mLastWidth:I

    goto :goto_29

    .line 2014
    .restart local v1    # "finalWidth":I
    :cond_7b
    iget v0, p0, mLastHeight:I

    goto :goto_3a
.end method

.method public update(Landroid/view/View;II)V
    .registers 12
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 2059
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v7}, update(Landroid/view/View;ZIIZII)V

    .line 2060
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .registers 14
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v2, 0x1

    .line 2079
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, update(Landroid/view/View;ZIIZII)V

    .line 2080
    return-void
.end method
