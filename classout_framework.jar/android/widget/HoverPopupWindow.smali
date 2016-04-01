.class public Landroid/widget/HoverPopupWindow;
.super Ljava/lang/Object;
.source "HoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/HoverPopupWindow$Gravity;,
        Landroid/widget/HoverPopupWindow$HoverPopupContainer;,
        Landroid/widget/HoverPopupWindow$TouchablePopupContainer;,
        Landroid/widget/HoverPopupWindow$QuintEaseOut;,
        Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;,
        Landroid/widget/HoverPopupWindow$HoverPopupListener;
    }
.end annotation


# static fields
.field private static final AIRCOMMAND_MORPH_USP:Ljava/lang/String;

.field static final DEBUG:Z = false

.field private static final DEVICE_TYPE:Ljava/lang/String;

.field private static final HOVER_DETECT_TIME_MS:I = 0x12c

.field private static final MSG_DISMISS_POPUP:I = 0x2

.field private static final MSG_SHOW_POPUP:I = 0x1

.field private static final MSG_TIMEOUT:I = 0x1

.field private static final POPUP_TIMEOUT_MS:I = 0x2710

.field static final TAG:Ljava/lang/String; = "HoverPopupWindow"

.field private static final TIMEOUT_DELAY:I = 0x1f4

.field private static final TIMEOUT_DELAY_LONG:I = 0x7d0

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_TOOLTIP:I = 0x1

.field public static final TYPE_USER_CUSTOM:I = 0x3

.field public static final TYPE_WIDGET_DEFAULT:I = 0x2

.field private static final UI_THREAD_BUSY_TIME_MS:I = 0x3e8


# instance fields
.field private final ANCHORVIEW_COORDINATES_TYPE_NONE:I

.field private final ANCHORVIEW_COORDINATES_TYPE_SCREEN:I

.field private final ANCHORVIEW_COORDINATES_TYPE_WINDOW:I

.field private H:F

.field private final ID_TOOLTIP_VIEW:I

.field private final MARGIN_FOR_HOVER_RING:I

.field private MOVE_CENTER:I

.field private MOVE_LEFT:I

.field private MOVE_LEFT_TO_CENTER:I

.field private MOVE_RIGHT:I

.field private MOVE_RIGHT_TO_CENTER:I

.field private final SHOW_ANIMATION_DURATION:I

.field private TW:F

.field private W:F

.field private mAnchorRect:Landroid/graphics/Rect;

.field private mAnchorView:Landroid/view/View;

.field protected mAnimationStyle:I

.field private mCenterPoint:Landroid/graphics/PointF;

.field private mContainerLeftOnWindow:I

.field private mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

.field private mContentHeight:I

.field private mContentLP:Landroid/view/ViewGroup$LayoutParams;

.field private mContentResId:I

.field protected mContentText:Ljava/lang/CharSequence;

.field protected mContentView:Landroid/view/View;

.field private mContentWidth:I

.field private final mContext:Landroid/content/Context;

.field private mCoordinatesOfAnchorView:I

.field private mCoverManager:Lcom/samsung/android/cover/ICoverManager;

.field private mDirection:I

.field protected mDismissHandler:Landroid/os/Handler;

.field private mDismissPopupRunnable:Ljava/lang/Runnable;

.field private mDismissTouchableHPWOnActionUp:Z

.field private mDisplayFrame:Landroid/graphics/Rect;

.field private mDisplayFrameLeft:I

.field private mDisplayFrameRight:I

.field private mDisplayWidthToComputeAniWidth:I

.field private mEnabled:Z

.field private mFontScale:F

.field private mFullTextPopupRightLimit:I

.field private mGuideLineColor:I

.field protected mGuideLineFadeOffset:I

.field private mGuideRingDrawableId:I

.field private mHandler:Landroid/os/Handler;

.field private mHashCodeForViewState:I

.field protected mHoverDetectTimeMS:I

.field private mHoverPaddingBottom:I

.field private mHoverPaddingLeft:I

.field private mHoverPaddingRight:I

.field private mHoverPaddingTop:I

.field private mHoveringPointX:I

.field private mHoveringPointY:I

.field private mIsFHAnimationEnabled:Z

.field private mIsFHAnimationEnabledByApp:Z

.field private mIsFHGuideLineEnabled:Z

.field private mIsFHGuideLineEnabledByApp:Z

.field private mIsFHSoundAndHapticEnabled:Z

.field protected mIsGuideLineEnabled:Z

.field private mIsHoverPaddingEnabled:Z

.field private mIsInfoPickerMoveEabled:Z

.field private mIsInfoPickerMoveEabledByApp:Z

.field private mIsPopupTouchable:Z

.field private mIsProgressBar:Z

.field private mIsSPenPointChanged:Z

.field private mIsSetInfoPickerColorToAndMoreBottomImg:Z

.field private mIsShowMessageSent:Z

.field private mIsSkipPenPointEffect:Z

.field private mIsTryingShowPopup:Z

.field private mLeftPoint:Landroid/graphics/PointF;

.field private mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

.field private mNeedToMeasureContentView:Z

.field private mOverTopBoundary:Z

.field protected final mParentView:Landroid/view/View;

.field private mPenWindowStartPos:Landroid/graphics/Point;

.field private mPickerPadding:F

.field private mPickerXoffset:I

.field private mPopup:Landroid/widget/PopupWindow;

.field protected mPopupGravity:I

.field private mPopupOffsetX:I

.field private mPopupOffsetY:I

.field protected mPopupPosX:I

.field protected mPopupPosY:I

.field protected mPopupType:I

.field private mPreShowListener:Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

.field private mReferncedAnchorRect:Landroid/graphics/Rect;

.field private mRightPoint:Landroid/graphics/PointF;

.field protected mShowPopupAlways:Z

.field private mShowPopupRunnable:Ljava/lang/Runnable;

.field private mToolType:I

.field private mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

.field private mUspLevel:I

.field private mWindowGapX:I

.field private mWindowGapY:I

.field private misDialer:Z

.field private misGravityBottomUnder:Z

.field private objAnimationValue:F

.field private objAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 297
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, DEVICE_TYPE:Ljava/lang/String;

    .line 299
    const-string/jumbo v0, "ro.aircommand.morph.usp"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, AIRCOMMAND_MORPH_USP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "parentView"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 313
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/view/View;I)V

    .line 314
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .registers 9
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const v0, 0x7010001

    iput v0, p0, ID_TOOLTIP_VIEW:I

    .line 113
    const/16 v0, 0x8

    iput v0, p0, MARGIN_FOR_HOVER_RING:I

    .line 121
    iput v1, p0, mPopupType:I

    .line 123
    iput v1, p0, mToolType:I

    .line 173
    iput v1, p0, ANCHORVIEW_COORDINATES_TYPE_NONE:I

    .line 174
    iput v3, p0, ANCHORVIEW_COORDINATES_TYPE_WINDOW:I

    .line 175
    iput v5, p0, ANCHORVIEW_COORDINATES_TYPE_SCREEN:I

    .line 193
    iput-object v2, p0, mAnchorRect:Landroid/graphics/Rect;

    .line 195
    iput-object v2, p0, mDisplayFrame:Landroid/graphics/Rect;

    .line 197
    iput v1, p0, mContentWidth:I

    .line 199
    iput v1, p0, mContentHeight:I

    .line 201
    iput-boolean v1, p0, mNeedToMeasureContentView:Z

    .line 203
    iput-boolean v1, p0, mIsShowMessageSent:Z

    .line 205
    iput-object v2, p0, mShowPopupRunnable:Ljava/lang/Runnable;

    .line 207
    iput-object v2, p0, mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 213
    iput-boolean v3, p0, mDismissTouchableHPWOnActionUp:Z

    .line 217
    iput-boolean v1, p0, mIsHoverPaddingEnabled:Z

    .line 239
    iput v4, p0, W:F

    .line 242
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, H:F

    .line 245
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, TW:F

    .line 247
    iput-object v2, p0, mLeftPoint:Landroid/graphics/PointF;

    .line 249
    iput-object v2, p0, mRightPoint:Landroid/graphics/PointF;

    .line 251
    iput-object v2, p0, mCenterPoint:Landroid/graphics/PointF;

    .line 253
    const/high16 v0, 0x42580000    # 54.0f

    iput v0, p0, mPickerPadding:F

    .line 255
    iput-object v2, p0, mHandler:Landroid/os/Handler;

    .line 261
    const/16 v0, 0x1f4

    iput v0, p0, SHOW_ANIMATION_DURATION:I

    .line 263
    iput v1, p0, MOVE_RIGHT:I

    .line 265
    iput v3, p0, MOVE_LEFT:I

    .line 267
    iput v5, p0, MOVE_CENTER:I

    .line 269
    const/4 v0, 0x3

    iput v0, p0, MOVE_LEFT_TO_CENTER:I

    .line 271
    const/4 v0, 0x4

    iput v0, p0, MOVE_RIGHT_TO_CENTER:I

    .line 273
    iget v0, p0, MOVE_CENTER:I

    iput v0, p0, mDirection:I

    .line 275
    iput v1, p0, mDisplayWidthToComputeAniWidth:I

    .line 277
    iput v1, p0, mDisplayFrameLeft:I

    .line 279
    iput v1, p0, mDisplayFrameRight:I

    .line 281
    iput v1, p0, mContainerLeftOnWindow:I

    .line 283
    iput v1, p0, mPickerXoffset:I

    .line 285
    iput-object v2, p0, mReferncedAnchorRect:Landroid/graphics/Rect;

    .line 287
    iput-object v2, p0, mDismissHandler:Landroid/os/Handler;

    .line 295
    iput-object v2, p0, mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    .line 300
    const/4 v0, -0x1

    iput v0, p0, mFullTextPopupRightLimit:I

    .line 301
    iput-object v2, p0, mPenWindowStartPos:Landroid/graphics/Point;

    .line 303
    iput v4, p0, mFontScale:F

    .line 304
    iput v1, p0, mUspLevel:I

    .line 324
    iput-object p1, p0, mParentView:Landroid/view/View;

    .line 325
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 326
    iput p2, p0, mPopupType:I

    .line 328
    invoke-virtual {p0}, initInstance()V

    .line 329
    invoke-virtual {p0, p2}, setInstanceByType(I)V

    .line 331
    new-instance v0, Landroid/widget/HoverPopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/HoverPopupWindow$1;-><init>(Landroid/widget/HoverPopupWindow;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 410
    new-instance v0, Landroid/widget/HoverPopupWindow$2;

    invoke-direct {v0, p0}, Landroid/widget/HoverPopupWindow$2;-><init>(Landroid/widget/HoverPopupWindow;)V

    iput-object v0, p0, mDismissHandler:Landroid/os/Handler;

    .line 424
    return-void
.end method

.method static synthetic access$000(Landroid/widget/HoverPopupWindow;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-boolean v0, p0, mIsFHAnimationEnabled:Z

    return v0
.end method

.method static synthetic access$100(Landroid/widget/HoverPopupWindow;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-boolean v0, p0, mOverTopBoundary:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/HoverPopupWindow;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, MOVE_LEFT:I

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/HoverPopupWindow;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, MOVE_LEFT_TO_CENTER:I

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/HoverPopupWindow;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, MOVE_RIGHT_TO_CENTER:I

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/HoverPopupWindow;)F
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, objAnimationValue:F

    return v0
.end method

.method static synthetic access$1302(Landroid/widget/HoverPopupWindow;F)F
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # F

    .prologue
    .line 87
    iput p1, p0, objAnimationValue:F

    return p1
.end method

.method static synthetic access$1400(Landroid/widget/HoverPopupWindow;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, mDisplayFrameLeft:I

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/HoverPopupWindow;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, mDisplayFrameRight:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/HoverPopupWindow;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    invoke-direct {p0}, dismissPopup()V

    return-void
.end method

.method static synthetic access$1700(Landroid/widget/HoverPopupWindow;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    invoke-direct {p0}, showPopup()V

    return-void
.end method

.method static synthetic access$1800(Landroid/widget/HoverPopupWindow;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-object v0, p0, mDismissPopupRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/widget/HoverPopupWindow;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-boolean v0, p0, mDismissTouchableHPWOnActionUp:Z

    return v0
.end method

.method static synthetic access$200(Landroid/widget/HoverPopupWindow;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-boolean v0, p0, misGravityBottomUnder:Z

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/HoverPopupWindow;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, mToolType:I

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/HoverPopupWindow;)F
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, TW:F

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/HoverPopupWindow;)F
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, H:F

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/HoverPopupWindow;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-boolean v0, p0, mIsFHGuideLineEnabled:Z

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/HoverPopupWindow;)Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-object v0, p0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/widget/HoverPopupWindow;)F
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, W:F

    return v0
.end method

.method static synthetic access$2502(Landroid/widget/HoverPopupWindow;F)F
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # F

    .prologue
    .line 87
    iput p1, p0, W:F

    return p1
.end method

.method static synthetic access$2600(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-object v0, p0, mCenterPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$2602(Landroid/widget/HoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # Landroid/graphics/PointF;

    .prologue
    .line 87
    iput-object p1, p0, mCenterPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$2700(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-object v0, p0, mLeftPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$2702(Landroid/widget/HoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # Landroid/graphics/PointF;

    .prologue
    .line 87
    iput-object p1, p0, mLeftPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$2800(Landroid/widget/HoverPopupWindow;)Landroid/graphics/PointF;
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-object v0, p0, mRightPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$2802(Landroid/widget/HoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # Landroid/graphics/PointF;

    .prologue
    .line 87
    iput-object p1, p0, mRightPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$2900(Landroid/widget/HoverPopupWindow;)F
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, mPickerPadding:F

    return v0
.end method

.method static synthetic access$300(Landroid/widget/HoverPopupWindow;)Landroid/widget/PopupWindow;
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/widget/HoverPopupWindow;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, mContainerLeftOnWindow:I

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/HoverPopupWindow;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/widget/HoverPopupWindow;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-boolean v0, p0, mIsInfoPickerMoveEabled:Z

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/HoverPopupWindow;)Landroid/graphics/Rect;
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-object v0, p0, mReferncedAnchorRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/widget/HoverPopupWindow;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, mFullTextPopupRightLimit:I

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/HoverPopupWindow;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, mPickerXoffset:I

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/HoverPopupWindow;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-boolean v0, p0, mIsSetInfoPickerColorToAndMoreBottomImg:Z

    return v0
.end method

.method static synthetic access$400(Landroid/widget/HoverPopupWindow;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-object v0, p0, mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/HoverPopupWindow;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, mDisplayWidthToComputeAniWidth:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/HoverPopupWindow;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, mDirection:I

    return v0
.end method

.method static synthetic access$602(Landroid/widget/HoverPopupWindow;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # I

    .prologue
    .line 87
    iput p1, p0, mDirection:I

    return p1
.end method

.method static synthetic access$700(Landroid/widget/HoverPopupWindow;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget v0, p0, MOVE_RIGHT:I

    return v0
.end method

.method static synthetic access$800(Landroid/widget/HoverPopupWindow;II)V
    .registers 3
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, setAnimator(II)V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/HoverPopupWindow;)Landroid/animation/ValueAnimator;
    .registers 2
    .param p0, "x0"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 87
    iget-object v0, p0, objAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .registers 36
    .param p1, "anchorRect"    # Landroid/graphics/Rect;
    .param p2, "displayFrame"    # Landroid/graphics/Rect;
    .param p3, "contentWidth"    # I
    .param p4, "contentHeight"    # I

    .prologue
    .line 1856
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, mAnchorRect:Landroid/graphics/Rect;

    .line 1857
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, mDisplayFrame:Landroid/graphics/Rect;

    .line 1858
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, mContentWidth:I

    .line 1859
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, mContentHeight:I

    .line 1861
    move-object/from16 v0, p0

    iget v12, v0, mPopupOffsetX:I

    .line 1862
    .local v12, "posX":I
    move-object/from16 v0, p0

    iget v13, v0, mPopupOffsetY:I

    .line 1868
    .local v13, "posY":I
    move-object/from16 v0, p0

    iget v0, v0, mPopupGravity:I

    move/from16 v28, v0

    move/from16 v0, v28

    and-int/lit16 v8, v0, 0xf0f

    .line 1869
    .local v8, "hGravity":I
    move-object/from16 v0, p0

    iget v0, v0, mPopupGravity:I

    move/from16 v28, v0

    const v29, 0xf0f0

    and-int v21, v28, v29

    .line 1871
    .local v21, "vGravity":I
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x1050309

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    .line 1873
    .local v19, "tooltipShiftX":I
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x105030a

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 1874
    .local v20, "tooltipTopMargin":I
    move-object/from16 v0, p0

    iget v0, v0, mPopupGravity:I

    move/from16 v28, v0

    if-nez v28, :cond_282

    .line 1876
    move-object/from16 v0, p0

    iget v0, v0, mCoordinatesOfAnchorView:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_26a

    .line 1877
    move-object/from16 v0, p0

    iget v0, v0, mPopupOffsetX:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    add-int v12, v28, v29

    .line 1878
    move-object/from16 v0, p0

    iget v0, v0, mPopupOffsetY:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    add-int v13, v28, v29

    .line 1971
    :cond_89
    :goto_89
    move-object/from16 v0, p0

    iget v0, v0, mCoordinatesOfAnchorView:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_350

    .line 1972
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1973
    .local v4, "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, mParentView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v16

    .line 1974
    .local v16, "root":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    .line 1975
    .local v23, "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v9, 0x0

    .line 1976
    .local v9, "isSystemUiVisible":Z
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v28, v0

    if-eqz v28, :cond_d7

    move-object/from16 v25, v23

    .line 1977
    check-cast v25, Landroid/view/WindowManager$LayoutParams;

    .line 1978
    .local v25, "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v28, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v29, v0

    or-int v28, v28, v29

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0x404

    move/from16 v28, v0

    if-nez v28, :cond_34d

    const/4 v9, 0x1

    .line 1981
    .end local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_d7
    :goto_d7
    const/16 v18, 0x0

    .line 1983
    .local v18, "statusBarHeight":I
    if-eqz v9, :cond_ec

    .line 1984
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x1050017

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 1986
    :cond_ec
    add-int v28, v13, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_11e

    .line 1988
    const/16 v28, 0x5050

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_11e

    .line 1989
    move-object/from16 v0, p0

    iget v0, v0, mPopupType:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11e

    .line 1990
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v28

    div-int/lit8 v29, p3, 0x2

    sub-int v12, v28, v29

    .line 1991
    move-object/from16 v0, p0

    iget v0, v0, mPopupOffsetX:I

    move/from16 v28, v0

    add-int v12, v12, v28

    .line 2022
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v9    # "isSystemUiVisible":Z
    .end local v16    # "root":Landroid/view/View;
    .end local v18    # "statusBarHeight":I
    .end local v23    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_11e
    :goto_11e
    const-string v28, "HoverPopupWindow"

    const-string v29, "computePopupPositionInternal: check window boundary "

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    move-object/from16 v0, p0

    iget-object v0, v0, mParentView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->isScaleWindow()Z

    move-result v28

    if-nez v28, :cond_6c5

    .line 2024
    move-object/from16 v0, p0

    iget v0, v0, mCoordinatesOfAnchorView:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_445

    .line 2025
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 2026
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x1050312

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 2027
    .local v7, "fulltextAirviewShiftX":I
    move-object/from16 v0, p0

    iget v0, v0, mPopupType:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_421

    .line 2028
    if-gez v12, :cond_407

    .line 2029
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 2186
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v7    # "fulltextAirviewShiftX":I
    :cond_176
    :goto_176
    move-object/from16 v0, p0

    iget v0, v0, mCoordinatesOfAnchorView:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_a4d

    .line 2187
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 2188
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, mParentView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v16

    .line 2189
    .restart local v16    # "root":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    .line 2190
    .restart local v23    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v9, 0x0

    .line 2191
    .restart local v9    # "isSystemUiVisible":Z
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v28, v0

    if-eqz v28, :cond_1c4

    move-object/from16 v25, v23

    .line 2192
    check-cast v25, Landroid/view/WindowManager$LayoutParams;

    .line 2193
    .restart local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v28, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v29, v0

    or-int v28, v28, v29

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0x404

    move/from16 v28, v0

    if-nez v28, :cond_8e9

    const/4 v9, 0x1

    .line 2196
    .end local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_1c4
    :goto_1c4
    const/16 v18, 0x0

    .line 2198
    .restart local v18    # "statusBarHeight":I
    if-eqz v9, :cond_1d9

    .line 2199
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x1050017

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 2201
    :cond_1d9
    move/from16 v0, v18

    if-ge v13, v0, :cond_971

    .line 2204
    const/16 v28, 0x3030

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_945

    .line 2205
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    move/from16 v1, p4

    if-lt v0, v1, :cond_8ec

    .line 2206
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    .line 2207
    move-object/from16 v0, p0

    iget v0, v0, mPopupOffsetY:I

    move/from16 v28, v0

    add-int v13, v13, v28

    .line 2208
    const-string v28, "HoverPopupWindow"

    const-string v29, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, mOverTopBoundary:Z

    .line 2364
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v9    # "isSystemUiVisible":Z
    .end local v16    # "root":Landroid/view/View;
    .end local v18    # "statusBarHeight":I
    .end local v23    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_212
    :goto_212
    move-object/from16 v0, p0

    iput v12, v0, mPopupPosX:I

    .line 2365
    move-object/from16 v0, p0

    iput v13, v0, mPopupPosY:I

    .line 2368
    move-object/from16 v0, p0

    iget-object v0, v0, mParentView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->isScaleWindow()Z

    move-result v28

    if-eqz v28, :cond_269

    .line 2369
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string/jumbo v29, "window"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/WindowManager;

    .line 2370
    .local v26, "wm":Landroid/view/WindowManager;
    if-eqz v26, :cond_269

    .line 2371
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2372
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-interface/range {v26 .. v26}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2373
    move-object/from16 v0, p0

    iget-object v0, v0, mParentView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getHeight()I

    move-result v28

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v29, v0

    sub-int v27, v28, v29

    .line 2374
    .local v27, "yOffset":I
    if-lez v27, :cond_269

    .line 2375
    move-object/from16 v0, p0

    iget v0, v0, mPopupPosY:I

    move/from16 v28, v0

    sub-int v28, v28, v27

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, mPopupPosY:I

    .line 2381
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v26    # "wm":Landroid/view/WindowManager;
    .end local v27    # "yOffset":I
    :cond_269
    return-void

    .line 1879
    :cond_26a
    move-object/from16 v0, p0

    iget v0, v0, mCoordinatesOfAnchorView:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_89

    .line 1880
    move-object/from16 v0, p0

    iget v12, v0, mPopupOffsetX:I

    .line 1881
    move-object/from16 v0, p0

    iget v13, v0, mPopupOffsetY:I

    goto/16 :goto_89

    .line 1885
    :cond_282
    sparse-switch v8, :sswitch_data_dfe

    .line 1927
    move-object/from16 v0, p0

    iget v12, v0, mPopupOffsetX:I

    .line 1932
    :goto_289
    move-object/from16 v0, p0

    iget v0, v0, mPopupOffsetX:I

    move/from16 v28, v0

    add-int v12, v12, v28

    .line 1936
    sparse-switch v21, :sswitch_data_e24

    .line 1958
    move-object/from16 v0, p0

    iget v13, v0, mPopupOffsetY:I

    .line 1963
    :goto_298
    move-object/from16 v0, p0

    iget v0, v0, mPopupOffsetY:I

    move/from16 v28, v0

    add-int v13, v13, v28

    goto/16 :goto_89

    .line 1887
    :sswitch_2a2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    sub-int v12, v28, p3

    .line 1888
    goto :goto_289

    .line 1891
    :sswitch_2ab
    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->left:I

    .line 1892
    goto :goto_289

    .line 1895
    :sswitch_2b0
    move-object/from16 v0, p0

    iget v0, v0, mPopupType:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_2c7

    .line 1896
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v28

    sub-int v28, v28, p3

    add-int v12, v28, v19

    goto :goto_289

    .line 1898
    :cond_2c7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v28

    sub-int v12, v28, p3

    .line 1900
    goto :goto_289

    .line 1903
    :sswitch_2ce
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v28

    div-int/lit8 v29, p3, 0x2

    sub-int v12, v28, v29

    .line 1904
    goto :goto_289

    .line 1907
    :sswitch_2d7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    .line 1908
    goto :goto_289

    .line 1911
    :sswitch_2dc
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    sub-int v12, v28, p3

    .line 1912
    goto :goto_289

    .line 1915
    :sswitch_2e5
    move-object/from16 v0, p1

    iget v12, v0, Landroid/graphics/Rect;->right:I

    .line 1916
    goto :goto_289

    .line 1919
    :sswitch_2ea
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v28

    div-int/lit8 v29, p3, 0x2

    sub-int v12, v28, v29

    .line 1920
    goto :goto_289

    .line 1923
    :sswitch_2f3
    move-object/from16 v0, p0

    iget v0, v0, mHoveringPointX:I

    move/from16 v28, v0

    div-int/lit8 v29, p3, 0x2

    sub-int v28, v28, v29

    move-object/from16 v0, p0

    iget v0, v0, mWindowGapX:I

    move/from16 v29, v0

    sub-int v12, v28, v29

    .line 1924
    goto :goto_289

    .line 1938
    :sswitch_306
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    sub-int v13, v28, p4

    .line 1939
    goto :goto_298

    .line 1941
    :sswitch_30f
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->top:I

    .line 1942
    goto :goto_298

    .line 1944
    :sswitch_314
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerY()I

    move-result v28

    div-int/lit8 v29, p4, 0x2

    sub-int v13, v28, v29

    .line 1945
    goto/16 :goto_298

    .line 1947
    :sswitch_31e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    sub-int v13, v28, p4

    .line 1948
    goto/16 :goto_298

    .line 1950
    :sswitch_328
    move-object/from16 v0, p0

    iget v0, v0, mPopupType:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_348

    .line 1951
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    add-int v13, v28, v20

    .line 1955
    :goto_33e
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, misGravityBottomUnder:Z

    goto/16 :goto_298

    .line 1953
    :cond_348
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_33e

    .line 1978
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v9    # "isSystemUiVisible":Z
    .restart local v16    # "root":Landroid/view/View;
    .restart local v23    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_34d
    const/4 v9, 0x0

    goto/16 :goto_d7

    .line 1995
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v9    # "isSystemUiVisible":Z
    .end local v16    # "root":Landroid/view/View;
    .end local v23    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_350
    move-object/from16 v0, p0

    iget v0, v0, mCoordinatesOfAnchorView:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11e

    .line 1996
    add-int v28, v13, p4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_11e

    .line 1997
    const/16 v28, 0x5050

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_11e

    .line 1998
    move-object/from16 v0, p0

    iget v0, v0, mPopupType:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11e

    .line 1999
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 2000
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, p4

    if-lt v0, v1, :cond_3e1

    .line 2001
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x1050017

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 2002
    .restart local v18    # "statusBarHeight":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, v18

    if-ne v0, v1, :cond_3cf

    add-int v28, v13, p4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_11e

    .line 2003
    :cond_3cf
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v28

    div-int/lit8 v29, p3, 0x2

    sub-int v12, v28, v29

    .line 2004
    move-object/from16 v0, p0

    iget v0, v0, mPopupOffsetX:I

    move/from16 v28, v0

    add-int v12, v12, v28

    goto/16 :goto_11e

    .line 2008
    .end local v18    # "statusBarHeight":I
    :cond_3e1
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v13

    add-int v28, v28, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_11e

    .line 2009
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->centerX()I

    move-result v28

    div-int/lit8 v29, p3, 0x2

    sub-int v12, v28, v29

    .line 2010
    move-object/from16 v0, p0

    iget v0, v0, mPopupOffsetX:I

    move/from16 v28, v0

    add-int v12, v12, v28

    goto/16 :goto_11e

    .line 2030
    .restart local v7    # "fulltextAirviewShiftX":I
    :cond_407
    add-int v28, v12, p3

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_176

    .line 2031
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v28, v0

    sub-int v28, v28, p3

    move/from16 v0, v28

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto/16 :goto_176

    .line 2034
    :cond_421
    if-gez v12, :cond_429

    .line 2035
    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto/16 :goto_176

    .line 2036
    :cond_429
    add-int v28, v12, p3

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_176

    .line 2037
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v28, v0

    sub-int v28, v28, p3

    sub-int v28, v28, v7

    move/from16 v0, v28

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto/16 :goto_176

    .line 2040
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v7    # "fulltextAirviewShiftX":I
    :cond_445
    move-object/from16 v0, p0

    iget v0, v0, mCoordinatesOfAnchorView:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_176

    .line 2041
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 2042
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    add-int v28, v28, v12

    if-gtz v28, :cond_539

    .line 2043
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x1050312

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 2044
    .restart local v7    # "fulltextAirviewShiftX":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    sub-int v28, v28, p3

    move/from16 v0, v28

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 2046
    move-object/from16 v0, p0

    iget v0, v0, mPopupType:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_510

    .line 2047
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 2051
    :goto_4b1
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string/jumbo v28, "window"

    invoke-static/range {v28 .. v28}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v24

    .line 2054
    .local v24, "windowManager":Landroid/view/IWindowManager;
    :try_start_4c2
    invoke-interface/range {v24 .. v24}, Landroid/view/IWindowManager;->getCocktailBarFrame()Landroid/graphics/Rect;
    :try_end_4c5
    .catch Landroid/os/RemoteException; {:try_start_4c2 .. :try_end_4c5} :catch_524

    move-result-object v3

    .line 2059
    .local v3, "cocktailRect":Landroid/graphics/Rect;
    :goto_4c6
    if-eqz v3, :cond_176

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    if-lez v28, :cond_176

    .line 2061
    move-object/from16 v0, p0

    iget-object v0, v0, mParentView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v16

    .line 2062
    .restart local v16    # "root":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    .line 2063
    .restart local v23    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v28, v0

    if-eqz v28, :cond_176

    move-object/from16 v25, v23

    .line 2064
    check-cast v25, Landroid/view/WindowManager$LayoutParams;

    .line 2065
    .restart local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v28, v0

    const/16 v29, 0x8ac

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_504

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v28, v0

    const/16 v29, 0x62

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_52f

    .line 2067
    :cond_504
    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto/16 :goto_176

    .line 2049
    .end local v3    # "cocktailRect":Landroid/graphics/Rect;
    .end local v16    # "root":Landroid/view/View;
    .end local v23    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v24    # "windowManager":Landroid/view/IWindowManager;
    .end local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_510
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    add-int v28, v28, v7

    move/from16 v0, v28

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_4b1

    .line 2055
    .restart local v24    # "windowManager":Landroid/view/IWindowManager;
    :catch_524
    move-exception v5

    .line 2056
    .local v5, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 2057
    .restart local v3    # "cocktailRect":Landroid/graphics/Rect;
    const-string v28, "HoverPopupWindow"

    const-string/jumbo v29, "windowManager.getCocktailBarFrame() :: error occurred"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c6

    .line 2069
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v16    # "root":Landroid/view/View;
    .restart local v23    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_52f
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto/16 :goto_176

    .line 2073
    .end local v3    # "cocktailRect":Landroid/graphics/Rect;
    .end local v7    # "fulltextAirviewShiftX":I
    .end local v16    # "root":Landroid/view/View;
    .end local v23    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v24    # "windowManager":Landroid/view/IWindowManager;
    .end local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_539
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    add-int v28, v28, v12

    add-int v28, v28, p3

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_634

    .line 2075
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x1050312

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 2077
    .restart local v7    # "fulltextAirviewShiftX":I
    :try_start_55e
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string/jumbo v28, "window"

    invoke-static/range {v28 .. v28}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v24

    .line 2079
    .restart local v24    # "windowManager":Landroid/view/IWindowManager;
    invoke-interface/range {v24 .. v24}, Landroid/view/IWindowManager;->getCocktailBarFrame()Landroid/graphics/Rect;

    move-result-object v3

    .line 2080
    .restart local v3    # "cocktailRect":Landroid/graphics/Rect;
    if-eqz v3, :cond_5f1

    iget v0, v3, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    if-lez v28, :cond_5f1

    .line 2081
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string/jumbo v29, "window"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/WindowManager;

    .line 2083
    .restart local v26    # "wm":Landroid/view/WindowManager;
    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2084
    .local v10, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface/range {v26 .. v26}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 2085
    move-object/from16 v0, p0

    iget v0, v0, mPopupType:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_5d4

    .line 2086
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v28, v0

    iget v0, v3, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    sub-int v28, v28, p3

    move/from16 v0, v28

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 2090
    :goto_5c0
    add-int v28, v12, p3

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, mFullTextPopupRightLimit:I
    :try_end_5c8
    .catch Ljava/lang/Exception; {:try_start_55e .. :try_end_5c8} :catch_5ca

    goto/16 :goto_176

    .line 2099
    .end local v3    # "cocktailRect":Landroid/graphics/Rect;
    .end local v10    # "metrics":Landroid/util/DisplayMetrics;
    .end local v24    # "windowManager":Landroid/view/IWindowManager;
    .end local v26    # "wm":Landroid/view/WindowManager;
    :catch_5ca
    move-exception v5

    .line 2100
    .local v5, "e":Ljava/lang/Exception;
    const-string v28, "HoverPopupWindow"

    const-string v29, "HoverPopupWindow:computePopupPositionInternal : WINDOW_SERVICE remote exception occurred. "

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_176

    .line 2088
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "cocktailRect":Landroid/graphics/Rect;
    .restart local v10    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v24    # "windowManager":Landroid/view/IWindowManager;
    .restart local v26    # "wm":Landroid/view/WindowManager;
    :cond_5d4
    :try_start_5d4
    iget v0, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v28, v0

    iget v0, v3, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    sub-int v28, v28, p3

    sub-int v28, v28, v7

    move/from16 v0, v28

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto :goto_5c0

    .line 2092
    .end local v10    # "metrics":Landroid/util/DisplayMetrics;
    .end local v26    # "wm":Landroid/view/WindowManager;
    :cond_5f1
    move-object/from16 v0, p0

    iget v0, v0, mPopupType:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_61d

    .line 2093
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    sub-int v28, v28, p3

    move/from16 v0, v28

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 2097
    :goto_613
    add-int v28, v12, p3

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, mFullTextPopupRightLimit:I

    goto/16 :goto_176

    .line 2095
    :cond_61d
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    sub-int v28, v28, p3

    sub-int v28, v28, v7

    move/from16 v0, v28

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I
    :try_end_632
    .catch Ljava/lang/Exception; {:try_start_5d4 .. :try_end_632} :catch_5ca

    move-result v12

    goto :goto_613

    .line 2103
    .end local v3    # "cocktailRect":Landroid/graphics/Rect;
    .end local v7    # "fulltextAirviewShiftX":I
    .end local v24    # "windowManager":Landroid/view/IWindowManager;
    :cond_634
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    if-lez v28, :cond_176

    .line 2104
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string/jumbo v28, "window"

    invoke-static/range {v28 .. v28}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v24

    .line 2107
    .restart local v24    # "windowManager":Landroid/view/IWindowManager;
    :try_start_64d
    invoke-interface/range {v24 .. v24}, Landroid/view/IWindowManager;->getCocktailBarFrame()Landroid/graphics/Rect;
    :try_end_650
    .catch Landroid/os/RemoteException; {:try_start_64d .. :try_end_650} :catch_6b1

    move-result-object v3

    .line 2112
    .restart local v3    # "cocktailRect":Landroid/graphics/Rect;
    :goto_651
    if-eqz v3, :cond_699

    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    if-lez v28, :cond_699

    .line 2113
    move-object/from16 v0, p0

    iget-object v0, v0, mParentView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v16

    .line 2114
    .restart local v16    # "root":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    .line 2115
    .restart local v23    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v28, v0

    if-eqz v28, :cond_699

    move-object/from16 v25, v23

    .line 2116
    check-cast v25, Landroid/view/WindowManager$LayoutParams;

    .line 2117
    .restart local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v28, v0

    const/16 v29, 0x8ac

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_68f

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v28, v0

    const/16 v29, 0x62

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6bc

    .line 2119
    :cond_68f
    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 2125
    .end local v16    # "root":Landroid/view/View;
    .end local v23    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_699
    :goto_699
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    sub-int v28, v28, p3

    move/from16 v0, v28

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto/16 :goto_176

    .line 2108
    .end local v3    # "cocktailRect":Landroid/graphics/Rect;
    :catch_6b1
    move-exception v5

    .line 2109
    .local v5, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 2110
    .restart local v3    # "cocktailRect":Landroid/graphics/Rect;
    const-string v28, "HoverPopupWindow"

    const-string/jumbo v29, "windowManager.getCocktailBarFrame() :: error occurred"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_651

    .line 2121
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v16    # "root":Landroid/view/View;
    .restart local v23    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_6bc
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_699

    .line 2133
    .end local v3    # "cocktailRect":Landroid/graphics/Rect;
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v16    # "root":Landroid/view/View;
    .end local v23    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v24    # "windowManager":Landroid/view/IWindowManager;
    .end local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_6c5
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2134
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 2135
    sget-boolean v28, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->SELECTIVE1ORIENTATION_ENABLED:Z

    if-eqz v28, :cond_717

    .line 2137
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string/jumbo v29, "multiwindow_facade"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 2138
    .local v11, "mwFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    if-eqz v11, :cond_717

    .line 2139
    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getSystemDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v14

    .line 2140
    .local v14, "realDisplayInfo":Landroid/view/DisplayInfo;
    if-eqz v14, :cond_717

    .line 2141
    invoke-virtual {v14, v4}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;)V

    .line 2142
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v28

    move-object/from16 v0, v28

    iget v6, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 2143
    .local v6, "fontScale":F
    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    move/from16 v28, v0

    mul-float v28, v28, v6

    move/from16 v0, v28

    iput v0, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 2148
    .end local v6    # "fontScale":F
    .end local v11    # "mwFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .end local v14    # "realDisplayInfo":Landroid/view/DisplayInfo;
    :cond_717
    move-object/from16 v0, p0

    iget v0, v0, mCoordinatesOfAnchorView:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_841

    .line 2149
    move-object/from16 v0, p0

    iget-object v0, v0, mAnchorView:Landroid/view/View;

    move-object/from16 v28, v0

    if-eqz v28, :cond_79c

    move-object/from16 v0, p0

    iget-object v2, v0, mAnchorView:Landroid/view/View;

    .line 2150
    .local v2, "anchorView":Landroid/view/View;
    :goto_731
    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v22

    .line 2151
    .local v22, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v22, :cond_176

    .line 2152
    invoke-virtual/range {v22 .. v22}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v17

    .line 2154
    .local v17, "scaleFactor":Landroid/graphics/PointF;
    if-gez v12, :cond_7a1

    .line 2155
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 2160
    :cond_745
    :goto_745
    move-object/from16 v0, p0

    iget-object v0, v0, mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v28, v0

    if-eqz v28, :cond_176

    .line 2161
    int-to-float v0, v12

    move/from16 v28, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v29, v0

    mul-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v28, v28, v29

    const/16 v29, 0x0

    cmpg-float v28, v28, v29

    if-gez v28, :cond_7e7

    .line 2162
    move-object/from16 v0, p0

    iget-object v0, v0, mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v29, v0

    div-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-static {v0, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto/16 :goto_176

    .line 2149
    .end local v2    # "anchorView":Landroid/view/View;
    .end local v17    # "scaleFactor":Landroid/graphics/PointF;
    .end local v22    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_79c
    move-object/from16 v0, p0

    iget-object v2, v0, mParentView:Landroid/view/View;

    goto :goto_731

    .line 2156
    .restart local v2    # "anchorView":Landroid/view/View;
    .restart local v17    # "scaleFactor":Landroid/graphics/PointF;
    .restart local v22    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_7a1
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    add-int v29, v12, p3

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-int v28, v28, v29

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_745

    .line 2157
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v28, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto/16 :goto_745

    .line 2163
    :cond_7e7
    move-object/from16 v0, p0

    iget-object v0, v0, mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v28, v0

    add-int v29, v12, p3

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-int v28, v28, v29

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_176

    .line 2164
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v29, v0

    div-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    sub-int v28, v28, p3

    move/from16 v0, v28

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto/16 :goto_176

    .line 2169
    .end local v2    # "anchorView":Landroid/view/View;
    .end local v17    # "scaleFactor":Landroid/graphics/PointF;
    .end local v22    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_841
    move-object/from16 v0, p0

    iget v0, v0, mCoordinatesOfAnchorView:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_176

    .line 2170
    move-object/from16 v0, p0

    iget-object v0, v0, mAnchorView:Landroid/view/View;

    move-object/from16 v28, v0

    if-eqz v28, :cond_882

    move-object/from16 v0, p0

    iget-object v2, v0, mAnchorView:Landroid/view/View;

    .line 2171
    .restart local v2    # "anchorView":Landroid/view/View;
    :goto_85b
    invoke-virtual {v2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v22

    .line 2172
    .restart local v22    # "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v22, :cond_176

    .line 2173
    invoke-virtual/range {v22 .. v22}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v17

    .line 2175
    .restart local v17    # "scaleFactor":Landroid/graphics/PointF;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    int-to-float v0, v12

    move/from16 v29, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-int v28, v28, v29

    if-gez v28, :cond_887

    .line 2176
    const/4 v12, 0x0

    goto/16 :goto_176

    .line 2170
    .end local v2    # "anchorView":Landroid/view/View;
    .end local v17    # "scaleFactor":Landroid/graphics/PointF;
    .end local v22    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_882
    move-object/from16 v0, p0

    iget-object v2, v0, mParentView:Landroid/view/View;

    goto :goto_85b

    .line 2177
    .restart local v2    # "anchorView":Landroid/view/View;
    .restart local v17    # "scaleFactor":Landroid/graphics/PointF;
    .restart local v22    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_887
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v28, v0

    add-int v29, v12, p3

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v30, v0

    mul-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-int v28, v28, v29

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_8d5

    .line 2178
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v29, v0

    div-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    sub-int v28, v28, p3

    move/from16 v0, v28

    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    goto/16 :goto_176

    .line 2179
    :cond_8d5
    add-int v28, v12, p3

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_176

    .line 2180
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v28, v0

    sub-int v12, v28, p3

    goto/16 :goto_176

    .line 2193
    .end local v2    # "anchorView":Landroid/view/View;
    .end local v17    # "scaleFactor":Landroid/graphics/PointF;
    .end local v22    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v9    # "isSystemUiVisible":Z
    .restart local v16    # "root":Landroid/view/View;
    .restart local v23    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_8e9
    const/4 v9, 0x0

    goto/16 :goto_1c4

    .line 2210
    .end local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    .restart local v18    # "statusBarHeight":I
    :cond_8ec
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v29, v29, v18

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_91b

    .line 2211
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    .line 2213
    const-string v28, "HoverPopupWindow"

    const-string v29, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, mOverTopBoundary:Z

    goto/16 :goto_212

    .line 2217
    :cond_91b
    move/from16 v13, v18

    .line 2218
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, mOverTopBoundary:Z

    .line 2219
    const-string v28, "HoverPopupWindow"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "computePopupPositionInternal: #2: mOverTopBoundary = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, mOverTopBoundary:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_212

    .line 2224
    :cond_945
    const-string v28, "HoverPopupWindow"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "computePopupPositionInternal #2-1: mOverTopBoundary = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, mOverTopBoundary:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto/16 :goto_212

    .line 2227
    :cond_971
    add-int v28, v13, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_a1d

    .line 2229
    const/16 v28, 0x5050

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_9f5

    .line 2230
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, p4

    if-lt v0, v1, :cond_212

    .line 2231
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    sub-int v13, v28, p4

    .line 2232
    move-object/from16 v0, p0

    iget v0, v0, mPopupOffsetY:I

    move/from16 v28, v0

    sub-int v13, v13, v28

    .line 2234
    const-string v28, "HoverPopupWindow"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3: misGravityBottomUnder = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, misGravityBottomUnder:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2235
    move-object/from16 v0, p0

    iget-boolean v0, v0, misGravityBottomUnder:Z

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_212

    .line 2236
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, misGravityBottomUnder:Z

    .line 2237
    const-string v28, "HoverPopupWindow"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "computePopupPositionInternal: #4 set misGravityBottomUnder = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, misGravityBottomUnder:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_212

    .line 2241
    :cond_9f5
    const-string v28, "HoverPopupWindow"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "computePopupPositionInternal: #5 set misGravityBottomUnder = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, misGravityBottomUnder:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    sub-int v13, v28, p4

    goto/16 :goto_212

    .line 2246
    :cond_a1d
    const/16 v28, 0x3030

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_212

    .line 2247
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, mOverTopBoundary:Z

    .line 2248
    const-string v28, "HoverPopupWindow"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "computePopupPositionInternal: #6 set mOverTopBoundary = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, mOverTopBoundary:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_212

    .line 2251
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v9    # "isSystemUiVisible":Z
    .end local v16    # "root":Landroid/view/View;
    .end local v18    # "statusBarHeight":I
    .end local v23    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_a4d
    move-object/from16 v0, p0

    iget v0, v0, mCoordinatesOfAnchorView:I

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_212

    .line 2257
    move-object/from16 v0, p0

    iget-object v0, v0, mParentView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v16

    .line 2258
    .restart local v16    # "root":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    .line 2259
    .restart local v23    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v9, 0x0

    .line 2261
    .restart local v9    # "isSystemUiVisible":Z
    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v28, v0

    if-eqz v28, :cond_a8d

    move-object/from16 v25, v23

    .line 2262
    check-cast v25, Landroid/view/WindowManager$LayoutParams;

    .line 2263
    .restart local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move/from16 v28, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    move/from16 v29, v0

    or-int v28, v28, v29

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0x404

    move/from16 v28, v0

    if-nez v28, :cond_b2a

    const/4 v9, 0x1

    .line 2266
    .end local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_a8d
    :goto_a8d
    const/16 v18, 0x0

    .line 2267
    .restart local v18    # "statusBarHeight":I
    const/4 v15, 0x0

    .line 2268
    .local v15, "realStatusBarHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x1050017

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    .line 2269
    if-eqz v9, :cond_aa5

    .line 2270
    move/from16 v15, v18

    .line 2273
    :cond_aa5
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 2274
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v13

    move/from16 v0, v28

    move/from16 v1, v18

    if-ge v0, v1, :cond_c01

    .line 2276
    const/16 v28, 0x3030

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_bdb

    .line 2277
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    sub-int v28, v28, v18

    move/from16 v0, v28

    move/from16 v1, p4

    if-lt v0, v1, :cond_b2d

    .line 2278
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    .line 2279
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    sub-int v28, v28, v18

    move-object/from16 v0, p0

    iget v0, v0, mPopupOffsetY:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    move/from16 v1, p4

    if-lt v0, v1, :cond_b19

    .line 2280
    move-object/from16 v0, p0

    iget v0, v0, mPopupOffsetY:I

    move/from16 v28, v0

    add-int v13, v13, v28

    .line 2282
    :cond_b19
    const-string v28, "HoverPopupWindow"

    const-string v29, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2283
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, mOverTopBoundary:Z

    goto/16 :goto_212

    .line 2263
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v15    # "realStatusBarHeight":I
    .end local v18    # "statusBarHeight":I
    .restart local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_b2a
    const/4 v9, 0x0

    goto/16 :goto_a8d

    .line 2284
    .end local v25    # "wlp":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v15    # "realStatusBarHeight":I
    .restart local v18    # "statusBarHeight":I
    :cond_b2d
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    sub-int v28, v28, v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_b66

    .line 2285
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    .line 2287
    const-string v28, "HoverPopupWindow"

    const-string v29, "computePopupPositionInternal: Set mOverTopBoundary = true #1"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, mOverTopBoundary:Z

    goto/16 :goto_212

    .line 2290
    :cond_b66
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    add-int v28, v28, v29

    sub-int v28, v28, p4

    sub-int v28, v28, v15

    if-lez v28, :cond_b84

    .line 2292
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, mOverTopBoundary:Z

    goto/16 :goto_212

    .line 2293
    :cond_b84
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    add-int v29, v29, v30

    sub-int v28, v28, v29

    sub-int v28, v28, p4

    if-lez v28, :cond_bb1

    .line 2295
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    .line 2296
    const-string v28, "HoverPopupWindow"

    const-string v29, "computePopupPositionInternal: Set mOverTopBoundary = true #1-2"

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, mOverTopBoundary:Z

    goto/16 :goto_212

    .line 2299
    :cond_bb1
    move/from16 v13, v18

    .line 2300
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, mOverTopBoundary:Z

    .line 2301
    const-string v28, "HoverPopupWindow"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "computePopupPositionInternal: #2: mOverTopBoundary = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, mOverTopBoundary:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_212

    .line 2305
    :cond_bdb
    const-string v28, "HoverPopupWindow"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "computePopupPositionInternal #2-1: mOverTopBoundary = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, mOverTopBoundary:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2306
    move/from16 v0, v18

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    goto/16 :goto_212

    .line 2308
    :cond_c01
    add-int v28, v13, p4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_d91

    .line 2309
    const/16 v28, 0x5050

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_d41

    .line 2310
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, p4

    if-lt v0, v1, :cond_cc9

    .line 2311
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, v18

    if-ne v0, v1, :cond_c65

    add-int v28, v13, p4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_c65

    .line 2313
    const-string v28, "HoverPopupWindow"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3-1: misGravityBottomUnder = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, misGravityBottomUnder:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_212

    .line 2315
    :cond_c65
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    sub-int v13, v28, p4

    .line 2316
    move-object/from16 v0, p0

    iget v0, v0, mPopupOffsetY:I

    move/from16 v28, v0

    sub-int v13, v13, v28

    .line 2318
    const-string v28, "HoverPopupWindow"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3-2: misGravityBottomUnder = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, misGravityBottomUnder:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    move-object/from16 v0, p0

    iget-boolean v0, v0, misGravityBottomUnder:Z

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_212

    .line 2320
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, misGravityBottomUnder:Z

    .line 2321
    const-string v28, "HoverPopupWindow"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "computePopupPositionInternal: #4 set misGravityBottomUnder = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, misGravityBottomUnder:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_212

    .line 2325
    :cond_cc9
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    add-int v28, v28, v13

    add-int v28, v28, p4

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_212

    .line 2328
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    sub-int v13, v28, p4

    .line 2329
    move-object/from16 v0, p0

    iget v0, v0, mPopupOffsetY:I

    move/from16 v28, v0

    sub-int v13, v13, v28

    .line 2330
    const-string v28, "HoverPopupWindow"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "computePopupPositionInternal: Gravity.BOTTOM_UNDER #3-2: misGravityBottomUnder = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, misGravityBottomUnder:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    move-object/from16 v0, p0

    iget-boolean v0, v0, misGravityBottomUnder:Z

    move/from16 v28, v0

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_212

    .line 2332
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, misGravityBottomUnder:Z

    .line 2333
    const-string v28, "HoverPopupWindow"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "computePopupPositionInternal: #4 set misGravityBottomUnder = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, misGravityBottomUnder:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_212

    .line 2338
    :cond_d41
    const-string v28, "HoverPopupWindow"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "computePopupPositionInternal: #5 set misGravityBottomUnder = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, misGravityBottomUnder:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2339
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-eq v0, v15, :cond_d81

    .line 2340
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    sub-int v28, v28, p4

    move/from16 v0, v28

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto/16 :goto_212

    .line 2342
    :cond_d81
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    sub-int v28, v28, p4

    move/from16 v0, v28

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto/16 :goto_212

    .line 2346
    :cond_d91
    const/16 v28, 0x3030

    move/from16 v0, v21

    move/from16 v1, v28

    if-ne v0, v1, :cond_de9

    .line 2347
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, mOverTopBoundary:Z

    .line 2348
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, misGravityBottomUnder:Z

    .line 2349
    move/from16 v0, v18

    if-ge v13, v0, :cond_dc9

    .line 2350
    add-int v28, v13, p4

    add-int v28, v28, v18

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-le v0, v1, :cond_dc9

    .line 2351
    move-object/from16 v0, p1

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    .line 2352
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, misGravityBottomUnder:Z

    .line 2355
    :cond_dc9
    const-string v28, "HoverPopupWindow"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "computePopupPositionInternal: #6 set mOverTopBoundary = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, p0

    iget-boolean v0, v0, mOverTopBoundary:Z

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_212

    .line 2357
    :cond_de9
    move/from16 v0, v18

    if-ge v13, v0, :cond_212

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v28, v0

    move/from16 v0, v28

    move/from16 v1, v18

    if-ne v0, v1, :cond_212

    .line 2358
    move/from16 v13, v18

    goto/16 :goto_212

    .line 1885
    nop

    :sswitch_data_dfe
    .sparse-switch
        0x1 -> :sswitch_2ce
        0x3 -> :sswitch_2ab
        0x5 -> :sswitch_2dc
        0x101 -> :sswitch_2ea
        0x103 -> :sswitch_2b0
        0x105 -> :sswitch_2d7
        0x201 -> :sswitch_2f3
        0x303 -> :sswitch_2a2
        0x505 -> :sswitch_2e5
    .end sparse-switch

    .line 1936
    :sswitch_data_e24
    .sparse-switch
        0x10 -> :sswitch_314
        0x30 -> :sswitch_30f
        0x50 -> :sswitch_31e
        0x3030 -> :sswitch_306
        0x5050 -> :sswitch_328
    .end sparse-switch
.end method

.method private dismissPopup()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2910
    iget-boolean v0, p0, mIsShowMessageSent:Z

    if-nez v0, :cond_d

    iget-object v0, p0, mShowPopupRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_d

    iget-object v0, p0, mDismissPopupRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_22

    .line 2913
    :cond_d
    iget-object v0, p0, mParentView:Landroid/view/View;

    iget-object v1, p0, mShowPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2914
    iget-object v0, p0, mParentView:Landroid/view/View;

    iget-object v1, p0, mDismissPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2915
    iput-object v2, p0, mShowPopupRunnable:Ljava/lang/Runnable;

    .line 2916
    iput-object v2, p0, mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 2917
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsShowMessageSent:Z

    .line 2920
    :cond_22
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2d

    .line 2923
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2924
    iput-object v2, p0, mPopup:Landroid/widget/PopupWindow;

    .line 2926
    :cond_2d
    return-void
.end method

.method private getStateHashCode()I
    .registers 5

    .prologue
    .line 2977
    iget v0, p0, mPopupType:I

    .line 2978
    .local v0, "hashCode":I
    iget-object v2, p0, mParentView:Landroid/view/View;

    if-eqz v2, :cond_50

    .line 2980
    iget-object v2, p0, mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    shl-int/lit8 v2, v2, 0x1

    iget-object v3, p0, mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    shl-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    iget-object v3, p0, mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    iget-object v3, p0, mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    iget-object v3, p0, mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    iget-object v3, p0, mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 2987
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 2988
    .local v1, "location":[I
    iget-object v2, p0, mParentView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2989
    const/4 v2, 0x0

    aget v2, v1, v2

    shl-int/lit8 v2, v2, 0x14

    const/4 v3, 0x1

    aget v3, v1, v3

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 2992
    .end local v1    # "location":[I
    :cond_50
    return v0
.end method

.method private getTooltipText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1043
    iget-object v0, p0, mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1044
    iget-object v0, p0, mContentText:Ljava/lang/CharSequence;

    .line 1048
    :goto_a
    return-object v0

    .line 1045
    :cond_b
    iget-object v0, p0, mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1046
    iget-object v0, p0, mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_a

    .line 1048
    :cond_1e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private initCoverManager()V
    .registers 3

    .prologue
    .line 497
    iget-object v0, p0, mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_1c

    .line 498
    const-string v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    .line 499
    iget-object v0, p0, mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_1c

    .line 500
    const-string v0, "HoverPopupWindow"

    const-string/jumbo v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :cond_1c
    return-void
.end method

.method private isViewCoverClose()Z
    .registers 6

    .prologue
    .line 762
    const/4 v2, 0x1

    .line 763
    .local v2, "isCoverOpen":Z
    const/4 v0, 0x0

    .line 765
    .local v0, "coverState":Lcom/samsung/android/cover/CoverState;
    :try_start_2
    iget-object v3, p0, mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-eqz v3, :cond_12

    .line 766
    iget-object v3, p0, mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    invoke-interface {v3}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 767
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_16

    move-result v2

    .line 773
    :cond_12
    :goto_12
    if-nez v2, :cond_1f

    const/4 v3, 0x1

    :goto_15
    return v3

    .line 770
    :catch_16
    move-exception v1

    .line 771
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "HoverPopupWindow"

    const-string v4, "RemoteException in getCoverState: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    .line 773
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1f
    const/4 v3, 0x0

    goto :goto_15
.end method

.method private makeToolTipContentView()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const v6, 0x7010001

    .line 1315
    invoke-direct {p0}, getTooltipText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1317
    .local v3, "text":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1319
    iput-object v7, p0, mContentView:Landroid/view/View;

    .line 1340
    :goto_10
    return-void

    .line 1322
    :cond_11
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v1, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 1323
    .local v1, "fontScale":F
    iget-object v4, p0, mContentView:Landroid/view/View;

    if-eqz v4, :cond_2f

    iget-object v4, p0, mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, v6, :cond_2f

    iget v4, p0, mFontScale:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_6c

    .line 1324
    :cond_2f
    iget v4, p0, mFontScale:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_37

    .line 1325
    iput v1, p0, mFontScale:F

    .line 1328
    :cond_37
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v4, :cond_45

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v5, "gt5note"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4a

    :cond_45
    iget v4, p0, mUspLevel:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_74

    .line 1329
    :cond_4a
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, mContext:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v0, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1330
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1334
    .end local v0    # "context":Landroid/content/Context;
    .local v2, "inflater":Landroid/view/LayoutInflater;
    :goto_58
    const v4, 0x1090078

    invoke-virtual {v2, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, mContentView:Landroid/view/View;

    .line 1335
    iget-object v4, p0, mContentView:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1336
    iget-object v4, p0, mContentView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setId(I)V

    .line 1338
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_6c
    iget-object v4, p0, mContentView:Landroid/view/View;

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_10

    .line 1332
    :cond_74
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .restart local v2    # "inflater":Landroid/view/LayoutInflater;
    goto :goto_58
.end method

.method private playSoundAndHapticFeedback()V
    .registers 4

    .prologue
    .line 1055
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1056
    .local v0, "audioManager":Landroid/media/AudioManager;
    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 1057
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIBRATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_21

    .line 1058
    iget-object v1, p0, mParentView:Landroid/view/View;

    const v2, 0xc359

    invoke-virtual {v1, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1060
    :cond_21
    return-void
.end method

.method private pointInValidHoverArea(FF)Z
    .registers 5
    .param p1, "localX"    # F
    .param p2, "localY"    # F

    .prologue
    .line 2958
    iget v0, p0, mHoverPaddingLeft:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_3a

    iget-object v0, p0, mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v1, p0, mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, mHoverPaddingRight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3a

    iget v0, p0, mHoverPaddingTop:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_3a

    iget-object v0, p0, mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, mHoverPaddingBottom:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3a

    const/4 v0, 0x1

    :goto_39
    return v0

    :cond_3a
    const/4 v0, 0x0

    goto :goto_39
.end method

.method private resetTimeout()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 2996
    iget-object v0, p0, mDismissHandler:Landroid/os/Handler;

    if-eqz v0, :cond_38

    .line 2997
    iget-object v0, p0, mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2998
    iget-object v0, p0, mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3003
    :cond_12
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v0, :cond_39

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "gt5note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v1, "noble"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3004
    :cond_2b
    iget-object v0, p0, mDismissHandler:Landroid/os/Handler;

    iget-object v1, p0, mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3009
    :cond_38
    :goto_38
    return-void

    .line 3006
    :cond_39
    iget-object v0, p0, mDismissHandler:Landroid/os/Handler;

    iget-object v1, p0, mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_38
.end method

.method private setAnimator(II)V
    .registers 8
    .param p1, "movelength"    # I
    .param p2, "direction"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 520
    iget v0, p0, MOVE_LEFT:I

    if-eq p2, v0, :cond_c

    iget v0, p0, MOVE_RIGHT:I

    if-ne p2, v0, :cond_35

    .line 521
    :cond_c
    new-array v0, v1, [F

    aput v2, v0, v3

    int-to-float v1, p1

    aput v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, objAnimator:Landroid/animation/ValueAnimator;

    .line 528
    :goto_19
    iget-object v0, p0, objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/HoverPopupWindow$QuintEaseOut;

    invoke-direct {v1}, Landroid/widget/HoverPopupWindow$QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 529
    iget-object v0, p0, objAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 530
    iget-object v0, p0, objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/HoverPopupWindow$3;

    invoke-direct {v1, p0}, Landroid/widget/HoverPopupWindow$3;-><init>(Landroid/widget/HoverPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 551
    return-void

    .line 522
    :cond_35
    iget v0, p0, MOVE_LEFT_TO_CENTER:I

    if-eq p2, v0, :cond_3d

    iget v0, p0, MOVE_RIGHT_TO_CENTER:I

    if-ne p2, v0, :cond_4b

    .line 523
    :cond_3d
    new-array v0, v1, [F

    int-to-float v1, p1

    aput v1, v0, v3

    aput v2, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, objAnimator:Landroid/animation/ValueAnimator;

    goto :goto_19

    .line 525
    :cond_4b
    new-array v0, v1, [F

    fill-array-data v0, :array_58

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, objAnimator:Landroid/animation/ValueAnimator;

    goto :goto_19

    nop

    :array_58
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private setPopupContent()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1260
    iget v4, p0, mPopupType:I

    packed-switch v4, :pswitch_data_5e

    .line 1291
    iput-object v6, p0, mContentView:Landroid/view/View;

    .line 1296
    :cond_8
    :goto_8
    iget-object v4, p0, mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    if-eqz v4, :cond_13

    .line 1297
    iget-object v4, p0, mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    iget-object v5, p0, mParentView:Landroid/view/View;

    invoke-interface {v4, v5, p0}, Landroid/widget/HoverPopupWindow$HoverPopupListener;->onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z

    .line 1300
    :cond_13
    return-void

    .line 1262
    :pswitch_14
    iput-object v6, p0, mContentView:Landroid/view/View;

    goto :goto_8

    .line 1265
    :pswitch_17
    invoke-direct {p0}, makeToolTipContentView()V

    goto :goto_8

    .line 1268
    :pswitch_1b
    invoke-virtual {p0}, makeDefaultContentView()V

    goto :goto_8

    .line 1271
    :pswitch_1f
    iget-object v4, p0, mContentView:Landroid/view/View;

    if-nez v4, :cond_8

    .line 1272
    iget v4, p0, mContentResId:I

    if-eqz v4, :cond_8

    .line 1275
    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v4, :cond_35

    sget-object v4, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v5, "gt5note"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3a

    :cond_35
    iget v4, p0, mUspLevel:I

    const/4 v5, 0x3

    if-le v4, v5, :cond_56

    .line 1276
    :cond_3a
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, mContext:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v0, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 1277
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1282
    .end local v0    # "context":Landroid/content/Context;
    .local v2, "inflater":Landroid/view/LayoutInflater;
    :goto_48
    :try_start_48
    iget v4, p0, mContentResId:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1283
    .local v3, "v":Landroid/view/View;
    iput-object v3, p0, mContentView:Landroid/view/View;
    :try_end_51
    .catch Landroid/view/InflateException; {:try_start_48 .. :try_end_51} :catch_52

    goto :goto_8

    .line 1284
    .end local v3    # "v":Landroid/view/View;
    :catch_52
    move-exception v1

    .line 1285
    .local v1, "ie":Landroid/view/InflateException;
    iput-object v6, p0, mContentView:Landroid/view/View;

    goto :goto_8

    .line 1279
    .end local v1    # "ie":Landroid/view/InflateException;
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :cond_56
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .restart local v2    # "inflater":Landroid/view/LayoutInflater;
    goto :goto_48

    .line 1260
    nop

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_14
        :pswitch_17
        :pswitch_1b
        :pswitch_1f
    .end packed-switch
.end method

.method private showPopup()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1168
    iget v0, p0, mHashCodeForViewState:I

    invoke-direct {p0}, getStateHashCode()I

    move-result v1

    if-eq v0, v1, :cond_2a

    .line 1172
    iget v0, p0, mUspLevel:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_26

    iget-object v0, p0, mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_26

    .line 1173
    invoke-virtual {p0}, dismiss()V

    .line 1174
    invoke-virtual {p0}, show()V

    .line 1207
    :goto_25
    return-void

    .line 1176
    :cond_26
    invoke-virtual {p0}, dismiss()V

    goto :goto_25

    .line 1179
    :cond_2a
    iget-object v0, p0, mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getIsDetachedFromWindow()Z

    move-result v0

    if-ne v0, v3, :cond_36

    .line 1180
    invoke-virtual {p0}, dismiss()V

    goto :goto_25

    .line 1183
    :cond_36
    iget-boolean v0, p0, mIsSkipPenPointEffect:Z

    if-nez v0, :cond_3d

    .line 1184
    invoke-virtual {p0, v3}, showPenPointEffect(Z)V

    .line 1187
    :cond_3d
    iput-boolean v2, p0, mIsSkipPenPointEffect:Z

    .line 1189
    sget-object v0, DEVICE_TYPE:Ljava/lang/String;

    if-eqz v0, :cond_61

    sget-object v0, DEVICE_TYPE:Ljava/lang/String;

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_61

    const-string/jumbo v0, "mocha"

    const-string/jumbo v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 1190
    invoke-virtual {p0, v2}, setFHGuideLineEnabled(Z)V

    .line 1193
    :cond_61
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v0, :cond_73

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v1, "noble"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 1194
    invoke-virtual {p0, v2}, setFHGuideLineEnabled(Z)V

    .line 1197
    :cond_73
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_7c

    .line 1198
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1201
    :cond_7c
    invoke-virtual {p0}, createPopupWindow()Landroid/widget/PopupWindow;

    .line 1202
    invoke-direct {p0}, setPopupContent()V

    .line 1203
    invoke-virtual {p0}, updateHoverPopup()V

    goto :goto_25
.end method

.method private updateHoverPopup(Landroid/view/View;III)V
    .registers 10
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "offsetX"    # I
    .param p4, "offsetY"    # I

    .prologue
    const/4 v4, 0x0

    .line 2399
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_6

    .line 2454
    :cond_5
    :goto_5
    return-void

    .line 2405
    :cond_6
    invoke-virtual {p0, p1, p2, p3, p4}, computePopupPosition(Landroid/view/View;III)V

    .line 2407
    iget v0, p0, mContentWidth:I

    if-nez v0, :cond_11

    iget v0, p0, mContentHeight:I

    if-eqz v0, :cond_5

    .line 2413
    :cond_11
    iget-boolean v0, p0, mIsPopupTouchable:Z

    if-eqz v0, :cond_3e

    iget-object v0, p0, mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    if-eqz v0, :cond_3e

    .line 2414
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 2431
    :goto_20
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2437
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 2438
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, mPopupPosX:I

    iget v2, p0, mPopupPosY:I

    iget v3, p0, mContentWidth:I

    iget v4, p0, mContentHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_5

    .line 2415
    :cond_3e
    iget-boolean v0, p0, mIsGuideLineEnabled:Z

    if-eqz v0, :cond_4e

    iget-object v0, p0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v0, :cond_4e

    .line 2416
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_20

    .line 2428
    :cond_4e
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_20

    .line 2441
    :cond_56
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_74

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_74

    .line 2444
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iget v2, p0, mPopupPosX:I

    iget v3, p0, mPopupPosY:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    goto :goto_5

    .line 2447
    :cond_74
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, mPopupPosX:I

    iget v2, p0, mPopupPosY:I

    invoke-virtual {v0, p1, v4, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_5
.end method


# virtual methods
.method protected computePopupPosition(Landroid/view/View;III)V
    .registers 59
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "offX"    # I
    .param p4, "offY"    # I

    .prologue
    .line 1352
    move-object/from16 v0, p0

    iget-object v4, v0, mContentView:Landroid/view/View;

    if-nez v4, :cond_7

    .line 1845
    :cond_6
    :goto_6
    return-void

    .line 1356
    :cond_7
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, mAnchorView:Landroid/view/View;

    .line 1357
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, mPopupGravity:I

    .line 1358
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, mPopupOffsetX:I

    .line 1359
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, mPopupOffsetY:I

    .line 1361
    if-eqz p1, :cond_4c4

    move-object/from16 v14, p1

    .line 1362
    .local v14, "anchorView":Landroid/view/View;
    :goto_23
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v27

    .line 1365
    .local v27, "displayMetrics":Landroid/util/DisplayMetrics;
    const/4 v13, 0x0

    .line 1366
    .local v13, "anchorRect":Landroid/graphics/Rect;
    const/4 v4, 0x2

    new-array v12, v4, [I

    .line 1367
    .local v12, "anchorLocOnScr":[I
    const/4 v4, 0x2

    new-array v11, v4, [I

    .line 1368
    .local v11, "anchorLocInWindow":[I
    invoke-virtual {v14, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1369
    invoke-virtual {v14, v11}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1370
    invoke-virtual {v14}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/RenderNode;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_ab

    invoke-virtual {v14}, Landroid/view/View;->getRotation()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_61

    invoke-virtual {v14}, Landroid/view/View;->getRotationX()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_61

    invoke-virtual {v14}, Landroid/view/View;->getRotationY()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_ab

    .line 1372
    :cond_61
    const/4 v4, 0x2

    new-array v0, v4, [F

    move-object/from16 v34, v0

    .line 1373
    .local v34, "identityMatrixOffset":[F
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v34, v5

    aput v6, v34, v4

    .line 1374
    invoke-virtual {v14}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v4, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1376
    invoke-virtual {v14}, Landroid/view/View;->getRotation()F

    move-result v4

    float-to-int v4, v4

    const/16 v5, 0xb4

    if-ne v4, v5, :cond_4ca

    .line 1377
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v11, v5

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    aput v5, v11, v4

    .line 1378
    const/4 v4, 0x1

    const/4 v5, 0x1

    aget v5, v11, v5

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    aput v5, v11, v4

    .line 1380
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v12, v5

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    aput v5, v12, v4

    .line 1381
    const/4 v4, 0x1

    const/4 v5, 0x1

    aget v5, v12, v5

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    aput v5, v12, v4

    .line 1392
    .end local v34    # "identityMatrixOffset":[F
    :cond_ab
    :goto_ab
    new-instance v26, Landroid/graphics/Rect;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/Rect;-><init>()V

    .line 1394
    .local v26, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/view/View;->getWindowVisibleContentFrame(Landroid/graphics/Rect;)V

    .line 1395
    move-object/from16 v0, p0

    iget-object v4, v0, mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isScaleWindow()Z

    move-result v4

    if-eqz v4, :cond_107

    .line 1396
    invoke-virtual {v14}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v42

    .line 1397
    .local v42, "root":Landroid/view/View;
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v51

    .line 1398
    .local v51, "vlp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v51

    instance-of v4, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_107

    move-object/from16 v53, v51

    .line 1399
    check-cast v53, Landroid/view/WindowManager$LayoutParams;

    .line 1401
    .local v53, "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getBaseActivityToken()Landroid/os/IBinder;

    move-result-object v15

    .line 1402
    .local v15, "atoken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "multiwindow_facade"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 1403
    .local v39, "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    move-object/from16 v0, v39

    invoke-virtual {v0, v15}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackPosition(Landroid/os/IBinder;)Landroid/graphics/Point;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, mPenWindowStartPos:Landroid/graphics/Point;

    .line 1404
    move-object/from16 v0, p0

    iget-object v4, v0, mPenWindowStartPos:Landroid/graphics/Point;

    if-eqz v4, :cond_4f8

    .line 1405
    move-object/from16 v0, p0

    iget-object v4, v0, mPenWindowStartPos:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iget-object v5, v0, mPenWindowStartPos:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 1413
    .end local v15    # "atoken":Landroid/os/IBinder;
    .end local v39    # "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .end local v42    # "root":Landroid/view/View;
    .end local v51    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v53    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_107
    :goto_107
    move-object/from16 v0, p0

    iget-object v4, v0, mAnchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v43

    .line 1414
    .local v43, "rootview":Landroid/view/View;
    const/16 v36, 0x0

    .line 1415
    .local v36, "isRootViewFullScreen":Z
    invoke-virtual/range {v43 .. v43}, Landroid/view/View;->getWidth()I

    move-result v45

    .line 1416
    .local v45, "rootviewWidth":I
    invoke-virtual/range {v43 .. v43}, Landroid/view/View;->getHeight()I

    move-result v44

    .line 1418
    .local v44, "rootviewHeight":I
    move-object/from16 v0, v27

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v0, v45

    if-ne v0, v4, :cond_12b

    move-object/from16 v0, v27

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v0, v44

    if-ne v0, v4, :cond_12b

    .line 1420
    const/16 v36, 0x1

    .line 1424
    :cond_12b
    invoke-virtual {v14}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_501

    .line 1428
    const/4 v4, 0x0

    aget v4, v12, v4

    const/4 v5, 0x0

    aget v5, v11, v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, mWindowGapX:I

    .line 1429
    const/4 v4, 0x1

    aget v4, v12, v4

    const/4 v5, 0x1

    aget v5, v11, v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, mWindowGapY:I

    .line 1430
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, mCoordinatesOfAnchorView:I

    .line 1432
    new-instance v13, Landroid/graphics/Rect;

    .end local v13    # "anchorRect":Landroid/graphics/Rect;
    const/4 v4, 0x0

    aget v4, v11, v4

    const/4 v5, 0x1

    aget v5, v11, v5

    const/4 v6, 0x0

    aget v6, v11, v6

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x1

    aget v7, v11, v7

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v13, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1460
    .restart local v13    # "anchorRect":Landroid/graphics/Rect;
    :cond_16b
    :goto_16b
    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_1d3

    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_1d3

    .line 1461
    move-object/from16 v0, p0

    iget-object v4, v0, mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v42

    .line 1462
    .restart local v42    # "root":Landroid/view/View;
    invoke-virtual/range {v42 .. v42}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v51

    .line 1464
    .restart local v51    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v51

    instance-of v4, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_1d3

    move-object/from16 v53, v51

    .line 1465
    check-cast v53, Landroid/view/WindowManager$LayoutParams;

    .line 1466
    .restart local v53    # "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v53

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move-object/from16 v0, v53

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v4, v5

    and-int/lit16 v4, v4, 0x404

    if-nez v4, :cond_553

    const/16 v37, 0x1

    .line 1468
    .local v37, "isSystemUiVisible":Z
    :goto_19c
    const/16 v49, 0x0

    .line 1470
    .local v49, "statusBarHeight":I
    move-object/from16 v0, v53

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x200

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1b8

    if-eqz v37, :cond_1b8

    .line 1472
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v49

    .line 1475
    :cond_1b8
    const/4 v4, 0x0

    move-object/from16 v0, v26

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 1476
    move/from16 v0, v49

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1477
    move-object/from16 v0, v27

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v26

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 1478
    move-object/from16 v0, v27

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v26

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 1484
    .end local v37    # "isSystemUiVisible":Z
    .end local v42    # "root":Landroid/view/View;
    .end local v49    # "statusBarHeight":I
    .end local v51    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v53    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_1d3
    const/4 v4, 0x0

    move-object/from16 v0, v26

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, mDisplayFrameLeft:I

    .line 1485
    const/4 v4, 0x0

    move-object/from16 v0, v26

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, mDisplayFrameRight:I

    .line 1486
    move-object/from16 v0, p0

    iget v4, v0, mDisplayFrameRight:I

    move-object/from16 v0, p0

    iget v5, v0, mDisplayFrameLeft:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, mDisplayWidthToComputeAniWidth:I

    .line 1500
    move-object/from16 v0, p0

    iget-object v4, v0, mContentLP:Landroid/view/ViewGroup$LayoutParams;

    if-nez v4, :cond_557

    .line 1501
    move-object/from16 v0, v27

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v52

    .line 1503
    .local v52, "widthMeasureSpec":I
    move-object/from16 v0, v27

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v31

    .line 1523
    .local v31, "heightMeasureSpec":I
    :goto_214
    move-object/from16 v0, p0

    iget-object v4, v0, mContentView:Landroid/view/View;

    move/from16 v0, v52

    move/from16 v1, v31

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1524
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, mNeedToMeasureContentView:Z

    .line 1525
    move-object/from16 v0, p0

    iget-object v4, v0, mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    .line 1526
    .local v25, "contentWidth":I
    move-object/from16 v0, p0

    iget-object v4, v0, mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    .line 1528
    .local v23, "contentHeight":I
    move-object/from16 v0, p0

    iget-object v4, v0, mPopup:Landroid/widget/PopupWindow;

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1529
    move-object/from16 v0, p0

    iget-object v4, v0, mPopup:Landroid/widget/PopupWindow;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1532
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v25

    move/from16 v3, v23

    invoke-direct {v0, v13, v1, v2, v3}, computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 1534
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v13, Landroid/graphics/Rect;->left:I

    iget v6, v13, Landroid/graphics/Rect;->top:I

    iget v7, v13, Landroid/graphics/Rect;->right:I

    iget v8, v13, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, mReferncedAnchorRect:Landroid/graphics/Rect;

    .line 1539
    move-object/from16 v0, p0

    iget v0, v0, mPopupPosX:I

    move/from16 v40, v0

    .line 1540
    .local v40, "posX":I
    move-object/from16 v0, p0

    iget v0, v0, mPopupPosY:I

    move/from16 v41, v0

    .line 1541
    .local v41, "posY":I
    const/16 v16, 0x0

    .line 1549
    .local v16, "canDraw":Z
    move-object/from16 v0, p0

    iget v4, v0, mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_598

    .line 1550
    add-int v4, v41, v23

    iget v5, v13, Landroid/graphics/Rect;->top:I

    if-le v4, v5, :cond_28d

    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v41

    if-ge v0, v4, :cond_28d

    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int v4, v4, v41

    iget v5, v13, Landroid/graphics/Rect;->bottom:I

    if-lt v4, v5, :cond_28f

    .line 1552
    :cond_28d
    const/16 v16, 0x1

    .line 1560
    :cond_28f
    :goto_28f
    move-object/from16 v0, p0

    iget-boolean v4, v0, mIsGuideLineEnabled:Z

    if-nez v4, :cond_29b

    move-object/from16 v0, p0

    iget-boolean v4, v0, mIsFHGuideLineEnabled:Z

    if-eqz v4, :cond_861

    :cond_29b
    if-eqz v16, :cond_861

    .line 1561
    const/16 v35, 0x1

    .line 1563
    .local v35, "isPopupAboveHorizontal":Z
    const/high16 v4, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v4, v1}, convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v38

    .line 1566
    .local v38, "marginForHoverRing":I
    const/16 v17, 0x0

    .line 1567
    .local v17, "containerLeftOnWindow":I
    const/16 v22, 0x0

    .line 1568
    .local v22, "containerRightOnWindow":I
    move-object/from16 v0, p0

    iget v4, v0, mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5af

    .line 1569
    iget v4, v13, Landroid/graphics/Rect;->left:I

    move/from16 v0, v40

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1571
    add-int v4, v40, v25

    iget v5, v13, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v27

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 1584
    :cond_2d1
    :goto_2d1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mContainerLeftOnWindow:I

    .line 1587
    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    move/from16 v0, v41

    if-le v0, v4, :cond_5f3

    .line 1588
    const/16 v35, 0x0

    .line 1594
    :goto_2e1
    move-object/from16 v0, p0

    iget-object v4, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-nez v4, :cond_314

    .line 1595
    new-instance v4, Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;-><init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    .line 1596
    move-object/from16 v0, p0

    iget-object v4, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setBackgroundColor(I)V

    .line 1597
    const-string v4, "HoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: kdhpoint2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    move-object/from16 v0, p0

    iget-object v4, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget v5, v0, mGuideRingDrawableId:I

    move-object/from16 v0, p0

    iget v6, v0, mGuideLineColor:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(II)V

    .line 1602
    :cond_314
    move-object/from16 v0, p0

    iget-object v4, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v4, :cond_335

    .line 1603
    move-object/from16 v0, p0

    iget-boolean v4, v0, mOverTopBoundary:Z

    if-nez v4, :cond_326

    move-object/from16 v0, p0

    iget-boolean v4, v0, misGravityBottomUnder:Z

    if-eqz v4, :cond_5f7

    .line 1604
    :cond_326
    const-string v4, "HoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: Call setOverTopForCotainer(true)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    move-object/from16 v0, p0

    iget-object v4, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setOverTopForCotainer(Z)V

    .line 1613
    :cond_335
    :goto_335
    move-object/from16 v0, p0

    iget-object v4, v0, mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    .line 1614
    .local v24, "contentLP":Landroid/view/ViewGroup$LayoutParams;
    if-nez v24, :cond_608

    .line 1615
    move-object/from16 v0, p0

    iget-object v4, v0, mContentView:Landroid/view/View;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, v25

    move/from16 v1, v23

    invoke-direct {v5, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1623
    :goto_34f
    move-object/from16 v0, p0

    iget-object v4, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_373

    move-object/from16 v0, p0

    iget-object v4, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_373

    .line 1625
    move-object/from16 v0, p0

    iget-object v4, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->removeAllViews()V

    .line 1628
    :cond_373
    move-object/from16 v0, p0

    iget-object v4, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildCount()I

    move-result v4

    if-nez v4, :cond_388

    .line 1629
    move-object/from16 v0, p0

    iget-object v4, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->addView(Landroid/view/View;)V

    .line 1632
    :cond_388
    move-object/from16 v0, p0

    iget-object v4, v0, mPopup:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1633
    move-object/from16 v0, p0

    iget-object v4, v0, mPopup:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1636
    sub-int v4, v17, v40

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v19

    .line 1637
    .local v19, "containerPaddingLeft":I
    add-int v4, v40, v25

    sub-int v4, v22, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v20

    .line 1638
    .local v20, "containerPaddingRight":I
    const/16 v21, 0x0

    .line 1639
    .local v21, "containerPaddingTop":I
    const/16 v18, 0x0

    .line 1640
    .local v18, "containerPaddingBottom":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, mIsGuideLineEnabled:Z

    if-eqz v4, :cond_628

    move-object/from16 v0, p0

    iget-boolean v4, v0, mIsFHGuideLineEnabled:Z

    if-eqz v4, :cond_628

    .line 1641
    if-eqz v35, :cond_616

    .line 1642
    move/from16 v18, v38

    .line 1643
    move-object/from16 v0, p0

    iget-object v4, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v4, v0, v5, v1, v2}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPadding(IIII)V

    .line 1673
    :goto_3c8
    move-object/from16 v0, p0

    iget v4, v0, mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_67a

    .line 1674
    if-eqz v35, :cond_3d3

    .line 1675
    move/from16 v40, v17

    .line 1691
    :cond_3d3
    :goto_3d3
    move-object/from16 v0, p0

    iget v4, v0, mHoveringPointX:I

    sub-int v4, v4, v40

    move-object/from16 v0, p0

    iget v5, v0, mWindowGapX:I

    sub-int v32, v4, v5

    .line 1692
    .local v32, "hoverPointXonContainer":I
    move-object/from16 v0, p0

    iget v4, v0, mHoveringPointY:I

    sub-int v4, v4, v41

    move-object/from16 v0, p0

    iget v5, v0, mWindowGapY:I

    sub-int v33, v4, v5

    .line 1703
    .local v33, "hoverPointYonContainer":I
    if-eqz v35, :cond_72f

    .line 1706
    invoke-virtual {v14}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v50

    .line 1707
    .local v50, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v50, :cond_47c

    .line 1708
    invoke-virtual/range {v50 .. v50}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v46

    .line 1709
    .local v46, "scaleFactor":Landroid/graphics/PointF;
    new-instance v30, Landroid/graphics/PointF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v30

    invoke-direct {v0, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1710
    .local v30, "fPos":Landroid/graphics/PointF;
    move-object/from16 v0, v46

    iget v4, v0, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_414

    move-object/from16 v0, v46

    iget v4, v0, Landroid/graphics/PointF;->y:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_6ef

    .line 1711
    :cond_414
    invoke-virtual {v14}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_68d

    .line 1712
    move-object/from16 v0, p0

    iget v4, v0, mHoveringPointX:I

    int-to-float v4, v4

    move/from16 v0, v40

    int-to-float v5, v0

    move-object/from16 v0, v46

    iget v6, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, v26

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v46

    iget v5, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v5

    move-object/from16 v0, v30

    iput v4, v0, Landroid/graphics/PointF;->x:F

    .line 1713
    move-object/from16 v0, p0

    iget v4, v0, mHoveringPointY:I

    int-to-float v4, v4

    move/from16 v0, v41

    int-to-float v5, v0

    move-object/from16 v0, v46

    iget v6, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, v26

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v46

    iget v5, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v5

    move-object/from16 v0, v30

    iput v4, v0, Landroid/graphics/PointF;->y:F

    .line 1719
    :goto_458
    move-object/from16 v0, p0

    iget-boolean v4, v0, mIsFHGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6c9

    .line 1720
    move-object/from16 v0, p0

    iget-object v4, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v25, 0x2

    add-int v5, v5, v19

    move-object/from16 v0, p0

    iget v6, v0, mGuideLineFadeOffset:I

    sub-int v6, v23, v6

    move-object/from16 v0, v30

    iget v7, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    move-object/from16 v0, v30

    iget v8, v0, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    .line 1743
    .end local v30    # "fPos":Landroid/graphics/PointF;
    .end local v46    # "scaleFactor":Landroid/graphics/PointF;
    :cond_47c
    :goto_47c
    div-int/lit8 v4, v25, 0x2

    add-int v47, v19, v4

    .line 1744
    .local v47, "startx":I
    move-object/from16 v0, p0

    iget v4, v0, mGuideLineFadeOffset:I

    sub-int v48, v23, v4

    .line 1745
    .local v48, "starty":I
    move/from16 v28, v32

    .line 1746
    .local v28, "endx":I
    move/from16 v29, v33

    .line 1748
    .local v29, "endy":I
    add-int/lit8 v4, v19, 0xa

    move/from16 v0, v28

    if-ge v0, v4, :cond_490

    .line 1820
    .end local v17    # "containerLeftOnWindow":I
    .end local v18    # "containerPaddingBottom":I
    .end local v19    # "containerPaddingLeft":I
    .end local v20    # "containerPaddingRight":I
    .end local v21    # "containerPaddingTop":I
    .end local v22    # "containerRightOnWindow":I
    .end local v24    # "contentLP":Landroid/view/ViewGroup$LayoutParams;
    .end local v28    # "endx":I
    .end local v29    # "endy":I
    .end local v32    # "hoverPointXonContainer":I
    .end local v33    # "hoverPointYonContainer":I
    .end local v35    # "isPopupAboveHorizontal":Z
    .end local v38    # "marginForHoverRing":I
    .end local v47    # "startx":I
    .end local v48    # "starty":I
    .end local v50    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_490
    :goto_490
    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, mPopupPosX:I

    .line 1821
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, mPopupPosY:I

    .line 1837
    move-object/from16 v0, p0

    iget-object v4, v0, mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v0, p0

    iget v5, v0, mAnimationStyle:I

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1839
    move-object/from16 v0, p0

    iget-boolean v4, v0, mIsFHAnimationEnabled:Z

    if-nez v4, :cond_6

    .line 1840
    move-object/from16 v0, p0

    iget-object v4, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v4, :cond_6

    .line 1841
    const-string v4, "HoverPopupWindow"

    const-string v5, "HoverPopupWindow.computePopupPosition() : Call setFHmoveAnimationOffset(0)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    move-object/from16 v0, p0

    iget-object v4, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setFHmoveAnimationOffset(I)V

    goto/16 :goto_6

    .line 1361
    .end local v11    # "anchorLocInWindow":[I
    .end local v12    # "anchorLocOnScr":[I
    .end local v13    # "anchorRect":Landroid/graphics/Rect;
    .end local v14    # "anchorView":Landroid/view/View;
    .end local v16    # "canDraw":Z
    .end local v23    # "contentHeight":I
    .end local v25    # "contentWidth":I
    .end local v26    # "displayFrame":Landroid/graphics/Rect;
    .end local v27    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v31    # "heightMeasureSpec":I
    .end local v36    # "isRootViewFullScreen":Z
    .end local v40    # "posX":I
    .end local v41    # "posY":I
    .end local v43    # "rootview":Landroid/view/View;
    .end local v44    # "rootviewHeight":I
    .end local v45    # "rootviewWidth":I
    .end local v52    # "widthMeasureSpec":I
    :cond_4c4
    move-object/from16 v0, p0

    iget-object v14, v0, mParentView:Landroid/view/View;

    goto/16 :goto_23

    .line 1383
    .restart local v11    # "anchorLocInWindow":[I
    .restart local v12    # "anchorLocOnScr":[I
    .restart local v13    # "anchorRect":Landroid/graphics/Rect;
    .restart local v14    # "anchorView":Landroid/view/View;
    .restart local v27    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v34    # "identityMatrixOffset":[F
    :cond_4ca
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v11, v5

    const/4 v6, 0x0

    aget v6, v34, v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    aput v5, v11, v4

    .line 1384
    const/4 v4, 0x1

    const/4 v5, 0x1

    aget v5, v11, v5

    const/4 v6, 0x1

    aget v6, v34, v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    aput v5, v11, v4

    .line 1386
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, v12, v5

    const/4 v6, 0x0

    aget v6, v34, v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    aput v5, v12, v4

    .line 1387
    const/4 v4, 0x1

    const/4 v5, 0x1

    aget v5, v12, v5

    const/4 v6, 0x1

    aget v6, v34, v6

    float-to-int v6, v6

    sub-int/2addr v5, v6

    aput v5, v12, v4

    goto/16 :goto_ab

    .line 1407
    .end local v34    # "identityMatrixOffset":[F
    .restart local v15    # "atoken":Landroid/os/IBinder;
    .restart local v26    # "displayFrame":Landroid/graphics/Rect;
    .restart local v39    # "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .restart local v42    # "root":Landroid/view/View;
    .restart local v51    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v53    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_4f8
    const-string v4, "HoverPopupWindow"

    const-string v5, "HoverPopupWindow: computePopupPosition : mPenWindowStartPos == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_107

    .line 1438
    .end local v15    # "atoken":Landroid/os/IBinder;
    .end local v39    # "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .end local v42    # "root":Landroid/view/View;
    .end local v51    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v53    # "wlp":Landroid/view/WindowManager$LayoutParams;
    .restart local v36    # "isRootViewFullScreen":Z
    .restart local v43    # "rootview":Landroid/view/View;
    .restart local v44    # "rootviewHeight":I
    .restart local v45    # "rootviewWidth":I
    :cond_501
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, mCoordinatesOfAnchorView:I

    .line 1439
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, mWindowGapX:I

    .line 1440
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, mWindowGapY:I

    .line 1442
    new-instance v13, Landroid/graphics/Rect;

    .end local v13    # "anchorRect":Landroid/graphics/Rect;
    const/4 v4, 0x0

    aget v4, v12, v4

    const/4 v5, 0x1

    aget v5, v12, v5

    const/4 v6, 0x0

    aget v6, v12, v6

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    const/4 v7, 0x1

    aget v7, v12, v7

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v13, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1450
    .restart local v13    # "anchorRect":Landroid/graphics/Rect;
    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_16b

    move-object/from16 v0, v26

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_16b

    .line 1451
    const/4 v4, 0x0

    move-object/from16 v0, v26

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 1452
    move-object/from16 v0, v27

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v26

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 1453
    const/4 v4, 0x0

    move-object/from16 v0, v26

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 1454
    move-object/from16 v0, v27

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v26

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_16b

    .line 1466
    .restart local v42    # "root":Landroid/view/View;
    .restart local v51    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v53    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_553
    const/16 v37, 0x0

    goto/16 :goto_19c

    .line 1506
    .end local v42    # "root":Landroid/view/View;
    .end local v51    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v53    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_557
    move-object/from16 v0, p0

    iget-object v4, v0, mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v4, :cond_581

    .line 1507
    move-object/from16 v0, p0

    iget-object v4, v0, mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v52

    .line 1514
    .restart local v52    # "widthMeasureSpec":I
    :goto_56b
    move-object/from16 v0, p0

    iget-object v4, v0, mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v4, :cond_58c

    .line 1515
    move-object/from16 v0, p0

    iget-object v4, v0, mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v31

    .restart local v31    # "heightMeasureSpec":I
    goto/16 :goto_214

    .line 1510
    .end local v31    # "heightMeasureSpec":I
    .end local v52    # "widthMeasureSpec":I
    :cond_581
    move-object/from16 v0, v27

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v52

    .restart local v52    # "widthMeasureSpec":I
    goto :goto_56b

    .line 1518
    :cond_58c
    move-object/from16 v0, v27

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v31

    .restart local v31    # "heightMeasureSpec":I
    goto/16 :goto_214

    .line 1554
    .restart local v16    # "canDraw":Z
    .restart local v23    # "contentHeight":I
    .restart local v25    # "contentWidth":I
    .restart local v40    # "posX":I
    .restart local v41    # "posY":I
    :cond_598
    move-object/from16 v0, p0

    iget v4, v0, mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_28f

    .line 1555
    add-int v4, v41, v23

    iget v5, v13, Landroid/graphics/Rect;->top:I

    if-le v4, v5, :cond_5ab

    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v41

    if-lt v0, v4, :cond_28f

    .line 1556
    :cond_5ab
    const/16 v16, 0x1

    goto/16 :goto_28f

    .line 1574
    .restart local v17    # "containerLeftOnWindow":I
    .restart local v22    # "containerRightOnWindow":I
    .restart local v35    # "isPopupAboveHorizontal":Z
    .restart local v38    # "marginForHoverRing":I
    :cond_5af
    move-object/from16 v0, p0

    iget v4, v0, mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2d1

    .line 1575
    iget v4, v13, Landroid/graphics/Rect;->left:I

    move/from16 v0, v40

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, v26

    iget v5, v0, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1577
    add-int v4, v40, v25

    iget v5, v13, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v26

    iget v5, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v26

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 1580
    move-object/from16 v0, p0

    iget v4, v0, mFullTextPopupRightLimit:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2d1

    move-object/from16 v0, p0

    iget v4, v0, mFullTextPopupRightLimit:I

    move/from16 v0, v22

    if-le v0, v4, :cond_2d1

    .line 1581
    move-object/from16 v0, p0

    iget v0, v0, mFullTextPopupRightLimit:I

    move/from16 v22, v0

    goto/16 :goto_2d1

    .line 1590
    :cond_5f3
    const/16 v35, 0x1

    goto/16 :goto_2e1

    .line 1607
    :cond_5f7
    const-string v4, "HoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: Call setOverTopForCotainer(false)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    move-object/from16 v0, p0

    iget-object v4, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setOverTopForCotainer(Z)V

    goto/16 :goto_335

    .line 1618
    .restart local v24    # "contentLP":Landroid/view/ViewGroup$LayoutParams;
    :cond_608
    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1619
    move/from16 v0, v23

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_34f

    .line 1646
    .restart local v18    # "containerPaddingBottom":I
    .restart local v19    # "containerPaddingLeft":I
    .restart local v20    # "containerPaddingRight":I
    .restart local v21    # "containerPaddingTop":I
    :cond_616
    move/from16 v21, v38

    .line 1647
    move-object/from16 v0, p0

    iget-object v4, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPadding(IIII)V

    goto/16 :goto_3c8

    .line 1651
    :cond_628
    if-eqz v35, :cond_653

    .line 1652
    move-object/from16 v0, p0

    iget v4, v0, mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_643

    .line 1653
    move/from16 v18, v38

    .line 1658
    :cond_633
    :goto_633
    move-object/from16 v0, p0

    iget-object v4, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v4, v0, v5, v1, v2}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPadding(IIII)V

    goto/16 :goto_3c8

    .line 1654
    :cond_643
    move-object/from16 v0, p0

    iget v4, v0, mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_633

    .line 1655
    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    add-int v4, v4, v38

    add-int v5, v41, v23

    sub-int v18, v4, v5

    goto :goto_633

    .line 1661
    :cond_653
    move-object/from16 v0, p0

    iget v4, v0, mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_66c

    .line 1662
    move/from16 v21, v38

    .line 1666
    :cond_65c
    :goto_65c
    move-object/from16 v0, p0

    iget-object v4, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPadding(IIII)V

    goto/16 :goto_3c8

    .line 1663
    :cond_66c
    move-object/from16 v0, p0

    iget v4, v0, mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_65c

    .line 1664
    iget v4, v13, Landroid/graphics/Rect;->top:I

    sub-int v4, v4, v38

    sub-int v21, v41, v4

    goto :goto_65c

    .line 1681
    :cond_67a
    move-object/from16 v0, p0

    iget v4, v0, mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3d3

    .line 1682
    if-eqz v35, :cond_687

    .line 1683
    move/from16 v40, v17

    .line 1684
    goto/16 :goto_3d3

    .line 1686
    :cond_687
    move/from16 v40, v17

    .line 1687
    sub-int v41, v41, v21

    goto/16 :goto_3d3

    .line 1715
    .restart local v30    # "fPos":Landroid/graphics/PointF;
    .restart local v32    # "hoverPointXonContainer":I
    .restart local v33    # "hoverPointYonContainer":I
    .restart local v46    # "scaleFactor":Landroid/graphics/PointF;
    .restart local v50    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_68d
    move-object/from16 v0, p0

    iget v4, v0, mHoveringPointX:I

    int-to-float v4, v4

    move/from16 v0, v40

    int-to-float v5, v0

    move-object/from16 v0, v46

    iget v6, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, mWindowGapX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v46

    iget v5, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v5

    move-object/from16 v0, v30

    iput v4, v0, Landroid/graphics/PointF;->x:F

    .line 1716
    move-object/from16 v0, p0

    iget v4, v0, mHoveringPointY:I

    int-to-float v4, v4

    move/from16 v0, v41

    int-to-float v5, v0

    move-object/from16 v0, v46

    iget v6, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, mWindowGapY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v46

    iget v5, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v5

    move-object/from16 v0, v30

    iput v4, v0, Landroid/graphics/PointF;->y:F

    goto/16 :goto_458

    .line 1723
    :cond_6c9
    move-object/from16 v0, p0

    iget-boolean v4, v0, mIsGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_47c

    .line 1724
    move-object/from16 v0, p0

    iget-object v4, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v25, 0x2

    add-int v5, v5, v19

    move-object/from16 v0, p0

    iget v6, v0, mGuideLineFadeOffset:I

    sub-int v6, v23, v6

    move-object/from16 v0, v30

    iget v7, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    move-object/from16 v0, v30

    iget v8, v0, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_47c

    .line 1730
    :cond_6ef
    move-object/from16 v0, p0

    iget-boolean v4, v0, mIsFHGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_70f

    .line 1731
    move-object/from16 v0, p0

    iget-object v4, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v25, 0x2

    add-int v5, v5, v19

    move-object/from16 v0, p0

    iget v6, v0, mGuideLineFadeOffset:I

    sub-int v6, v23, v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    move/from16 v7, v32

    move/from16 v8, v33

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_47c

    .line 1735
    :cond_70f
    move-object/from16 v0, p0

    iget-boolean v4, v0, mIsGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_47c

    .line 1736
    move-object/from16 v0, p0

    iget-object v4, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v25, 0x2

    add-int v5, v5, v19

    move-object/from16 v0, p0

    iget v6, v0, mGuideLineFadeOffset:I

    sub-int v6, v23, v6

    const/4 v9, 0x1

    const/4 v10, 0x0

    move/from16 v7, v32

    move/from16 v8, v33

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_47c

    .line 1759
    .end local v30    # "fPos":Landroid/graphics/PointF;
    .end local v46    # "scaleFactor":Landroid/graphics/PointF;
    .end local v50    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_72f
    invoke-virtual {v14}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v50

    .line 1760
    .restart local v50    # "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v50, :cond_490

    .line 1761
    invoke-virtual/range {v50 .. v50}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v46

    .line 1762
    .restart local v46    # "scaleFactor":Landroid/graphics/PointF;
    new-instance v30, Landroid/graphics/PointF;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v30

    invoke-direct {v0, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1763
    .restart local v30    # "fPos":Landroid/graphics/PointF;
    move-object/from16 v0, v46

    iget v4, v0, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_756

    move-object/from16 v0, v46

    iget v4, v0, Landroid/graphics/PointF;->y:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_821

    .line 1764
    :cond_756
    invoke-virtual {v14}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_7c0

    .line 1765
    move-object/from16 v0, p0

    iget v4, v0, mHoveringPointX:I

    int-to-float v4, v4

    move/from16 v0, v40

    int-to-float v5, v0

    move-object/from16 v0, v46

    iget v6, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, v26

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v46

    iget v5, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v5

    move-object/from16 v0, v30

    iput v4, v0, Landroid/graphics/PointF;->x:F

    .line 1766
    move-object/from16 v0, p0

    iget v4, v0, mHoveringPointY:I

    int-to-float v4, v4

    move/from16 v0, v41

    int-to-float v5, v0

    move-object/from16 v0, v46

    iget v6, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, v26

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v46

    iget v5, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v5

    move-object/from16 v0, v30

    iput v4, v0, Landroid/graphics/PointF;->y:F

    .line 1772
    :goto_79a
    move-object/from16 v0, p0

    iget-boolean v4, v0, mIsFHGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7fb

    .line 1773
    move-object/from16 v0, p0

    iget-object v4, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v25, 0x2

    add-int v5, v5, v19

    move-object/from16 v0, p0

    iget v6, v0, mGuideLineFadeOffset:I

    add-int v6, v6, v21

    move-object/from16 v0, v30

    iget v7, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    move-object/from16 v0, v30

    iget v8, v0, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_490

    .line 1768
    :cond_7c0
    move-object/from16 v0, p0

    iget v4, v0, mHoveringPointX:I

    int-to-float v4, v4

    move/from16 v0, v40

    int-to-float v5, v0

    move-object/from16 v0, v46

    iget v6, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, mWindowGapX:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v46

    iget v5, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v5

    move-object/from16 v0, v30

    iput v4, v0, Landroid/graphics/PointF;->x:F

    .line 1769
    move-object/from16 v0, p0

    iget v4, v0, mHoveringPointY:I

    int-to-float v4, v4

    move/from16 v0, v41

    int-to-float v5, v0

    move-object/from16 v0, v46

    iget v6, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, mWindowGapY:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    move-object/from16 v0, v46

    iget v5, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v4, v5

    move-object/from16 v0, v30

    iput v4, v0, Landroid/graphics/PointF;->y:F

    goto :goto_79a

    .line 1775
    :cond_7fb
    move-object/from16 v0, p0

    iget-boolean v4, v0, mIsGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_490

    .line 1776
    move-object/from16 v0, p0

    iget-object v4, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v25, 0x2

    add-int v5, v5, v19

    move-object/from16 v0, p0

    iget v6, v0, mGuideLineFadeOffset:I

    add-int v6, v6, v21

    move-object/from16 v0, v30

    iget v7, v0, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    move-object/from16 v0, v30

    iget v8, v0, Landroid/graphics/PointF;->y:F

    float-to-int v8, v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_490

    .line 1780
    :cond_821
    move-object/from16 v0, p0

    iget-boolean v4, v0, mIsFHGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_841

    .line 1781
    move-object/from16 v0, p0

    iget-object v4, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v25, 0x2

    add-int v5, v5, v19

    move-object/from16 v0, p0

    iget v6, v0, mGuideLineFadeOffset:I

    add-int v6, v6, v21

    const/4 v9, 0x0

    const/4 v10, 0x1

    move/from16 v7, v32

    move/from16 v8, v33

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_490

    .line 1784
    :cond_841
    move-object/from16 v0, p0

    iget-boolean v4, v0, mIsGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_490

    .line 1785
    move-object/from16 v0, p0

    iget-object v4, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v25, 0x2

    add-int v5, v5, v19

    move-object/from16 v0, p0

    iget v6, v0, mGuideLineFadeOffset:I

    add-int v6, v6, v21

    const/4 v9, 0x1

    const/4 v10, 0x0

    move/from16 v7, v32

    move/from16 v8, v33

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_490

    .line 1795
    .end local v17    # "containerLeftOnWindow":I
    .end local v18    # "containerPaddingBottom":I
    .end local v19    # "containerPaddingLeft":I
    .end local v20    # "containerPaddingRight":I
    .end local v21    # "containerPaddingTop":I
    .end local v22    # "containerRightOnWindow":I
    .end local v24    # "contentLP":Landroid/view/ViewGroup$LayoutParams;
    .end local v30    # "fPos":Landroid/graphics/PointF;
    .end local v32    # "hoverPointXonContainer":I
    .end local v33    # "hoverPointYonContainer":I
    .end local v35    # "isPopupAboveHorizontal":Z
    .end local v38    # "marginForHoverRing":I
    .end local v46    # "scaleFactor":Landroid/graphics/PointF;
    .end local v50    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_861
    move-object/from16 v0, p0

    iget-boolean v4, v0, mIsPopupTouchable:Z

    if-eqz v4, :cond_8da

    move-object/from16 v0, p0

    iget-boolean v4, v0, mIsGuideLineEnabled:Z

    if-nez v4, :cond_8da

    .line 1796
    move-object/from16 v0, p0

    iget-object v4, v0, mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    if-nez v4, :cond_882

    .line 1797
    new-instance v4, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;-><init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    .line 1799
    :cond_882
    move-object/from16 v0, p0

    iget-object v4, v0, mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->getChildCount()I

    move-result v4

    if-nez v4, :cond_8b4

    .line 1800
    move-object/from16 v0, p0

    iget-object v4, v0, mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->addView(Landroid/view/View;)V

    .line 1808
    :cond_897
    :goto_897
    move-object/from16 v0, p0

    iget-object v4, v0, mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    if-eqz v4, :cond_490

    move-object/from16 v0, p0

    iget v4, v0, mToolType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_490

    .line 1809
    const-string v4, "HoverPopupWindow"

    const-string v5, "computePopupPosition: Call resetTimeout()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    move-object/from16 v0, p0

    iget-object v4, v0, mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->resetTimeout()V

    goto/16 :goto_490

    .line 1801
    :cond_8b4
    move-object/from16 v0, p0

    iget-object v4, v0, mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_897

    .line 1802
    move-object/from16 v0, p0

    iget-object v4, v0, mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->removeAllViews()V

    .line 1803
    move-object/from16 v0, p0

    iget-object v4, v0, mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->addView(Landroid/view/View;)V

    goto :goto_897

    .line 1813
    :cond_8da
    move-object/from16 v0, p0

    iget-object v4, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v4, :cond_490

    .line 1815
    move-object/from16 v0, p0

    iget-object v4, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->removeAllViews()V

    .line 1816
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    goto/16 :goto_490
.end method

.method protected convertDPtoPX(FLandroid/util/DisplayMetrics;)I
    .registers 5
    .param p1, "dp"    # F
    .param p2, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 2970
    if-nez p2, :cond_c

    .line 2971
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 2973
    :cond_c
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected createPopupWindow()Landroid/widget/PopupWindow;
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x2

    .line 1217
    iget-object v4, p0, mPopup:Landroid/widget/PopupWindow;

    if-nez v4, :cond_75

    .line 1218
    new-instance v4, Landroid/widget/PopupWindow;

    iget-object v5, p0, mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, mPopup:Landroid/widget/PopupWindow;

    .line 1219
    iget-object v4, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1220
    iget-object v4, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1221
    iget-object v4, p0, mPopup:Landroid/widget/PopupWindow;

    iget-boolean v5, p0, mIsPopupTouchable:Z

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 1222
    iget-object v4, p0, mPopup:Landroid/widget/PopupWindow;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 1223
    iget-object v4, p0, mPopup:Landroid/widget/PopupWindow;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1224
    iget-object v4, p0, mPopup:Landroid/widget/PopupWindow;

    const/16 v5, 0x3ed

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 1227
    iget-object v4, p0, mAnchorView:Landroid/view/View;

    if-eqz v4, :cond_78

    iget-object v0, p0, mAnchorView:Landroid/view/View;

    .line 1229
    .local v0, "anchorView":Landroid/view/View;
    :goto_3d
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 1230
    .local v1, "root":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1231
    .local v2, "vlp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v2, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_57

    move-object v3, v2

    .line 1232
    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    .line 1233
    .local v3, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3ef

    if-ne v4, v5, :cond_57

    .line 1234
    iget-object v4, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setIgnoreMultiWindowLayout(Z)V

    .line 1237
    .end local v3    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_57
    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eq v4, v5, :cond_6e

    .line 1238
    iget-object v4, p0, mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isScaleWindow()Z

    move-result v4

    if-nez v4, :cond_6e

    .line 1239
    iget-object v4, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v7}, Landroid/widget/PopupWindow;->setLayoutInScreenEnabled(Z)V

    .line 1245
    :cond_6e
    iget-object v4, p0, mPopup:Landroid/widget/PopupWindow;

    iget v5, p0, mAnimationStyle:I

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 1247
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "root":Landroid/view/View;
    .end local v2    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    :cond_75
    iget-object v4, p0, mPopup:Landroid/widget/PopupWindow;

    return-object v4

    .line 1227
    :cond_78
    iget-object v0, p0, mParentView:Landroid/view/View;

    goto :goto_3d
.end method

.method public dismiss()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2892
    iget-boolean v0, p0, mIsSkipPenPointEffect:Z

    if-nez v0, :cond_9

    .line 2893
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, showPenPointEffect(Z)V

    .line 2896
    :cond_9
    invoke-direct {p0}, dismissPopup()V

    .line 2898
    iput-object v1, p0, mLeftPoint:Landroid/graphics/PointF;

    .line 2899
    iput-object v1, p0, mRightPoint:Landroid/graphics/PointF;

    .line 2900
    iput-object v1, p0, mCenterPoint:Landroid/graphics/PointF;

    .line 2901
    iput-object v1, p0, mPenWindowStartPos:Landroid/graphics/Point;

    .line 2902
    return-void
.end method

.method public getContent()Landroid/view/View;
    .registers 2

    .prologue
    .line 905
    iget-object v0, p0, mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 821
    iget-boolean v0, p0, mEnabled:Z

    return v0
.end method

.method public getFHAnimationEnabled()Z
    .registers 2

    .prologue
    .line 2641
    iget-boolean v0, p0, mIsFHAnimationEnabled:Z

    return v0
.end method

.method public getFHGuideLineEnabled()Z
    .registers 2

    .prologue
    .line 2632
    iget-boolean v0, p0, mIsFHGuideLineEnabled:Z

    return v0
.end method

.method public getInfoPickerMoveEabled()Z
    .registers 2

    .prologue
    .line 2650
    iget-boolean v0, p0, mIsInfoPickerMoveEabled:Z

    return v0
.end method

.method public getIsDismissTouchableHPWOnActionUp()Z
    .registers 2

    .prologue
    .line 795
    iget-boolean v0, p0, mDismissTouchableHPWOnActionUp:Z

    return v0
.end method

.method public getParentView()Landroid/view/View;
    .registers 2

    .prologue
    .line 830
    iget-object v0, p0, mParentView:Landroid/view/View;

    return-object v0
.end method

.method protected getPriorityContentText()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1029
    iget-object v0, p0, mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1030
    iget-object v0, p0, mContentText:Ljava/lang/CharSequence;

    .line 1034
    :goto_a
    return-object v0

    .line 1031
    :cond_b
    iget-object v0, p0, mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 1032
    iget-object v0, p0, mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_a

    .line 1034
    :cond_1e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected getUspLevel()I
    .registers 2

    .prologue
    .line 611
    iget v0, p0, mUspLevel:I

    return v0
.end method

.method protected initInstance()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 432
    iput-object v2, p0, mPopup:Landroid/widget/PopupWindow;

    .line 433
    iput-boolean v4, p0, mEnabled:Z

    .line 434
    const/16 v1, 0x12c

    iput v1, p0, mHoverDetectTimeMS:I

    .line 436
    const/16 v1, 0x3231

    iput v1, p0, mPopupGravity:I

    .line 437
    iput v3, p0, mPopupPosX:I

    .line 438
    iput v3, p0, mPopupPosY:I

    .line 439
    iput v3, p0, mHoveringPointX:I

    .line 440
    iput v3, p0, mHoveringPointY:I

    .line 441
    iput v3, p0, mPopupOffsetX:I

    .line 442
    iput v3, p0, mPopupOffsetY:I

    .line 443
    iput v3, p0, mWindowGapX:I

    .line 444
    iput v3, p0, mWindowGapY:I

    .line 445
    iput v3, p0, mHoverPaddingLeft:I

    .line 446
    iput v3, p0, mHoverPaddingRight:I

    .line 447
    iput v3, p0, mHoverPaddingTop:I

    .line 448
    iput v3, p0, mHoverPaddingBottom:I

    .line 450
    iput-object v2, p0, mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    .line 451
    iput-object v2, p0, mContentText:Ljava/lang/CharSequence;

    .line 452
    const v1, 0x10304f8

    iput v1, p0, mAnimationStyle:I

    .line 454
    iput-boolean v3, p0, mIsGuideLineEnabled:Z

    .line 456
    iput-boolean v3, p0, mIsFHGuideLineEnabled:Z

    .line 458
    iput-boolean v3, p0, misDialer:Z

    .line 459
    iput-boolean v3, p0, mIsProgressBar:Z

    .line 461
    iput-boolean v4, p0, mIsFHAnimationEnabled:Z

    .line 462
    iput-boolean v4, p0, mIsInfoPickerMoveEabled:Z

    .line 463
    iput-boolean v3, p0, mIsFHGuideLineEnabledByApp:Z

    .line 464
    iput-boolean v3, p0, mIsFHAnimationEnabledByApp:Z

    .line 465
    iput-boolean v3, p0, mIsInfoPickerMoveEabledByApp:Z

    .line 466
    iput-boolean v3, p0, mIsSetInfoPickerColorToAndMoreBottomImg:Z

    .line 467
    iput-boolean v4, p0, mIsFHSoundAndHapticEnabled:Z

    .line 468
    iput v3, p0, mCoordinatesOfAnchorView:I

    .line 469
    iput-boolean v3, p0, mOverTopBoundary:Z

    .line 470
    iput-boolean v3, p0, misGravityBottomUnder:Z

    .line 472
    iput v3, p0, mGuideLineFadeOffset:I

    .line 473
    iput-object v2, p0, mContentView:Landroid/view/View;

    .line 474
    iput-object v2, p0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    .line 475
    iput-object v2, p0, mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    .line 476
    iput-object v2, p0, mAnchorView:Landroid/view/View;

    .line 477
    iput-boolean v3, p0, mIsSPenPointChanged:Z

    .line 478
    iput-boolean v3, p0, mIsPopupTouchable:Z

    .line 479
    iput-boolean v3, p0, mIsTryingShowPopup:Z

    .line 480
    iput-boolean v3, p0, mShowPopupAlways:Z

    .line 481
    iput-boolean v3, p0, mIsSkipPenPointEffect:Z

    .line 483
    iget-object v1, p0, mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 484
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v1, 0x161

    const v2, 0x1080375

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, mGuideRingDrawableId:I

    .line 485
    const/16 v1, 0x160

    const v2, -0x866e57

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, mGuideLineColor:I

    .line 486
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 487
    const/4 v1, -0x1

    iput v1, p0, mFullTextPopupRightLimit:I

    .line 488
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, mPenWindowStartPos:Landroid/graphics/Point;

    .line 489
    iget-object v1, p0, mPenWindowStartPos:Landroid/graphics/Point;

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 490
    iget-object v1, p0, mPenWindowStartPos:Landroid/graphics/Point;

    iput v3, v1, Landroid/graphics/Point;->y:I

    .line 491
    const/4 v1, 0x0

    iput v1, p0, mFontScale:F

    .line 492
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.sec.feature.spen_usp"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, mUspLevel:I

    .line 493
    invoke-direct {p0}, initCoverManager()V

    .line 494
    return-void
.end method

.method public isDialer()Z
    .registers 2

    .prologue
    .line 579
    iget-boolean v0, p0, misDialer:Z

    return v0
.end method

.method protected isFingerHoveringSettingsEnabled(I)Z
    .registers 8
    .param p1, "type"    # I

    .prologue
    const/4 v5, -0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 696
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_39

    move v0, v2

    .line 698
    .local v0, "isFingerHoveringOn":Z
    :goto_12
    if-eqz v0, :cond_38

    .line 699
    if-eq p1, v2, :cond_38

    .line 701
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_information_preview"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_53

    .line 703
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_pregress_bar_preview"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_3b

    invoke-virtual {p0}, isProgressBar()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 729
    :cond_38
    :goto_38
    return v1

    .end local v0    # "isFingerHoveringOn":Z
    :cond_39
    move v0, v1

    .line 696
    goto :goto_12

    .line 708
    .restart local v0    # "isFingerHoveringOn":Z
    :cond_3b
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_speed_dial_tip"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_4b

    move v1, v2

    .line 710
    goto :goto_38

    .line 712
    :cond_4b
    invoke-virtual {p0}, isDialer()Z

    move-result v3

    if-nez v3, :cond_38

    move v1, v2

    .line 713
    goto :goto_38

    .line 718
    :cond_53
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_speed_dial_tip"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_69

    invoke-virtual {p0}, isDialer()Z

    move-result v3

    if-eqz v3, :cond_69

    move v1, v2

    .line 720
    goto :goto_38

    .line 722
    :cond_69
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_pregress_bar_preview"

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_38

    invoke-virtual {p0}, isProgressBar()Z

    move-result v3

    if-eqz v3, :cond_38

    move v1, v2

    .line 724
    goto :goto_38
.end method

.method public isHoverPopupPossible()Z
    .registers 4

    .prologue
    .line 559
    const/4 v0, 0x1

    .line 561
    .local v0, "ret":Z
    iget v1, p0, mPopupType:I

    if-nez v1, :cond_7

    .line 562
    const/4 v0, 0x0

    .line 572
    :cond_6
    :goto_6
    return v0

    .line 563
    :cond_7
    iget v1, p0, mPopupType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    .line 564
    iget-object v1, p0, mParentView:Landroid/view/View;

    if-eqz v1, :cond_1a

    invoke-direct {p0}, getTooltipText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 565
    :cond_1a
    const/4 v0, 0x0

    goto :goto_6

    .line 567
    :cond_1c
    iget v1, p0, mPopupType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_23

    .line 568
    const/4 v0, 0x0

    goto :goto_6

    .line 569
    :cond_23
    iget v1, p0, mPopupType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 570
    const/4 v0, 0x1

    goto :goto_6
.end method

.method protected isHoveringSettingEnabled(I)Z
    .registers 5
    .param p1, "type"    # I

    .prologue
    .line 620
    const/4 v0, 0x0

    .line 626
    .local v0, "ret":Z
    iget v1, p0, mToolType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 627
    invoke-virtual {p0, p1}, isSPenHoveringSettingsEnabled(I)Z

    move-result v0

    .line 633
    :cond_a
    :goto_a
    return v0

    .line 629
    :cond_b
    iget v1, p0, mToolType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 630
    invoke-virtual {p0, p1}, isFingerHoveringSettingsEnabled(I)Z

    move-result v0

    goto :goto_a
.end method

.method public isLockScreenMode()Z
    .registers 5

    .prologue
    .line 754
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mContext:Landroid/content/Context;

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 755
    .local v1, "keyguardManager":Landroid/app/KeyguardManager;
    const/4 v0, 0x0

    .line 756
    .local v0, "isLockState":Z
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    .line 757
    return v0
.end method

.method protected isMouseHoveringSettingsEnabled(I)Z
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 736
    const/4 v0, 0x0

    return v0
.end method

.method public isProgressBar()Z
    .registers 2

    .prologue
    .line 595
    iget-boolean v0, p0, mIsProgressBar:Z

    return v0
.end method

.method protected isSPenHoveringSettingsEnabled(I)Z
    .registers 8
    .param p1, "type"    # I

    .prologue
    const/4 v5, -0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 651
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_27

    move v0, v1

    .line 652
    .local v0, "isSPenHoveringOn":Z
    :goto_13
    if-eqz v0, :cond_a4

    .line 653
    if-ne p1, v1, :cond_29

    .line 654
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering_icon_label"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_a4

    .line 689
    :cond_26
    :goto_26
    return v1

    .end local v0    # "isSPenHoveringOn":Z
    :cond_27
    move v0, v2

    .line 651
    goto :goto_13

    .line 656
    .restart local v0    # "isSPenHoveringOn":Z
    :cond_29
    const/4 v3, 0x3

    if-eq p1, v3, :cond_2f

    const/4 v3, 0x2

    if-ne p1, v3, :cond_a4

    .line 657
    :cond_2f
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering_information_preview"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_72

    .line 660
    invoke-virtual {p0}, isUseOldAirviewSettingsMenu()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 663
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering_speed_dial_preview"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_5b

    invoke-virtual {p0}, isDialer()Z

    move-result v3

    if-eqz v3, :cond_5b

    move v1, v2

    .line 665
    goto :goto_26

    .line 667
    :cond_5b
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering_progress_preview"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_26

    invoke-virtual {p0}, isProgressBar()Z

    move-result v3

    if-eqz v3, :cond_26

    move v1, v2

    .line 669
    goto :goto_26

    .line 675
    :cond_72
    invoke-virtual {p0}, isUseOldAirviewSettingsMenu()Z

    move-result v3

    if-nez v3, :cond_7a

    move v1, v2

    .line 676
    goto :goto_26

    .line 678
    :cond_7a
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering_speed_dial_preview"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_8f

    invoke-virtual {p0}, isDialer()Z

    move-result v3

    if-nez v3, :cond_26

    .line 682
    :cond_8f
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pen_hovering_progress_preview"

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_a4

    invoke-virtual {p0}, isProgressBar()Z

    move-result v3

    if-nez v3, :cond_26

    :cond_a4
    move v1, v2

    .line 689
    goto :goto_26
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 914
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_b

    .line 915
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 917
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isUseOldAirviewSettingsMenu()Z
    .registers 4

    .prologue
    .line 640
    const/4 v0, 0x0

    .line 641
    .local v0, "ret":Z
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v1, :cond_23

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "hlte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "h3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "ha3g"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    :cond_23
    const-string/jumbo v1, "true"

    sget-object v2, AIRCOMMAND_MORPH_USP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 642
    :cond_2e
    const/4 v0, 0x1

    .line 644
    :cond_2f
    return v0
.end method

.method protected makeDefaultContentView()V
    .registers 1

    .prologue
    .line 1308
    invoke-direct {p0}, makeToolTipContentView()V

    .line 1309
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 30
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 2660
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 2661
    .local v4, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    .line 2662
    .local v21, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    .line 2667
    .local v22, "y":F
    const/16 v23, 0x9

    move/from16 v0, v23

    if-ne v4, v0, :cond_4d

    .line 2669
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v26

    sub-long v18, v24, v26

    .line 2670
    .local v18, "timeDealy":J
    const-wide/16 v24, 0x3e8

    cmp-long v23, v18, v24

    if-lez v23, :cond_25

    .line 2672
    const/16 v23, 0x1

    .line 2870
    .end local v18    # "timeDealy":J
    :goto_24
    return v23

    .line 2676
    .restart local v18    # "timeDealy":J
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsHoverPaddingEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_41

    .line 2677
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, pointInValidHoverArea(FF)Z

    move-result v12

    .line 2679
    .local v12, "isPointInValidHoverArea":Z
    if-eqz v12, :cond_44

    .line 2680
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsTryingShowPopup:Z

    .line 2870
    .end local v12    # "isPointInValidHoverArea":Z
    .end local v18    # "timeDealy":J
    :cond_41
    :goto_41
    const/16 v23, 0x0

    goto :goto_24

    .line 2682
    .restart local v12    # "isPointInValidHoverArea":Z
    .restart local v18    # "timeDealy":J
    :cond_44
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsTryingShowPopup:Z

    goto :goto_41

    .line 2685
    .end local v12    # "isPointInValidHoverArea":Z
    .end local v18    # "timeDealy":J
    :cond_4d
    const/16 v23, 0x7

    move/from16 v0, v23

    if-ne v4, v0, :cond_2e9

    .line 2686
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v23

    move/from16 v0, v23

    float-to-int v15, v0

    .line 2687
    .local v15, "rawX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v16, v0

    .line 2690
    .local v16, "rawY":I
    move-object/from16 v0, p0

    iget v0, v0, mUspLevel:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_81

    .line 2691
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v23

    move/from16 v0, v23

    float-to-int v15, v0

    .line 2692
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v23

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v16, v0

    .line 2697
    :cond_81
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, setHoveringPoint(II)V

    .line 2699
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsHoverPaddingEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_f0

    .line 2700
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, pointInValidHoverArea(FF)Z

    move-result v12

    .line 2702
    .restart local v12    # "isPointInValidHoverArea":Z
    if-eqz v12, :cond_cf

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsTryingShowPopup:Z

    move/from16 v23, v0

    if-nez v23, :cond_cf

    .line 2706
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v24

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v26

    sub-long v18, v24, v26

    .line 2707
    .restart local v18    # "timeDealy":J
    const-wide/16 v24, 0x3e8

    cmp-long v23, v18, v24

    if-lez v23, :cond_c0

    .line 2709
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsTryingShowPopup:Z

    .line 2710
    const/16 v23, 0x1

    goto/16 :goto_24

    .line 2715
    :cond_c0
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsTryingShowPopup:Z

    .line 2716
    invoke-virtual/range {p0 .. p0}, show()V

    .line 2717
    const/16 v23, 0x1

    goto/16 :goto_24

    .line 2718
    .end local v18    # "timeDealy":J
    :cond_cf
    if-nez v12, :cond_f0

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsTryingShowPopup:Z

    move/from16 v23, v0

    if-eqz v23, :cond_f0

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsPopupTouchable:Z

    move/from16 v23, v0

    if-nez v23, :cond_f0

    .line 2722
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsTryingShowPopup:Z

    .line 2723
    invoke-virtual/range {p0 .. p0}, dismiss()V

    .line 2724
    const/16 v23, 0x1

    goto/16 :goto_24

    .line 2729
    .end local v12    # "isPointInValidHoverArea":Z
    :cond_f0
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsGuideLineEnabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_100

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsFHGuideLineEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_283

    :cond_100
    invoke-virtual/range {p0 .. p0}, isShowing()Z

    move-result v23

    if-eqz v23, :cond_283

    .line 2730
    move-object/from16 v0, p0

    iget-object v0, v0, mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v14

    .line 2732
    .local v14, "popupView":Landroid/view/View;
    instance-of v0, v14, Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move/from16 v23, v0

    if-eqz v23, :cond_283

    move-object v7, v14

    .line 2733
    check-cast v7, Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    .line 2738
    .local v7, "containerView":Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    move-object/from16 v0, p0

    iget-object v0, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v23, v0

    if-eqz v23, :cond_14a

    move-object/from16 v0, p0

    iget-object v0, v0, mContentView:Landroid/view/View;

    move-object/from16 v23, v0

    if-eqz v23, :cond_14a

    .line 2740
    move-object/from16 v0, p0

    iget-object v0, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getPaddingLeft()I

    move-result v10

    .line 2741
    .local v10, "infopickerLeftLimit":I
    move-object/from16 v0, p0

    iget-object v0, v0, mContentView:Landroid/view/View;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWidth()I

    move-result v23

    add-int v11, v23, v10

    .line 2757
    .local v11, "infopickerRightLimit":I
    move-object/from16 v0, p0

    iget-object v0, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v10, v11}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPickerLimit(II)V

    .line 2775
    .end local v10    # "infopickerLeftLimit":I
    .end local v11    # "infopickerRightLimit":I
    :cond_14a
    move-object/from16 v0, p0

    iget-object v0, v0, mAnchorView:Landroid/view/View;

    move-object/from16 v23, v0

    if-eqz v23, :cond_298

    move-object/from16 v0, p0

    iget-object v5, v0, mAnchorView:Landroid/view/View;

    .line 2776
    .local v5, "anchorView":Landroid/view/View;
    :goto_156
    invoke-virtual {v5}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v20

    .line 2777
    .local v20, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v20, :cond_274

    .line 2778
    invoke-virtual/range {v20 .. v20}, Landroid/view/ViewRootImpl;->getMultiWindowScale()Landroid/graphics/PointF;

    move-result-object v17

    .line 2779
    .local v17, "scaleFactor":Landroid/graphics/PointF;
    new-instance v9, Landroid/graphics/PointF;

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v9, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 2780
    .local v9, "fPos":Landroid/graphics/PointF;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    cmpl-float v23, v23, v24

    if-nez v23, :cond_185

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    const/high16 v24, 0x3f800000    # 1.0f

    cmpl-float v23, v23, v24

    if-eqz v23, :cond_29e

    .line 2781
    :cond_185
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 2783
    .local v8, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {v5, v8}, Landroid/view/View;->getWindowVisibleContentFrame(Landroid/graphics/Rect;)V

    .line 2784
    move-object/from16 v0, p0

    iget-object v0, v0, mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v23, v0

    if-nez v23, :cond_1b8

    .line 2785
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getBaseActivityToken()Landroid/os/IBinder;

    move-result-object v6

    .line 2786
    .local v6, "atoken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string/jumbo v24, "multiwindow_facade"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 2787
    .local v13, "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-virtual {v13, v6}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackPosition(Landroid/os/IBinder;)Landroid/graphics/Point;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, mPenWindowStartPos:Landroid/graphics/Point;

    .line 2789
    .end local v6    # "atoken":Landroid/os/IBinder;
    .end local v13    # "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    :cond_1b8
    move-object/from16 v0, p0

    iget-object v0, v0, mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1fb

    move-object/from16 v0, p0

    iget-object v0, v0, mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    if-nez v23, :cond_1dc

    move-object/from16 v0, p0

    iget-object v0, v0, mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    if-eqz v23, :cond_1fb

    .line 2791
    :cond_1dc
    move-object/from16 v0, p0

    iget-object v0, v0, mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mPenWindowStartPos:Landroid/graphics/Point;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2793
    :cond_1fb
    int-to-float v0, v15

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, mPopupPosX:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v23, v23, v24

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    div-float v23, v23, v24

    move/from16 v0, v23

    iput v0, v9, Landroid/graphics/PointF;->x:F

    .line 2794
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, mPopupPosY:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v23, v23, v24

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v24, v0

    div-float v23, v23, v24

    move/from16 v0, v23

    iput v0, v9, Landroid/graphics/PointF;->y:F

    .line 2796
    iget v0, v9, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    iget v0, v9, Landroid/graphics/PointF;->y:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLineEndPoint(II)V

    .line 2804
    .end local v8    # "displayFrame":Landroid/graphics/Rect;
    .end local v9    # "fPos":Landroid/graphics/PointF;
    .end local v17    # "scaleFactor":Landroid/graphics/PointF;
    :cond_274
    :goto_274
    move-object/from16 v0, p0

    iget-object v0, v0, mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v23

    if-nez v23, :cond_2c6

    .line 2810
    invoke-virtual {v7}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->updateDecoration()V

    .line 2833
    .end local v5    # "anchorView":Landroid/view/View;
    .end local v7    # "containerView":Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    .end local v14    # "popupView":Landroid/view/View;
    .end local v20    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_283
    :goto_283
    move-object/from16 v0, p0

    iget v0, v0, mToolType:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_294

    .line 2834
    invoke-direct/range {p0 .. p0}, resetTimeout()V

    .line 2839
    :cond_294
    const/16 v23, 0x1

    goto/16 :goto_24

    .line 2775
    .restart local v7    # "containerView":Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    .restart local v14    # "popupView":Landroid/view/View;
    :cond_298
    move-object/from16 v0, p0

    iget-object v5, v0, mParentView:Landroid/view/View;

    goto/16 :goto_156

    .line 2799
    .restart local v5    # "anchorView":Landroid/view/View;
    .restart local v9    # "fPos":Landroid/graphics/PointF;
    .restart local v17    # "scaleFactor":Landroid/graphics/PointF;
    .restart local v20    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_29e
    move-object/from16 v0, p0

    iget v0, v0, mPopupPosX:I

    move/from16 v23, v0

    sub-int v23, v15, v23

    move-object/from16 v0, p0

    iget v0, v0, mWindowGapX:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, mPopupPosY:I

    move/from16 v24, v0

    sub-int v24, v16, v24

    move-object/from16 v0, p0

    iget v0, v0, mWindowGapY:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v7, v0, v1}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLineEndPoint(II)V

    goto :goto_274

    .line 2818
    .end local v9    # "fPos":Landroid/graphics/PointF;
    .end local v17    # "scaleFactor":Landroid/graphics/PointF;
    :cond_2c6
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsFHAnimationEnabled:Z

    move/from16 v23, v0

    if-nez v23, :cond_2d6

    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsFHGuideLineEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_283

    .line 2822
    :cond_2d6
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsFHGuideLineEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2e5

    .line 2823
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setFHGuideLineForCotainer(Z)V

    .line 2825
    :cond_2e5
    invoke-virtual {v7}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->updateDecoration()V

    goto :goto_283

    .line 2840
    .end local v5    # "anchorView":Landroid/view/View;
    .end local v7    # "containerView":Landroid/widget/HoverPopupWindow$HoverPopupContainer;
    .end local v14    # "popupView":Landroid/view/View;
    .end local v15    # "rawX":I
    .end local v16    # "rawY":I
    .end local v20    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_2e9
    const/16 v23, 0xa

    move/from16 v0, v23

    if-ne v4, v0, :cond_41

    .line 2845
    move-object/from16 v0, p0

    iget-object v0, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v23, v0

    if-eqz v23, :cond_302

    .line 2849
    move-object/from16 v0, p0

    iget-object v0, v0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPopupState(I)V

    .line 2852
    :cond_302
    move-object/from16 v0, p0

    iget-boolean v0, v0, mIsPopupTouchable:Z

    move/from16 v23, v0

    if-eqz v23, :cond_41

    .line 2857
    move-object/from16 v0, p0

    iget-object v0, v0, mDismissHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    if-eqz v23, :cond_32b

    move-object/from16 v0, p0

    iget-object v0, v0, mDismissHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v23

    if-eqz v23, :cond_32b

    .line 2858
    move-object/from16 v0, p0

    iget-object v0, v0, mDismissHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    .line 2861
    :cond_32b
    invoke-virtual/range {p0 .. p0}, isShowing()Z

    move-result v23

    if-eqz v23, :cond_41

    .line 2862
    const/16 v23, 0x1

    goto/16 :goto_24
.end method

.method protected postDismiss(I)V
    .registers 6
    .param p1, "ms"    # I

    .prologue
    .line 2878
    iget-object v0, p0, mParentView:Landroid/view/View;

    new-instance v1, Landroid/widget/HoverPopupWindow$6;

    invoke-direct {v1, p0}, Landroid/widget/HoverPopupWindow$6;-><init>(Landroid/widget/HoverPopupWindow;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2885
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 2
    .param p1, "anchor"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 969
    iput-object p1, p0, mAnchorView:Landroid/view/View;

    .line 970
    return-void
.end method

.method public setAnimationStyle(I)V
    .registers 4
    .param p1, "aniStyle"    # I

    .prologue
    .line 2463
    iput p1, p0, mAnimationStyle:I

    .line 2464
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_d

    .line 2465
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, mAnimationStyle:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 2467
    :cond_d
    return-void
.end method

.method public setContent(I)V
    .registers 3
    .param p1, "resId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 862
    iput p1, p0, mContentResId:I

    .line 863
    const/4 v0, 0x1

    iput-boolean v0, p0, mNeedToMeasureContentView:Z

    .line 864
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 872
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :goto_6
    invoke-virtual {p0, p1, v0}, setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 873
    return-void

    .line 872
    :cond_a
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 883
    iput-object p1, p0, mContentView:Landroid/view/View;

    .line 884
    iput-object p2, p0, mContentLP:Landroid/view/ViewGroup$LayoutParams;

    .line 885
    const/4 v0, 0x1

    iput-boolean v0, p0, mNeedToMeasureContentView:Z

    .line 886
    return-void
.end method

.method public setContent(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 895
    iput-object p1, p0, mContentText:Ljava/lang/CharSequence;

    .line 896
    const/4 v0, 0x1

    iput-boolean v0, p0, mNeedToMeasureContentView:Z

    .line 897
    return-void
.end method

.method public setDismissTouchableHPWOnActionUp(Z)V
    .registers 2
    .param p1, "bDismissTouchableHPWOnActionUp"    # Z

    .prologue
    .line 784
    iput-boolean p1, p0, mDismissTouchableHPWOnActionUp:Z

    .line 785
    return-void
.end method

.method public setEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 810
    iput-boolean p1, p0, mEnabled:Z

    .line 811
    return-void
.end method

.method public setFHAnimationEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    .line 2540
    iput-boolean v0, p0, mIsFHAnimationEnabledByApp:Z

    .line 2541
    invoke-virtual {p0, p1, v0}, setFHAnimationEnabledByApp(ZZ)V

    .line 2542
    return-void
.end method

.method public setFHAnimationEnabledByApp(ZZ)V
    .registers 5
    .param p1, "enabled"    # Z
    .param p2, "calledByApp"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2548
    if-ne p2, v1, :cond_6

    .line 2549
    iput-boolean p1, p0, mIsFHAnimationEnabled:Z

    .line 2558
    :cond_5
    :goto_5
    return-void

    .line 2552
    :cond_6
    iget-boolean v0, p0, mIsFHAnimationEnabledByApp:Z

    if-eq v0, v1, :cond_5

    .line 2555
    iput-boolean p1, p0, mIsFHAnimationEnabled:Z

    goto :goto_5
.end method

.method public setFHGuideLineEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    .line 2497
    iput-boolean v0, p0, mIsFHGuideLineEnabledByApp:Z

    .line 2498
    invoke-virtual {p0, p1, v0}, setFHGuideLineEnabledByApp(ZZ)V

    .line 2499
    return-void
.end method

.method public setFHGuideLineEnabledByApp(ZZ)V
    .registers 6
    .param p1, "enabled"    # Z
    .param p2, "calledByApp"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2505
    if-ne p2, v1, :cond_14

    .line 2506
    iput-boolean p1, p0, mIsFHGuideLineEnabled:Z

    .line 2508
    iget-boolean v0, p0, mIsFHGuideLineEnabled:Z

    if-ne v0, v1, :cond_d

    .line 2509
    iput-boolean v1, p0, mIsGuideLineEnabled:Z

    .line 2532
    :cond_c
    :goto_c
    return-void

    .line 2512
    :cond_d
    iget-boolean v0, p0, mIsFHGuideLineEnabled:Z

    if-nez v0, :cond_c

    .line 2513
    iput-boolean v2, p0, mIsGuideLineEnabled:Z

    goto :goto_c

    .line 2517
    :cond_14
    iget-boolean v0, p0, mIsFHGuideLineEnabledByApp:Z

    if-eq v0, v1, :cond_c

    .line 2520
    iput-boolean p1, p0, mIsFHGuideLineEnabled:Z

    .line 2522
    iget-boolean v0, p0, mIsFHGuideLineEnabled:Z

    if-ne v0, v1, :cond_21

    .line 2523
    iput-boolean v1, p0, mIsGuideLineEnabled:Z

    goto :goto_c

    .line 2526
    :cond_21
    iget-boolean v0, p0, mIsFHGuideLineEnabled:Z

    if-nez v0, :cond_c

    .line 2527
    iput-boolean v2, p0, mIsGuideLineEnabled:Z

    goto :goto_c
.end method

.method public setFHSoundAndHapticEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2602
    iput-boolean p1, p0, mIsFHSoundAndHapticEnabled:Z

    .line 2603
    return-void
.end method

.method public setGuideLineEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2488
    iput-boolean p1, p0, mIsGuideLineEnabled:Z

    .line 2489
    return-void
.end method

.method public setGuideLineFadeOffset(I)V
    .registers 4
    .param p1, "offset"    # I

    .prologue
    .line 2612
    int-to-float v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iput v0, p0, mGuideLineFadeOffset:I

    .line 2613
    return-void
.end method

.method public setGuideLineStyle(II)V
    .registers 3
    .param p1, "ringDrawable"    # I
    .param p2, "lineColor"    # I

    .prologue
    .line 2622
    iput p1, p0, mGuideRingDrawableId:I

    .line 2623
    iput p2, p0, mGuideLineColor:I

    .line 2624
    return-void
.end method

.method public setHoverDetectTime(I)V
    .registers 2
    .param p1, "ms"    # I

    .prologue
    .line 927
    iput p1, p0, mHoverDetectTimeMS:I

    .line 928
    return-void
.end method

.method public setHoverPaddingArea(IIII)V
    .registers 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 940
    iput p1, p0, mHoverPaddingLeft:I

    .line 941
    iput p3, p0, mHoverPaddingRight:I

    .line 942
    iput p2, p0, mHoverPaddingTop:I

    .line 943
    iput p4, p0, mHoverPaddingBottom:I

    .line 945
    iget v0, p0, mHoverPaddingLeft:I

    if-nez v0, :cond_18

    iget v0, p0, mHoverPaddingRight:I

    if-nez v0, :cond_18

    iget v0, p0, mHoverPaddingTop:I

    if-nez v0, :cond_18

    iget v0, p0, mHoverPaddingBottom:I

    if-eqz v0, :cond_1b

    .line 947
    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsHoverPaddingEnabled:Z

    .line 949
    :cond_1b
    return-void
.end method

.method public setHoverPopupListener(Landroid/widget/HoverPopupWindow$HoverPopupListener;)V
    .registers 2
    .param p1, "l"    # Landroid/widget/HoverPopupWindow$HoverPopupListener;

    .prologue
    .line 840
    iput-object p1, p0, mListener:Landroid/widget/HoverPopupWindow$HoverPopupListener;

    .line 841
    return-void
.end method

.method public setHoverPopupPreShowListener(Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;)V
    .registers 2
    .param p1, "l"    # Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

    .prologue
    .line 850
    iput-object p1, p0, mPreShowListener:Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

    .line 851
    return-void
.end method

.method public setHoverPopupToolType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 745
    iput p1, p0, mToolType:I

    .line 746
    return-void
.end method

.method public setHoveringPoint(II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1019
    iput p1, p0, mHoveringPointX:I

    .line 1020
    iput p2, p0, mHoveringPointY:I

    .line 1021
    return-void
.end method

.method public setInfoPickerColorToAndMoreBottomImg(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 2593
    iput-boolean p1, p0, mIsSetInfoPickerColorToAndMoreBottomImg:Z

    .line 2594
    return-void
.end method

.method public setInfoPickerMoveEabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    const/4 v0, 0x1

    .line 2566
    iput-boolean v0, p0, mIsInfoPickerMoveEabledByApp:Z

    .line 2567
    invoke-virtual {p0, p1, v0}, setInfoPickerMoveEabledByApp(ZZ)V

    .line 2569
    return-void
.end method

.method public setInfoPickerMoveEabledByApp(ZZ)V
    .registers 5
    .param p1, "enabled"    # Z
    .param p2, "calledByApp"    # Z

    .prologue
    const/4 v1, 0x1

    .line 2575
    if-ne p2, v1, :cond_6

    .line 2576
    iput-boolean p1, p0, mIsInfoPickerMoveEabled:Z

    .line 2585
    :cond_5
    :goto_5
    return-void

    .line 2579
    :cond_6
    iget-boolean v0, p0, mIsInfoPickerMoveEabledByApp:Z

    if-eq v0, v1, :cond_5

    .line 2582
    iput-boolean p1, p0, mIsInfoPickerMoveEabled:Z

    goto :goto_5
.end method

.method protected setInstanceByType(I)V
    .registers 3
    .param p1, "type"    # I

    .prologue
    .line 510
    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    .line 511
    const/16 v0, 0x12c

    iput v0, p0, mHoverDetectTimeMS:I

    .line 512
    const/16 v0, 0x5153

    iput v0, p0, mPopupGravity:I

    .line 513
    const v0, 0x10304f8

    iput v0, p0, mAnimationStyle:I

    .line 515
    :cond_10
    return-void
.end method

.method public setInstanceOfDialer(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 588
    iput-boolean p1, p0, misDialer:Z

    .line 589
    return-void
.end method

.method public setInstanceOfProgressBar(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 604
    iput-boolean p1, p0, mIsProgressBar:Z

    .line 605
    return-void
.end method

.method public setOverTopPickerOffset(I)V
    .registers 3
    .param p1, "offset"    # I

    .prologue
    .line 1007
    iget-object v0, p0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v0, :cond_9

    .line 1008
    iget-object v0, p0, mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v0, p1}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setOverTopPickerOffset(I)V

    .line 1010
    :cond_9
    return-void
.end method

.method public setPickerXOffset(I)V
    .registers 2
    .param p1, "xOffset"    # I

    .prologue
    .line 998
    iput p1, p0, mPickerXoffset:I

    .line 999
    return-void
.end method

.method public setPopupGravity(I)V
    .registers 2
    .param p1, "gravity"    # I

    .prologue
    .line 978
    iput p1, p0, mPopupGravity:I

    .line 979
    return-void
.end method

.method public setPopupPosOffset(II)V
    .registers 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 988
    iput p1, p0, mPopupOffsetX:I

    .line 989
    iput p2, p0, mPopupOffsetY:I

    .line 990
    return-void
.end method

.method public setShowPopupAlways(Z)V
    .registers 2
    .param p1, "always"    # Z

    .prologue
    .line 957
    iput-boolean p1, p0, mShowPopupAlways:Z

    .line 958
    return-void
.end method

.method public setTouchablePopup(Z)V
    .registers 4
    .param p1, "isTouchable"    # Z

    .prologue
    .line 2476
    iput-boolean p1, p0, mIsPopupTouchable:Z

    .line 2477
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_d

    .line 2478
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, mIsPopupTouchable:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 2480
    :cond_d
    return-void
.end method

.method public show()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1070
    iget v0, p0, mPopupType:I

    invoke-virtual {p0, v0}, show(I)V

    .line 1071
    return-void
.end method

.method public show(I)V
    .registers 11
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    .line 1084
    iget v3, p0, mPopupType:I

    if-eq p1, v3, :cond_b

    .line 1085
    iput p1, p0, mPopupType:I

    .line 1086
    invoke-virtual {p0, p1}, setInstanceByType(I)V

    .line 1090
    :cond_b
    iget-object v3, p0, mPreShowListener:Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

    if-eqz v3, :cond_18

    .line 1091
    iget-object v3, p0, mPreShowListener:Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;

    invoke-interface {v3}, Landroid/widget/HoverPopupWindow$HoverPopupPreShowListener;->onHoverPopupPreShow()Z

    move-result v3

    if-nez v3, :cond_18

    .line 1160
    :cond_17
    :goto_17
    return-void

    .line 1097
    :cond_18
    iget-boolean v3, p0, mEnabled:Z

    if-eqz v3, :cond_17

    if-eqz p1, :cond_17

    iget-boolean v3, p0, mIsShowMessageSent:Z

    if-nez v3, :cond_17

    iget-boolean v3, p0, mIsHoverPaddingEnabled:Z

    if-eqz v3, :cond_2a

    iget-boolean v3, p0, mIsTryingShowPopup:Z

    if-eqz v3, :cond_17

    :cond_2a
    invoke-virtual {p0}, isHoverPopupPossible()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {p0, p1}, isHoveringSettingEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-virtual {p0}, isShowing()Z

    move-result v3

    if-nez v3, :cond_17

    iget-object v3, p0, mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-direct {p0}, isViewCoverClose()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {p0}, isLockScreenMode()Z

    move-result v3

    if-nez v3, :cond_17

    .line 1105
    iget-object v3, p0, mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 1106
    .local v0, "root":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1107
    .local v1, "vlp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v3, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_70

    move-object v2, v1

    .line 1108
    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 1109
    .local v2, "wlp":Landroid/view/WindowManager$LayoutParams;
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x8ac

    if-eq v3, v4, :cond_6d

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x62

    if-ne v3, v4, :cond_70

    .line 1111
    :cond_6d
    invoke-virtual {p0, v5}, setFHGuideLineEnabled(Z)V

    .line 1117
    .end local v2    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_70
    invoke-direct {p0}, getStateHashCode()I

    move-result v3

    iput v3, p0, mHashCodeForViewState:I

    .line 1120
    iget-boolean v3, p0, mIsSkipPenPointEffect:Z

    if-nez v3, :cond_7d

    .line 1121
    invoke-virtual {p0, v8}, showPenPointEffect(Z)V

    .line 1126
    :cond_7d
    iget-boolean v3, p0, mIsFHSoundAndHapticEnabled:Z

    if-eqz v3, :cond_96

    iget v3, p0, mToolType:I

    if-ne v3, v8, :cond_96

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "finger_air_view_sound_and_haptic_feedback"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v8, :cond_96

    .line 1129
    invoke-direct {p0}, playSoundAndHapticFeedback()V

    .line 1133
    :cond_96
    iget v3, p0, mPopupType:I

    if-ne v3, v8, :cond_a1

    .line 1134
    new-instance v3, Landroid/widget/HoverPopupWindow$4;

    invoke-direct {v3, p0}, Landroid/widget/HoverPopupWindow$4;-><init>(Landroid/widget/HoverPopupWindow;)V

    iput-object v3, p0, mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 1141
    :cond_a1
    new-instance v3, Landroid/widget/HoverPopupWindow$5;

    invoke-direct {v3, p0}, Landroid/widget/HoverPopupWindow$5;-><init>(Landroid/widget/HoverPopupWindow;)V

    iput-object v3, p0, mShowPopupRunnable:Ljava/lang/Runnable;

    .line 1150
    iget-object v3, p0, mParentView:Landroid/view/View;

    iget-object v4, p0, mShowPopupRunnable:Ljava/lang/Runnable;

    iget v5, p0, mHoverDetectTimeMS:I

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1151
    iput-boolean v8, p0, mIsShowMessageSent:Z

    goto/16 :goto_17
.end method

.method protected showPenPointEffect(Z)V
    .registers 5
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x1

    .line 2932
    iget v0, p0, mToolType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 2933
    if-ne p1, v2, :cond_11

    .line 2937
    const/16 v0, 0xa

    const/4 v1, -0x1

    :try_start_b
    invoke-static {v0, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_e} :catch_21

    .line 2942
    :goto_e
    iput-boolean v2, p0, mIsSPenPointChanged:Z

    .line 2955
    :cond_10
    :goto_10
    return-void

    .line 2943
    :cond_11
    if-nez p1, :cond_10

    iget-boolean v0, p0, mIsSPenPointChanged:Z

    if-ne v0, v2, :cond_10

    .line 2947
    const/16 v0, 0x14

    const/4 v1, -0x1

    :try_start_1a
    invoke-static {v0, v1}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_23

    .line 2952
    :goto_1d
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsSPenPointChanged:Z

    goto :goto_10

    .line 2938
    :catch_21
    move-exception v0

    goto :goto_e

    .line 2948
    :catch_23
    move-exception v0

    goto :goto_1d
.end method

.method public updateHoverPopup()V
    .registers 6

    .prologue
    const/4 v4, -0x1

    .line 2387
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_26

    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-boolean v0, p0, mNeedToMeasureContentView:Z

    if-nez v0, :cond_26

    .line 2388
    iget-object v0, p0, mAnchorRect:Landroid/graphics/Rect;

    iget-object v1, p0, mDisplayFrame:Landroid/graphics/Rect;

    iget v2, p0, mContentWidth:I

    iget v3, p0, mContentHeight:I

    invoke-direct {p0, v0, v1, v2, v3}, computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 2389
    iget-object v0, p0, mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, mPopupPosX:I

    iget v2, p0, mPopupPosY:I

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 2393
    :goto_25
    return-void

    .line 2391
    :cond_26
    iget-object v0, p0, mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_36

    iget-object v0, p0, mAnchorView:Landroid/view/View;

    :goto_2c
    iget v1, p0, mPopupGravity:I

    iget v2, p0, mPopupOffsetX:I

    iget v3, p0, mPopupOffsetY:I

    invoke-direct {p0, v0, v1, v2, v3}, updateHoverPopup(Landroid/view/View;III)V

    goto :goto_25

    :cond_36
    iget-object v0, p0, mParentView:Landroid/view/View;

    goto :goto_2c
.end method
