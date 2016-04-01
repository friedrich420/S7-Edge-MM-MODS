.class public Lcom/android/server/wm/AppTransition;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# static fields
.field static final ALPHA_TRANSITION_DURATION:I = 0xc8

.field private static final APP_STATE_IDLE:I = 0x0

.field private static final APP_STATE_READY:I = 0x1

.field private static final APP_STATE_RUNNING:I = 0x2

.field private static final APP_STATE_TIMEOUT:I = 0x3

.field private static final CLIP_REVEAL_TRANSLATION_Y_DP:I = 0x8

.field private static final DEBUG_ANIM:Z

.field private static final DEBUG_APP_TRANSITIONS:Z

.field private static final DEFAULT_APP_TRANSITION_DURATION:I = 0x150

.field private static final NEXT_TRANSIT_TYPE_CLIP_REVEAL:I = 0x8

.field private static final NEXT_TRANSIT_TYPE_CUSTOM:I = 0x1

.field private static final NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE:I = 0x7

.field private static final NEXT_TRANSIT_TYPE_CUSTOM_SCALE_UP:I = 0x3e9

.field public static final NEXT_TRANSIT_TYPE_DUALSCREN_EXPAND:I = 0x9

.field public static final NEXT_TRANSIT_TYPE_DUALSCREN_SHRINK:I = 0xa

.field private static final NEXT_TRANSIT_TYPE_NONE:I = 0x0

.field private static final NEXT_TRANSIT_TYPE_SCALE_UP:I = 0x2

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN:I = 0x6

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP:I = 0x5

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN:I = 0x4

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP:I = 0x3

.field private static final NEXT_TRANSIT_TYPE_TRANSLATE:I = 0x3e8

.field private static final RECENTS_THUMBNAIL_FADEIN_FRACTION:F = 0.5f

.field private static final RECENTS_THUMBNAIL_FADEOUT_FRACTION:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "AppTransition"

.field private static final THUMBNAIL_APP_TRANSITION_ALPHA_DURATION:I = 0x150

.field private static final THUMBNAIL_APP_TRANSITION_ALPHA_DURATION_DOWN:I = 0xe9

.field private static final THUMBNAIL_APP_TRANSITION_ALPHA_DURATION_UP:I = 0xe9

.field private static final THUMBNAIL_APP_TRANSITION_ALPHA_STARTOFFSET_DOWN:I = 0xc8

.field private static final THUMBNAIL_APP_TRANSITION_DURATION:I = 0x150

.field private static final THUMBNAIL_APP_TRANSITION_DURATION2:I = 0x1b1

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_DOWN:I = 0x2

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_UP:I = 0x0

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_DOWN:I = 0x3

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_UP:I = 0x1

.field public static final TRANSIT_ACTIVITY_CLOSE:I = 0x7

.field public static final TRANSIT_ACTIVITY_OPEN:I = 0x6

.field public static final TRANSIT_DUALSCREEN_EXPAND:I = 0xc9

.field public static final TRANSIT_DUALSCREEN_NONE:I = 0xc8

.field public static final TRANSIT_DUALSCREEN_SHRINK:I = 0xca

.field public static final TRANSIT_MULTIWINDOW_CLOSE:I = 0x66

.field public static final TRANSIT_MULTIWINDOW_NONE:I = 0x64

.field public static final TRANSIT_MULTIWINDOW_OPEN:I = 0x65

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_TASK_CLOSE:I = 0x9

.field public static final TRANSIT_TASK_IN_PLACE:I = 0x11

.field public static final TRANSIT_TASK_OPEN:I = 0x8

.field public static final TRANSIT_TASK_OPEN_BEHIND:I = 0x10

.field public static final TRANSIT_TASK_TO_BACK:I = 0xb

.field public static final TRANSIT_TASK_TO_FRONT:I = 0xa

.field public static final TRANSIT_UNSET:I = -0x1

.field public static final TRANSIT_VIRTUAL_SCREEN_NONE:I = 0x12c

.field public static final TRANSIT_VIRTUAL_SCREEN_TASK:I = 0x12d

.field public static final TRANSIT_WALLPAPER_CLOSE:I = 0xc

.field public static final TRANSIT_WALLPAPER_INTRA_CLOSE:I = 0xf

.field public static final TRANSIT_WALLPAPER_INTRA_OPEN:I = 0xe

.field public static final TRANSIT_WALLPAPER_OPEN:I = 0xd


# instance fields
.field final mAlphaTransitionInterpolator:Landroid/view/animation/Interpolator;

.field private mAppTransitionState:I

.field private mAppliedAlphaInsteadOfScaleAnimation:Z

.field private final mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

.field private final mClipRevealTranslationY:I

.field private final mConfigShortAnimTime:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private mDisplayId:I

.field private mEasyOneHandRunning:Z

.field private final mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final mH:Landroid/os/Handler;

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/WindowManagerInternal$AppTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAppTransition:I

.field private mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionEnter:I

.field private mNextAppTransitionExit:I

.field private mNextAppTransitionInPlace:I

.field private mNextAppTransitionInsets:Landroid/graphics/Rect;

.field private mNextAppTransitionPackage:Ljava/lang/String;

.field mNextAppTransitionRequester:Lcom/android/server/wm/AppWindowToken;

.field private mNextAppTransitionScaleUp:Z

.field private mNextAppTransitionStartHeight:I

.field private mNextAppTransitionStartWidth:I

.field private mNextAppTransitionStartX:I

.field private mNextAppTransitionStartY:I

.field private mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

.field private mNextAppTransitionType:I

.field private final mSineInOut33Interpolator:Landroid/view/animation/Interpolator;

.field private final mSineInOut90Interpolator:Landroid/view/animation/Interpolator;

.field private final mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

.field private final mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

.field private final mThumbnailFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mTmpFromClipRect:Landroid/graphics/Rect;

.field private mTmpToClipRect:Landroid/graphics/Rect;

.field private final mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

.field mWindowAnimator:Lcom/android/server/wm/WindowAnimator;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 107
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    sput-boolean v0, DEBUG_APP_TRANSITIONS:Z

    .line 109
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    sput-boolean v0, DEBUG_ANIM:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    const/4 v6, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, mWindowAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 197
    iput v6, p0, mNextAppTransition:I

    .line 218
    iput v4, p0, mNextAppTransitionType:I

    .line 241
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mNextAppTransitionInsets:Landroid/graphics/Rect;

    .line 243
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mTmpFromClipRect:Landroid/graphics/Rect;

    .line 244
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mTmpToClipRect:Landroid/graphics/Rect;

    .line 250
    iput v4, p0, mAppTransitionState:I

    .line 258
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v3, v3, v1, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    .line 260
    new-instance v0, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    iput-object v0, p0, mSineInOut33Interpolator:Landroid/view/animation/Interpolator;

    .line 261
    new-instance v0, Landroid/view/animation/interpolator/SineInOut90;

    invoke-direct {v0}, Landroid/view/animation/interpolator/SineInOut90;-><init>()V

    iput-object v0, p0, mSineInOut90Interpolator:Landroid/view/animation/Interpolator;

    .line 265
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v3, v2, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    .line 270
    iput v4, p0, mCurrentUserId:I

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mListeners:Ljava/util/ArrayList;

    .line 283
    iput v6, p0, mDisplayId:I

    .line 287
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 288
    iput-object p2, p0, mH:Landroid/os/Handler;

    .line 289
    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 291
    const v0, 0x10c000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 293
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, mConfigShortAnimTime:I

    .line 295
    const v0, 0x10c0003

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 298
    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, mThumbnailFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 300
    iget-object v0, p0, mThumbnailFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, mAlphaTransitionInterpolator:Landroid/view/animation/Interpolator;

    .line 302
    new-instance v0, Lcom/android/server/wm/AppTransition$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$1;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    .line 314
    new-instance v0, Lcom/android/server/wm/AppTransition$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$2;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    .line 325
    const/high16 v0, 0x41000000    # 8.0f

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, mClipRevealTranslationY:I

    .line 328
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, mWindowManager:Landroid/view/WindowManager;

    .line 330
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AppTransition;

    .prologue
    .line 105
    iget-object v0, p0, mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/AppTransition;

    .prologue
    .line 105
    iget-object v0, p0, mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private appStateToString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1738
    iget v0, p0, mAppTransitionState:I

    packed-switch v0, :pswitch_data_28

    .line 1748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mAppTransitionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1b
    return-object v0

    .line 1740
    :pswitch_1c
    const-string v0, "APP_STATE_IDLE"

    goto :goto_1b

    .line 1742
    :pswitch_1f
    const-string v0, "APP_STATE_READY"

    goto :goto_1b

    .line 1744
    :pswitch_22
    const-string v0, "APP_STATE_RUNNING"

    goto :goto_1b

    .line 1746
    :pswitch_25
    const-string v0, "APP_STATE_TIMEOUT"

    goto :goto_1b

    .line 1738
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method

.method public static appTransitionToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "transition"    # I

    .prologue
    .line 1677
    packed-switch p0, :pswitch_data_3a

    .line 1691
    packed-switch p0, :pswitch_data_44

    .line 1732
    :pswitch_6
    const-string v0, "<UNKNOWN>"

    :goto_8
    return-object v0

    .line 1679
    :pswitch_9
    const-string v0, "TRANSIT_MULTIWINDOW_NONE"

    goto :goto_8

    .line 1682
    :pswitch_c
    const-string v0, "TRANSIT_MULTIWINDOW_OPEN"

    goto :goto_8

    .line 1685
    :pswitch_f
    const-string v0, "TRANSIT_MULTIWINDOW_CLOSE"

    goto :goto_8

    .line 1693
    :pswitch_12
    const-string v0, "TRANSIT_UNSET"

    goto :goto_8

    .line 1696
    :pswitch_15
    const-string v0, "TRANSIT_NONE"

    goto :goto_8

    .line 1699
    :pswitch_18
    const-string v0, "TRANSIT_ACTIVITY_OPEN"

    goto :goto_8

    .line 1702
    :pswitch_1b
    const-string v0, "TRANSIT_ACTIVITY_CLOSE"

    goto :goto_8

    .line 1705
    :pswitch_1e
    const-string v0, "TRANSIT_TASK_OPEN"

    goto :goto_8

    .line 1708
    :pswitch_21
    const-string v0, "TRANSIT_TASK_CLOSE"

    goto :goto_8

    .line 1711
    :pswitch_24
    const-string v0, "TRANSIT_TASK_TO_FRONT"

    goto :goto_8

    .line 1714
    :pswitch_27
    const-string v0, "TRANSIT_TASK_TO_BACK"

    goto :goto_8

    .line 1717
    :pswitch_2a
    const-string v0, "TRANSIT_WALLPAPER_CLOSE"

    goto :goto_8

    .line 1720
    :pswitch_2d
    const-string v0, "TRANSIT_WALLPAPER_OPEN"

    goto :goto_8

    .line 1723
    :pswitch_30
    const-string v0, "TRANSIT_WALLPAPER_INTRA_OPEN"

    goto :goto_8

    .line 1726
    :pswitch_33
    const-string v0, "TRANSIT_WALLPAPER_INTRA_CLOSE"

    goto :goto_8

    .line 1729
    :pswitch_36
    const-string v0, "TRANSIT_TASK_OPEN_BEHIND"

    goto :goto_8

    .line 1677
    nop

    :pswitch_data_3a
    .packed-switch 0x64
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch

    .line 1691
    :pswitch_data_44
    .packed-switch -0x1
        :pswitch_12
        :pswitch_15
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
        :pswitch_33
        :pswitch_36
    .end packed-switch
.end method

.method private static computePivot(IF)F
    .registers 5
    .param p0, "startPos"    # I
    .param p1, "finalScale"    # F

    .prologue
    .line 572
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, p1, v1

    .line 573
    .local v0, "denom":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_11

    .line 574
    int-to-float v1, p0

    .line 576
    :goto_10
    return v1

    :cond_11
    neg-int v1, p0

    int-to-float v1, v1

    div-float/2addr v1, v0

    goto :goto_10
.end method

.method private createClipRevealAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .registers 29
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appFrame"    # Landroid/graphics/Rect;

    .prologue
    .line 634
    if-eqz p2, :cond_12b

    .line 637
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 638
    .local v10, "appWidth":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 640
    .local v9, "appHeight":I
    const/16 v18, 0x0

    .line 641
    .local v18, "t":F
    if-lez v9, :cond_1e

    .line 642
    move-object/from16 v0, p0

    iget v0, v0, mNextAppTransitionStartY:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v9

    move/from16 v22, v0

    div-float v18, v21, v22

    .line 644
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, mClipRevealTranslationY:I

    move/from16 v21, v0

    int-to-float v0, v9

    move/from16 v22, v0

    const/high16 v23, 0x40e00000    # 7.0f

    div-float v22, v22, v23

    mul-float v22, v22, v18

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v20, v21, v22

    .line 647
    .local v20, "translationY":I
    move-object/from16 v0, p0

    iget v0, v0, mNextAppTransitionStartX:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, mNextAppTransitionStartWidth:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v11, v21, v22

    .line 648
    .local v11, "centerX":I
    move-object/from16 v0, p0

    iget v0, v0, mNextAppTransitionStartY:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, mNextAppTransitionStartHeight:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v12, v21, v22

    .line 651
    .local v12, "centerY":I
    new-instance v13, Landroid/view/animation/ClipRectLRAnimation;

    move-object/from16 v0, p0

    iget v0, v0, mNextAppTransitionStartWidth:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x3

    sub-int v21, v11, v21

    move-object/from16 v0, p0

    iget v0, v0, mNextAppTransitionStartWidth:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x3

    add-int v22, v22, v11

    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v13, v0, v1, v2, v10}, Landroid/view/animation/ClipRectLRAnimation;-><init>(IIII)V

    .line 655
    .local v13, "clipAnimLR":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v0, v0, mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 656
    const-wide/16 v22, 0x86

    move-wide/from16 v0, v22

    invoke-virtual {v13, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 657
    new-instance v14, Landroid/view/animation/ClipRectTBAnimation;

    move-object/from16 v0, p0

    iget v0, v0, mNextAppTransitionStartHeight:I

    move/from16 v21, v0

    div-int/lit8 v21, v21, 0x3

    sub-int v21, v12, v21

    sub-int v21, v21, v20

    move-object/from16 v0, p0

    iget v0, v0, mNextAppTransitionStartHeight:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x3

    add-int v22, v22, v12

    sub-int v22, v22, v20

    const/16 v23, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v14, v0, v1, v2, v9}, Landroid/view/animation/ClipRectTBAnimation;-><init>(IIII)V

    .line 661
    .local v14, "clipAnimTB":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v0, v0, mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 662
    const-wide/16 v22, 0x150

    move-wide/from16 v0, v22

    invoke-virtual {v14, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 664
    new-instance v19, Landroid/view/animation/TranslateYAnimation;

    const/16 v21, 0x0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateYAnimation;-><init>(IFIF)V

    .line 666
    .local v19, "translateY":Landroid/view/animation/TranslateYAnimation;
    move-object/from16 v0, p0

    iget-object v0, v0, mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateYAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 667
    const-wide/16 v22, 0x150

    move-object/from16 v0, v19

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateYAnimation;->setDuration(J)V

    .line 670
    const/16 v7, 0x54

    .line 671
    .local v7, "alphaDuration":I
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v21, 0x3f000000    # 0.5f

    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v6, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 672
    .local v6, "alpha":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v22, 0x54

    move-wide/from16 v0, v22

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 675
    new-instance v15, Landroid/view/animation/AnimationSet;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-direct {v15, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 676
    .local v15, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v15, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 677
    invoke-virtual {v15, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 678
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 679
    invoke-virtual {v15, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 680
    invoke-virtual {v15, v10, v9, v10, v9}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 681
    move-object v8, v15

    .line 709
    .end local v6    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v7    # "alphaDuration":I
    .end local v9    # "appHeight":I
    .end local v10    # "appWidth":I
    .end local v11    # "centerX":I
    .end local v12    # "centerY":I
    .end local v13    # "clipAnimLR":Landroid/view/animation/Animation;
    .end local v14    # "clipAnimTB":Landroid/view/animation/Animation;
    .end local v15    # "set":Landroid/view/animation/AnimationSet;
    .end local v18    # "t":F
    .end local v19    # "translateY":Landroid/view/animation/TranslateYAnimation;
    .end local v20    # "translationY":I
    .local v8, "anim":Landroid/view/animation/Animation;
    :goto_12a
    return-object v8

    .line 684
    .end local v8    # "anim":Landroid/view/animation/Animation;
    :cond_12b
    packed-switch p1, :pswitch_data_186

    .line 690
    const-wide/16 v16, 0x150

    .line 693
    .local v16, "duration":J
    :goto_130
    const/16 v21, 0xe

    move/from16 v0, p1

    move/from16 v1, v21

    if-eq v0, v1, :cond_140

    const/16 v21, 0xf

    move/from16 v0, p1

    move/from16 v1, v21

    if-ne v0, v1, :cond_178

    .line 699
    :cond_140
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/high16 v21, 0x3f800000    # 1.0f

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v8, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 700
    .restart local v8    # "anim":Landroid/view/animation/Animation;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    .line 705
    :goto_154
    move-object/from16 v0, p0

    iget-object v0, v0, mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 706
    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 707
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    goto :goto_12a

    .line 687
    .end local v8    # "anim":Landroid/view/animation/Animation;
    .end local v16    # "duration":J
    :pswitch_16c
    move-object/from16 v0, p0

    iget v0, v0, mConfigShortAnimTime:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 688
    .restart local v16    # "duration":J
    goto :goto_130

    .line 703
    :cond_178
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v8, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v8    # "anim":Landroid/view/animation/Animation;
    goto :goto_154

    .line 684
    :pswitch_data_186
    .packed-switch 0x6
        :pswitch_16c
        :pswitch_16c
    .end packed-switch
.end method

.method private createCustomScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;
    .registers 16
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appWidth"    # I
    .param p4, "appHeight"    # I

    .prologue
    .line 715
    const/4 v0, 0x0

    .line 716
    .local v0, "scale":Landroid/view/animation/Animation;
    const/4 v9, 0x0

    .line 717
    .local v9, "alpha":Landroid/view/animation/Animation;
    const/4 v10, 0x0

    .line 719
    .local v10, "set":Landroid/view/animation/AnimationSet;
    if-eqz p2, :cond_58

    .line 720
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "scale":Landroid/view/animation/Animation;
    const v1, 0x3f19999a    # 0.6f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f19999a    # 0.6f

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, mNextAppTransitionStartX:I

    iget v6, p0, mNextAppTransitionStartWidth:I

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, mNextAppTransitionStartY:I

    iget v7, p0, mNextAppTransitionStartHeight:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 723
    .restart local v0    # "scale":Landroid/view/animation/Animation;
    iget-object v1, p0, mSineInOut90Interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 725
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9    # "alpha":Landroid/view/animation/Animation;
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 726
    .restart local v9    # "alpha":Landroid/view/animation/Animation;
    iget-object v1, p0, mSineInOut33Interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 728
    new-instance v10, Landroid/view/animation/AnimationSet;

    .end local v10    # "set":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x0

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 729
    .restart local v10    # "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 730
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 731
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 732
    const-wide/16 v2, 0x42

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 733
    const-wide/16 v2, 0x12c

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 750
    :goto_50
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 751
    invoke-virtual {v10, p3, p4, p3, p4}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    .line 752
    return-object v10

    .line 735
    :cond_58
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "scale":Landroid/view/animation/Animation;
    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f866666    # 1.05f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f866666    # 1.05f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 738
    .restart local v0    # "scale":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x16e

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 739
    iget-object v1, p0, mSineInOut90Interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 741
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    .end local v9    # "alpha":Landroid/view/animation/Animation;
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 742
    .restart local v9    # "alpha":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v9, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 743
    iget-object v1, p0, mSineInOut33Interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 745
    new-instance v10, Landroid/view/animation/AnimationSet;

    .end local v10    # "set":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x0

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 746
    .restart local v10    # "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 747
    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 748
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    goto :goto_50
.end method

.method private createScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;
    .registers 21
    .param p1, "transit"    # I
    .param p2, "enter"    # Z
    .param p3, "appWidth"    # I
    .param p4, "appHeight"    # I

    .prologue
    .line 581
    const/4 v11, 0x0

    .line 582
    .local v11, "a":Landroid/view/animation/Animation;
    if-eqz p2, :cond_76

    .line 584
    move-object/from16 v0, p0

    iget v6, v0, mNextAppTransitionStartWidth:I

    int-to-float v6, v6

    move/from16 v0, p3

    int-to-float v8, v0

    div-float v5, v6, v8

    .line 585
    .local v5, "scaleW":F
    move-object/from16 v0, p0

    iget v6, v0, mNextAppTransitionStartHeight:I

    int-to-float v6, v6

    move/from16 v0, p4

    int-to-float v8, v0

    div-float v7, v6, v8

    .line 586
    .local v7, "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v9, v0, mNextAppTransitionStartX:I

    invoke-static {v9, v5}, computePivot(IF)F

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, mNextAppTransitionStartY:I

    invoke-static {v10, v7}, computePivot(IF)F

    move-result v10

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 589
    .local v4, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 591
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v12, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 592
    .local v12, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 594
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    invoke-direct {v13, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 595
    .local v13, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 596
    invoke-virtual {v13, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 597
    const/4 v6, 0x1

    invoke-virtual {v13, v6}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 598
    move-object v11, v13

    .line 616
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v5    # "scaleW":F
    .end local v7    # "scaleH":F
    .end local v12    # "alpha":Landroid/view/animation/Animation;
    .end local v13    # "set":Landroid/view/animation/AnimationSet;
    :goto_57
    packed-switch p1, :pswitch_data_a0

    .line 622
    const-wide/16 v14, 0x150

    .line 625
    .local v14, "duration":J
    :goto_5c
    invoke-virtual {v11, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 626
    const/4 v6, 0x1

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 627
    move-object/from16 v0, p0

    iget-object v6, v0, mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 628
    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 629
    return-object v11

    .line 599
    .end local v14    # "duration":J
    :cond_76
    const/16 v6, 0xe

    move/from16 v0, p1

    if-eq v0, v6, :cond_82

    const/16 v6, 0xf

    move/from16 v0, p1

    if-ne v0, v6, :cond_8f

    .line 605
    :cond_82
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    .end local v11    # "a":Landroid/view/animation/Animation;
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v11, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 606
    .restart local v11    # "a":Landroid/view/animation/Animation;
    const/4 v6, 0x1

    invoke-virtual {v11, v6}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    goto :goto_57

    .line 609
    :cond_8f
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    .end local v11    # "a":Landroid/view/animation/Animation;
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v11, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v11    # "a":Landroid/view/animation/Animation;
    goto :goto_57

    .line 619
    :pswitch_99
    move-object/from16 v0, p0

    iget v6, v0, mConfigShortAnimTime:I

    int-to-long v14, v6

    .line 620
    .restart local v14    # "duration":J
    goto :goto_5c

    .line 616
    nop

    :pswitch_data_a0
    .packed-switch 0x6
        :pswitch_99
        :pswitch_99
    .end packed-switch
.end method

.method private createTransAnimation(ZII)Landroid/view/animation/Animation;
    .registers 8
    .param p1, "enter"    # Z
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I

    .prologue
    const/4 v3, 0x0

    .line 1604
    const/4 v1, 0x0

    .line 1605
    .local v1, "trans":Landroid/view/animation/Animation;
    iget-object v2, p0, mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 1607
    .local v0, "rotation":I
    packed-switch v0, :pswitch_data_58

    .line 1630
    if-eqz p1, :cond_51

    .line 1631
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "trans":Landroid/view/animation/Animation;
    int-to-float v2, p2

    invoke-direct {v1, v2, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1637
    .restart local v1    # "trans":Landroid/view/animation/Animation;
    :goto_17
    iget-object v2, p0, mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1639
    return-object v1

    .line 1609
    :pswitch_1d
    if-eqz p1, :cond_27

    .line 1610
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "trans":Landroid/view/animation/Animation;
    int-to-float v2, p3

    neg-float v2, v2

    invoke-direct {v1, v3, v3, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v1    # "trans":Landroid/view/animation/Animation;
    goto :goto_17

    .line 1612
    :cond_27
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "trans":Landroid/view/animation/Animation;
    int-to-float v2, p3

    neg-float v2, v2

    invoke-direct {v1, v3, v3, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1614
    .restart local v1    # "trans":Landroid/view/animation/Animation;
    goto :goto_17

    .line 1616
    :pswitch_2f
    if-eqz p1, :cond_39

    .line 1617
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "trans":Landroid/view/animation/Animation;
    int-to-float v2, p2

    neg-float v2, v2

    invoke-direct {v1, v2, v3, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v1    # "trans":Landroid/view/animation/Animation;
    goto :goto_17

    .line 1619
    :cond_39
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "trans":Landroid/view/animation/Animation;
    int-to-float v2, p2

    neg-float v2, v2

    invoke-direct {v1, v3, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1621
    .restart local v1    # "trans":Landroid/view/animation/Animation;
    goto :goto_17

    .line 1623
    :pswitch_41
    if-eqz p1, :cond_4a

    .line 1624
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "trans":Landroid/view/animation/Animation;
    int-to-float v2, p3

    invoke-direct {v1, v3, v3, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v1    # "trans":Landroid/view/animation/Animation;
    goto :goto_17

    .line 1626
    :cond_4a
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "trans":Landroid/view/animation/Animation;
    int-to-float v2, p3

    invoke-direct {v1, v3, v3, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1628
    .restart local v1    # "trans":Landroid/view/animation/Animation;
    goto :goto_17

    .line 1633
    :cond_51
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "trans":Landroid/view/animation/Animation;
    int-to-float v2, p2

    invoke-direct {v1, v3, v2, v3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v1    # "trans":Landroid/view/animation/Animation;
    goto :goto_17

    .line 1607
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_2f
        :pswitch_41
    .end packed-switch
.end method

.method private createTransAnimationLocked(ZII)Landroid/view/animation/Animation;
    .registers 12
    .param p1, "enter"    # Z
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I

    .prologue
    const/4 v7, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 1571
    const/4 v0, 0x0

    .line 1572
    .local v0, "a":Landroid/view/animation/Animation;
    if-eqz p1, :cond_36

    .line 1573
    invoke-direct {p0, p1, p2, p3}, createTransAnimation(ZII)Landroid/view/animation/Animation;

    move-result-object v3

    .line 1575
    .local v3, "trans":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1576
    .local v1, "alpha":Landroid/view/animation/Animation;
    iget-object v4, p0, mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1578
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1579
    .local v2, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1580
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1581
    invoke-virtual {v2, v6}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    .line 1582
    move-object v0, v2

    .line 1596
    :goto_25
    const-wide/16 v4, 0x150

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1597
    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1598
    iget-object v4, p0, mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1599
    invoke-virtual {v0, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 1600
    return-object v0

    .line 1584
    .end local v1    # "alpha":Landroid/view/animation/Animation;
    .end local v2    # "set":Landroid/view/animation/AnimationSet;
    .end local v3    # "trans":Landroid/view/animation/Animation;
    :cond_36
    invoke-direct {p0, p1, p2, p3}, createTransAnimation(ZII)Landroid/view/animation/Animation;

    move-result-object v3

    .line 1586
    .restart local v3    # "trans":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1587
    .restart local v1    # "alpha":Landroid/view/animation/Animation;
    iget-object v4, p0, mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1589
    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1590
    .restart local v2    # "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1591
    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1592
    invoke-virtual {v2, v6}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 1593
    move-object v0, v2

    goto :goto_25
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .registers 8
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    const/4 v3, 0x0

    .line 482
    sget-boolean v2, DEBUG_ANIM:Z

    if-eqz v2, :cond_33

    const-string v4, "AppTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading animations: layout params pkg="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_73

    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    :goto_16
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " resId=0x"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p1, :cond_75

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    :goto_28
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_33
    if-eqz p1, :cond_72

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v2, :cond_72

    .line 489
    iget-object v2, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_77

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 490
    .local v0, "packageName":Ljava/lang/String;
    :goto_3f
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 491
    .local v1, "resId":I
    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    const/high16 v3, 0x1000000

    if-ne v2, v3, :cond_4a

    .line 492
    const-string v0, "android"

    .line 494
    :cond_4a
    sget-boolean v2, DEBUG_ANIM:Z

    if-eqz v2, :cond_66

    const-string v2, "AppTransition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading animations: picked package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_66
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v4, p0, mCurrentUserId:I

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v3

    .line 499
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "resId":I
    :cond_72
    return-object v3

    :cond_73
    move-object v2, v3

    .line 482
    goto :goto_16

    :cond_75
    move-object v2, v3

    goto :goto_28

    .line 489
    :cond_77
    const-string v0, "android"

    goto :goto_3f
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 503
    sget-boolean v0, DEBUG_ANIM:Z

    if-eqz v0, :cond_2a

    const-string v0, "AppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading animations: package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resId=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_2a
    if-eqz p1, :cond_5e

    .line 506
    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_35

    .line 507
    const-string p1, "android"

    .line 509
    :cond_35
    sget-boolean v0, DEBUG_ANIM:Z

    if-eqz v0, :cond_51

    const-string v0, "AppTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading animations: picked package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_51
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v2, p0, mCurrentUserId:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    .line 514
    :goto_5d
    return-object v0

    :cond_5e
    const/4 v0, 0x0

    goto :goto_5d
.end method

.method static isDualScreenAppTransition(I)Z
    .registers 2
    .param p0, "transit"    # I

    .prologue
    .line 1864
    const/16 v0, 0xc9

    if-eq p0, v0, :cond_8

    const/16 v0, 0xca

    if-ne p0, v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I

    .prologue
    .line 546
    const/4 v0, 0x0

    .line 547
    .local v0, "anim":I
    iget-object v1, p0, mContext:Landroid/content/Context;

    .line 548
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_e

    .line 549
    invoke-direct {p0, p1, p2}, getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 550
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_e

    .line 551
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 552
    move v0, p2

    .line 555
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_e
    if-eqz v0, :cond_15

    .line 556
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 558
    :goto_14
    return-object v3

    :cond_15
    const/4 v3, 0x0

    goto :goto_14
.end method

.method private notifyAppTransitionCancelledLocked()V
    .registers 3

    .prologue
    .line 468
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 469
    iget-object v1, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionCancelledLocked()V

    .line 468
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 471
    :cond_17
    return-void
.end method

.method private notifyAppTransitionPendingLocked()V
    .registers 3

    .prologue
    .line 462
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 463
    iget-object v1, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionPendingLocked()V

    .line 462
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 465
    :cond_17
    return-void
.end method

.method private notifyAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .registers 7
    .param p1, "openToken"    # Landroid/os/IBinder;
    .param p2, "closeToken"    # Landroid/os/IBinder;
    .param p3, "openAnimation"    # Landroid/view/animation/Animation;
    .param p4, "closeAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 475
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 476
    iget-object v1, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 475
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 479
    :cond_17
    return-void
.end method

.method private transitTypeToString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1753
    iget v0, p0, mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_34

    .line 1771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mNextAppTransitionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1b
    return-object v0

    .line 1755
    :pswitch_1c
    const-string v0, "NEXT_TRANSIT_TYPE_NONE"

    goto :goto_1b

    .line 1757
    :pswitch_1f
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM"

    goto :goto_1b

    .line 1759
    :pswitch_22
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE"

    goto :goto_1b

    .line 1761
    :pswitch_25
    const-string v0, "NEXT_TRANSIT_TYPE_SCALE_UP"

    goto :goto_1b

    .line 1763
    :pswitch_28
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP"

    goto :goto_1b

    .line 1765
    :pswitch_2b
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN"

    goto :goto_1b

    .line 1767
    :pswitch_2e
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP"

    goto :goto_1b

    .line 1769
    :pswitch_31
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN"

    goto :goto_1b

    .line 1753
    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1f
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_22
    .end packed-switch
.end method


# virtual methods
.method public appliedAlphaAnimationInsteadOfScaleAnimation()V
    .registers 2

    .prologue
    .line 1896
    const/4 v0, 0x1

    iput-boolean v0, p0, mAppliedAlphaInsteadOfScaleAnimation:Z

    .line 1897
    return-void
.end method

.method canSkipFirstFrame()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 1186
    iget v1, p0, mNextAppTransitionType:I

    if-eq v1, v0, :cond_11

    iget v1, p0, mNextAppTransitionType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_11

    iget v1, p0, mNextAppTransitionType:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_11

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method checkCocktailAppTransition(IZ)Z
    .registers 7
    .param p1, "transit"    # I
    .param p2, "enter"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1644
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSystemBarType(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1645
    iget v2, p0, mNextAppTransitionType:I

    const/16 v3, 0x3e8

    if-ne v2, v3, :cond_13

    if-eqz p2, :cond_13

    .line 1659
    :goto_12
    return v0

    .line 1648
    :cond_13
    packed-switch p1, :pswitch_data_22

    move v0, v1

    .line 1654
    goto :goto_12

    .line 1650
    :pswitch_18
    iget-boolean v2, p0, mEasyOneHandRunning:Z

    if-eqz v2, :cond_1e

    :cond_1c
    move v0, v1

    .line 1659
    goto :goto_12

    .line 1651
    :cond_1e
    if-eqz p2, :cond_1c

    goto :goto_12

    .line 1648
    nop

    :pswitch_data_22
    .packed-switch 0xc
        :pswitch_18
    .end packed-switch
.end method

.method clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 439
    const/4 v0, 0x0

    iput v0, p0, mNextAppTransitionType:I

    .line 440
    iput-object v1, p0, mNextAppTransitionPackage:Ljava/lang/String;

    .line 441
    iput-object v1, p0, mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 442
    return-void
.end method

.method createAspectScaledThumbnailEnterExitAnimationLocked(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;ZI)Landroid/view/animation/Animation;
    .registers 32
    .param p1, "thumbTransitState"    # I
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "orientation"    # I
    .param p5, "transit"    # I
    .param p6, "containingFrame"    # Landroid/graphics/Rect;
    .param p7, "contentInsets"    # Landroid/graphics/Rect;
    .param p8, "isFixedOrientation"    # Z
    .param p9, "rotation"    # I

    .prologue
    .line 897
    move-object/from16 v0, p0

    iget v0, v0, mNextAppTransitionStartWidth:I

    move/from16 v18, v0

    .line 898
    .local v18, "thumbWidthI":I
    if-lez v18, :cond_28

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v17, v0

    .line 899
    .local v17, "thumbWidth":F
    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, mNextAppTransitionStartHeight:I

    move/from16 v16, v0

    .line 900
    .local v16, "thumbHeightI":I
    if-lez v16, :cond_2b

    move/from16 v0, v16

    int-to-float v15, v0

    .line 903
    .local v15, "thumbHeight":F
    :goto_18
    const/high16 v2, 0x3f800000    # 1.0f

    .line 904
    .local v2, "scale":F
    const/4 v13, 0x0

    .line 907
    .local v13, "scaledTopDecor":I
    const/4 v11, 0x0

    .line 908
    .local v11, "clipRectAdjustPivotX":I
    const/4 v12, 0x0

    .line 911
    .local v12, "clipRectAdjustPivotY":I
    packed-switch p1, :pswitch_data_2a4

    .line 1055
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Invalid thumbnail transition state"

    invoke-direct {v3, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 898
    .end local v2    # "scale":F
    .end local v11    # "clipRectAdjustPivotX":I
    .end local v12    # "clipRectAdjustPivotY":I
    .end local v13    # "scaledTopDecor":I
    .end local v15    # "thumbHeight":F
    .end local v16    # "thumbHeightI":I
    .end local v17    # "thumbWidth":F
    :cond_28
    const/high16 v17, 0x3f800000    # 1.0f

    goto :goto_d

    .line 900
    .restart local v16    # "thumbHeightI":I
    .restart local v17    # "thumbWidth":F
    :cond_2b
    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_18

    .line 914
    .restart local v2    # "scale":F
    .restart local v11    # "clipRectAdjustPivotX":I
    .restart local v12    # "clipRectAdjustPivotY":I
    .restart local v13    # "scaledTopDecor":I
    .restart local v15    # "thumbHeight":F
    :pswitch_2e
    const/16 v21, 0x0

    .line 915
    .local v21, "unscaledThumbWidth":I
    const/16 v20, 0x0

    .line 916
    .local v20, "unscaledThumbHeight":I
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_115

    .line 918
    move/from16 v0, p2

    int-to-float v3, v0

    div-float v2, v17, v3

    .line 919
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v13, v3

    .line 920
    div-float v3, v15, v2

    float-to-int v0, v3

    move/from16 v20, v0

    .line 921
    move-object/from16 v0, p0

    iget-object v3, v0, mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 924
    if-eqz p8, :cond_67

    .line 925
    move-object/from16 v0, p0

    iget-object v3, v0, mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 926
    move-object/from16 v0, p0

    iget-object v3, v0, mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iput v5, v3, Landroid/graphics/Rect;->right:I

    .line 930
    :cond_67
    move-object/from16 v0, p0

    iget-object v3, v0, mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, mTmpFromClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v5, v5, v20

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 931
    move-object/from16 v0, p0

    iget-object v3, v0, mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 943
    :goto_7e
    move-object/from16 v0, p0

    iget-object v3, v0, mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 945
    move-object/from16 v0, p0

    iget-object v3, v0, mNextAppTransitionInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 948
    if-eqz p8, :cond_9d

    .line 949
    const/4 v3, 0x2

    move/from16 v0, p9

    if-ne v0, v3, :cond_151

    .line 950
    sub-int v3, p3, v20

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v12, v3

    .line 957
    :cond_9d
    :goto_9d
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, mNextAppTransitionStartX:I

    sub-int/2addr v6, v11

    invoke-static {v6, v2}, computePivot(IF)F

    move-result v6

    move-object/from16 v0, p0

    iget v9, v0, mNextAppTransitionStartY:I

    sub-int/2addr v9, v12

    invoke-static {v9, v2}, computePivot(IF)F

    move-result v7

    move v4, v2

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 960
    .local v1, "scaleAnim":Landroid/view/animation/Animation;
    new-instance v10, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v10, v3, v5}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 961
    .local v10, "clipAnim":Landroid/view/animation/Animation;
    new-instance v19, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v5, 0x0

    neg-int v6, v13

    int-to-float v6, v6

    const/4 v9, 0x0

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v5, v6, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 963
    .local v19, "translateAnim":Landroid/view/animation/Animation;
    new-instance v14, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v14, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 964
    .local v14, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v14, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 965
    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 966
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 967
    move-object v4, v14

    .line 1058
    .end local v1    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v10    # "clipAnim":Landroid/view/animation/Animation;
    .end local v14    # "set":Landroid/view/animation/AnimationSet;
    .end local v19    # "translateAnim":Landroid/view/animation/Animation;
    .end local v20    # "unscaledThumbHeight":I
    .end local v21    # "unscaledThumbWidth":I
    .local v4, "a":Landroid/view/animation/Animation;
    :goto_e4
    const/16 v3, 0x150

    const/16 v5, 0x150

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1061
    .local v7, "duration":I
    move-object/from16 v0, p0

    iget-object v3, v0, mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    if-eqz v3, :cond_100

    .line 1062
    const/16 v3, 0x1b1

    const/16 v5, 0xe9

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v5, 0x1b1

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1068
    :cond_100
    move-object/from16 v0, p0

    iget-object v3, v0, mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    if-nez v3, :cond_29e

    move-object/from16 v0, p0

    iget-object v8, v0, mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    .local v8, "interpolator":Landroid/view/animation/Interpolator;
    :goto_10a
    move-object/from16 v3, p0

    move/from16 v5, p2

    move/from16 v6, p3

    .line 1071
    invoke-virtual/range {v3 .. v8}, prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    .line 934
    .end local v4    # "a":Landroid/view/animation/Animation;
    .end local v7    # "duration":I
    .end local v8    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v20    # "unscaledThumbHeight":I
    .restart local v21    # "unscaledThumbWidth":I
    :cond_115
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v3, p3, v3

    int-to-float v3, v3

    div-float v2, v15, v3

    .line 935
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v13, v3

    .line 936
    div-float v3, v17, v2

    float-to-int v0, v3

    move/from16 v21, v0

    .line 937
    div-float v3, v15, v2

    float-to-int v0, v3

    move/from16 v20, v0

    .line 938
    move-object/from16 v0, p0

    iget-object v3, v0, mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 939
    move-object/from16 v0, p0

    iget-object v3, v0, mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, mTmpFromClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int v5, v5, v21

    iput v5, v3, Landroid/graphics/Rect;->right:I

    .line 940
    move-object/from16 v0, p0

    iget-object v3, v0, mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_7e

    .line 951
    :cond_151
    const/4 v3, 0x3

    move/from16 v0, p9

    if-ne v0, v3, :cond_9d

    .line 952
    sub-int v3, p2, v21

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v11, v3

    goto/16 :goto_9d

    .line 972
    .end local v20    # "unscaledThumbHeight":I
    .end local v21    # "unscaledThumbWidth":I
    :pswitch_15d
    const/16 v3, 0xe

    move/from16 v0, p5

    if-ne v0, v3, :cond_16d

    .line 975
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_e4

    .line 977
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_16d
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 979
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_e4

    .line 983
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_178
    const/16 v3, 0xe

    move/from16 v0, p5

    if-ne v0, v3, :cond_188

    .line 986
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_e4

    .line 988
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_188
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 990
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_e4

    .line 993
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_193
    const/16 v21, 0x0

    .line 994
    .restart local v21    # "unscaledThumbWidth":I
    const/16 v20, 0x0

    .line 996
    .restart local v20    # "unscaledThumbHeight":I
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_256

    .line 998
    move/from16 v0, p2

    int-to-float v3, v0

    div-float v2, v17, v3

    .line 999
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v13, v3

    .line 1000
    div-float v3, v15, v2

    float-to-int v0, v3

    move/from16 v20, v0

    .line 1001
    move-object/from16 v0, p0

    iget-object v3, v0, mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1002
    move-object/from16 v0, p0

    iget-object v3, v0, mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1005
    if-eqz p8, :cond_1d5

    .line 1006
    move-object/from16 v0, p0

    iget-object v3, v0, mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 1007
    move-object/from16 v0, p0

    iget-object v3, v0, mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    iput v5, v3, Landroid/graphics/Rect;->right:I

    .line 1011
    :cond_1d5
    move-object/from16 v0, p0

    iget-object v3, v0, mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, mTmpToClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int v5, v5, v20

    move-object/from16 v0, p7

    iget v6, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iput v5, v3, Landroid/graphics/Rect;->bottom:I

    .line 1024
    :goto_1e8
    move-object/from16 v0, p0

    iget-object v3, v0, mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iput v5, v3, Landroid/graphics/Rect;->top:I

    .line 1026
    move-object/from16 v0, p0

    iget-object v3, v0, mNextAppTransitionInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1029
    if-eqz p8, :cond_207

    .line 1030
    const/4 v3, 0x2

    move/from16 v0, p9

    if-ne v0, v3, :cond_292

    .line 1031
    sub-int v3, p3, v20

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v12, v3

    .line 1038
    :cond_207
    :goto_207
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, mNextAppTransitionStartX:I

    sub-int/2addr v3, v11

    invoke-static {v3, v2}, computePivot(IF)F

    move-result v8

    move-object/from16 v0, p0

    iget v3, v0, mNextAppTransitionStartY:I

    sub-int/2addr v3, v12

    invoke-static {v3, v2}, computePivot(IF)F

    move-result v9

    move-object v3, v1

    move v5, v2

    move v7, v2

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1042
    .restart local v1    # "scaleAnim":Landroid/view/animation/Animation;
    new-instance v10, Landroid/view/animation/ClipRectAnimation;

    move-object/from16 v0, p0

    iget-object v3, v0, mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v10, v3, v5}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1043
    .restart local v10    # "clipAnim":Landroid/view/animation/Animation;
    new-instance v19, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    neg-int v9, v13

    int-to-float v9, v9

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v5, v6, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1045
    .restart local v19    # "translateAnim":Landroid/view/animation/Animation;
    new-instance v14, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v14, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1046
    .restart local v14    # "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v14, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1047
    invoke-virtual {v14, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1048
    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1050
    move-object v4, v14

    .line 1051
    .restart local v4    # "a":Landroid/view/animation/Animation;
    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    goto/16 :goto_e4

    .line 1015
    .end local v1    # "scaleAnim":Landroid/view/animation/Animation;
    .end local v4    # "a":Landroid/view/animation/Animation;
    .end local v10    # "clipAnim":Landroid/view/animation/Animation;
    .end local v14    # "set":Landroid/view/animation/AnimationSet;
    .end local v19    # "translateAnim":Landroid/view/animation/Animation;
    :cond_256
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v3, p3, v3

    int-to-float v3, v3

    div-float v2, v15, v3

    .line 1016
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v13, v3

    .line 1017
    div-float v3, v17, v2

    float-to-int v0, v3

    move/from16 v21, v0

    .line 1018
    div-float v3, v15, v2

    float-to-int v0, v3

    move/from16 v20, v0

    .line 1019
    move-object/from16 v0, p0

    iget-object v3, v0, mTmpFromClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1020
    move-object/from16 v0, p0

    iget-object v3, v0, mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1021
    move-object/from16 v0, p0

    iget-object v3, v0, mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, mTmpToClipRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int v5, v5, v21

    iput v5, v3, Landroid/graphics/Rect;->right:I

    goto/16 :goto_1e8

    .line 1032
    :cond_292
    const/4 v3, 0x3

    move/from16 v0, p9

    if-ne v0, v3, :cond_207

    .line 1033
    sub-int v3, p2, v21

    int-to-float v3, v3

    mul-float/2addr v3, v2

    float-to-int v11, v3

    goto/16 :goto_207

    .line 1068
    .end local v20    # "unscaledThumbHeight":I
    .end local v21    # "unscaledThumbWidth":I
    .restart local v4    # "a":Landroid/view/animation/Animation;
    .restart local v7    # "duration":I
    :cond_29e
    move-object/from16 v0, p0

    iget-object v8, v0, mSineInOut90Interpolator:Landroid/view/animation/Interpolator;

    goto/16 :goto_10a

    .line 911
    :pswitch_data_2a4
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_15d
        :pswitch_178
        :pswitch_193
    .end packed-switch
.end method

.method createThumbnailAspectScaleAnimationLocked(IIII)Landroid/view/animation/Animation;
    .registers 29
    .param p1, "appWidth"    # I
    .param p2, "appHeight"    # I
    .param p3, "deviceWidth"    # I
    .param p4, "transit"    # I

    .prologue
    .line 817
    move-object/from16 v0, p0

    iget-object v3, v0, mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .line 818
    .local v19, "thumbWidthI":I
    if-lez v19, :cond_cc

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v18, v0

    .line 819
    .local v18, "thumbWidth":F
    :goto_f
    move-object/from16 v0, p0

    iget-object v3, v0, mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    .line 820
    .local v17, "thumbHeightI":I
    if-lez v17, :cond_d0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    .line 822
    .local v16, "thumbHeight":F
    :goto_1e
    move/from16 v0, p3

    int-to-float v3, v0

    div-float v4, v3, v18

    .line 823
    .local v4, "scaleW":F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v23, v0

    .line 824
    .local v23, "unscaledWidth":F
    mul-float v21, v16, v4

    .line 825
    .local v21, "unscaledHeight":F
    move-object/from16 v0, p0

    iget v3, v0, mNextAppTransitionStartY:I

    int-to-float v0, v3

    move/from16 v22, v0

    .line 827
    .local v22, "unscaledStartY":F
    move-object/from16 v0, p0

    iget-object v3, v0, mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    if-nez v3, :cond_d4

    const/16 v13, 0x150

    .line 829
    .local v13, "duration":I
    :goto_39
    move-object/from16 v0, p0

    iget-object v3, v0, mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    if-nez v3, :cond_d8

    const/16 v12, 0x150

    .line 834
    .local v12, "alphaduration":I
    :goto_41
    move-object/from16 v0, p0

    iget-object v3, v0, mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    if-nez v3, :cond_e6

    move-object/from16 v0, p0

    iget-object v14, v0, mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    .line 838
    .local v14, "scaleTranslateInterpolator":Landroid/view/animation/Interpolator;
    :goto_4b
    move-object/from16 v0, p0

    iget-boolean v3, v0, mNextAppTransitionScaleUp:Z

    if-eqz v3, :cond_ec

    .line 840
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v7, v0, mNextAppTransitionStartX:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v18, v8

    add-float/2addr v7, v8

    move-object/from16 v0, p0

    iget v8, v0, mNextAppTransitionStartY:I

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v16, v9

    add-float/2addr v8, v9

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 843
    .local v2, "scale":Landroid/view/animation/Animation;
    invoke-virtual {v2, v14}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 844
    int-to-long v8, v13

    invoke-virtual {v2, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 845
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-direct {v11, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 846
    .local v11, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v3, v0, mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 847
    int-to-long v8, v12

    invoke-virtual {v11, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 848
    new-instance v20, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move/from16 v0, v22

    neg-float v8, v0

    move-object/from16 v0, p0

    iget-object v9, v0, mNextAppTransitionInsets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v5, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 850
    .local v20, "translate":Landroid/view/animation/Animation;
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 851
    int-to-long v8, v13

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 854
    new-instance v15, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v15, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 855
    .local v15, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v15, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 856
    invoke-virtual {v15, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 857
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 858
    move-object v6, v15

    .line 885
    .local v6, "a":Landroid/view/animation/Animation;
    :goto_bc
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, mTouchResponseInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v5, p0

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-virtual/range {v5 .. v10}, prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v3

    return-object v3

    .line 818
    .end local v2    # "scale":Landroid/view/animation/Animation;
    .end local v4    # "scaleW":F
    .end local v6    # "a":Landroid/view/animation/Animation;
    .end local v11    # "alpha":Landroid/view/animation/Animation;
    .end local v12    # "alphaduration":I
    .end local v13    # "duration":I
    .end local v14    # "scaleTranslateInterpolator":Landroid/view/animation/Interpolator;
    .end local v15    # "set":Landroid/view/animation/AnimationSet;
    .end local v16    # "thumbHeight":F
    .end local v17    # "thumbHeightI":I
    .end local v18    # "thumbWidth":F
    .end local v20    # "translate":Landroid/view/animation/Animation;
    .end local v21    # "unscaledHeight":F
    .end local v22    # "unscaledStartY":F
    .end local v23    # "unscaledWidth":F
    :cond_cc
    const/high16 v18, 0x3f800000    # 1.0f

    goto/16 :goto_f

    .line 820
    .restart local v17    # "thumbHeightI":I
    .restart local v18    # "thumbWidth":F
    :cond_d0
    const/high16 v16, 0x3f800000    # 1.0f

    goto/16 :goto_1e

    .line 827
    .restart local v4    # "scaleW":F
    .restart local v16    # "thumbHeight":F
    .restart local v21    # "unscaledHeight":F
    .restart local v22    # "unscaledStartY":F
    .restart local v23    # "unscaledWidth":F
    :cond_d4
    const/16 v13, 0x1b1

    goto/16 :goto_39

    .line 829
    .restart local v13    # "duration":I
    :cond_d8
    move-object/from16 v0, p0

    iget-boolean v3, v0, mNextAppTransitionScaleUp:Z

    if-eqz v3, :cond_e2

    const/16 v12, 0xe9

    goto/16 :goto_41

    :cond_e2
    const/16 v12, 0xe9

    goto/16 :goto_41

    .line 834
    .restart local v12    # "alphaduration":I
    :cond_e6
    move-object/from16 v0, p0

    iget-object v14, v0, mSineInOut90Interpolator:Landroid/view/animation/Interpolator;

    goto/16 :goto_4b

    .line 861
    .restart local v14    # "scaleTranslateInterpolator":Landroid/view/animation/Interpolator;
    :cond_ec
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v3, v0, mNextAppTransitionStartX:I

    int-to-float v3, v3

    const/high16 v8, 0x40000000    # 2.0f

    div-float v8, v18, v8

    add-float/2addr v8, v3

    move-object/from16 v0, p0

    iget v3, v0, mNextAppTransitionStartY:I

    int-to-float v3, v3

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v16, v9

    add-float/2addr v9, v3

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 864
    .restart local v2    # "scale":Landroid/view/animation/Animation;
    invoke-virtual {v2, v14}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 865
    int-to-long v8, v13

    invoke-virtual {v2, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 866
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/4 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v11, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 867
    .restart local v11    # "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v3, v0, mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 868
    int-to-long v8, v12

    invoke-virtual {v11, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 869
    move-object/from16 v0, p0

    iget-object v3, v0, mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    if-eqz v3, :cond_131

    .line 870
    const-wide/16 v8, 0xc8

    invoke-virtual {v11, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 872
    :cond_131
    new-instance v20, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move/from16 v0, v22

    neg-float v7, v0

    move-object/from16 v0, p0

    iget-object v8, v0, mNextAppTransitionInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, v20

    invoke-direct {v0, v3, v5, v7, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 874
    .restart local v20    # "translate":Landroid/view/animation/Animation;
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 875
    int-to-long v8, v13

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 878
    new-instance v15, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v15, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 879
    .restart local v15    # "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v15, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 880
    invoke-virtual {v15, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 881
    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 882
    move-object v6, v15

    .restart local v6    # "a":Landroid/view/animation/Animation;
    goto/16 :goto_bc
.end method

.method createThumbnailEnterExitAnimationLocked(IIII)Landroid/view/animation/Animation;
    .registers 26
    .param p1, "thumbTransitState"    # I
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "transit"    # I

    .prologue
    .line 1122
    move-object/from16 v0, p0

    iget-object v6, v0, mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    .line 1123
    .local v20, "thumbWidthI":I
    if-lez v20, :cond_29

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v19, v0

    .line 1124
    .local v19, "thumbWidth":F
    :goto_f
    move-object/from16 v0, p0

    iget-object v6, v0, mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 1125
    .local v18, "thumbHeightI":I
    if-lez v18, :cond_2c

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v17, v0

    .line 1127
    .local v17, "thumbHeight":F
    :goto_1e
    packed-switch p1, :pswitch_data_ca

    .line 1174
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v9, "Invalid thumbnail transition state"

    invoke-direct {v6, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1123
    .end local v17    # "thumbHeight":F
    .end local v18    # "thumbHeightI":I
    .end local v19    # "thumbWidth":F
    :cond_29
    const/high16 v19, 0x3f800000    # 1.0f

    goto :goto_f

    .line 1125
    .restart local v18    # "thumbHeightI":I
    .restart local v19    # "thumbWidth":F
    :cond_2c
    const/high16 v17, 0x3f800000    # 1.0f

    goto :goto_1e

    .line 1130
    .restart local v17    # "thumbHeight":F
    :pswitch_2f
    move/from16 v0, p2

    int-to-float v6, v0

    div-float v5, v19, v6

    .line 1131
    .local v5, "scaleW":F
    move/from16 v0, p3

    int-to-float v6, v0

    div-float v7, v17, v6

    .line 1132
    .local v7, "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v9, v0, mNextAppTransitionStartX:I

    invoke-static {v9, v5}, computePivot(IF)F

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, mNextAppTransitionStartY:I

    invoke-static {v10, v7}, computePivot(IF)F

    move-result v10

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1177
    .end local v5    # "scaleW":F
    .end local v7    # "scaleH":F
    .local v4, "a":Landroid/view/animation/Animation;
    :goto_52
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v4, v1, v2, v3}, prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object v6

    return-object v6

    .line 1139
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_5f
    const/16 v6, 0xe

    move/from16 v0, p4

    if-ne v0, v6, :cond_6e

    .line 1143
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v4, v6, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_52

    .line 1146
    .end local v4    # "a":Landroid/view/animation/Animation;
    :cond_6e
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v4, v6, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1148
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_52

    .line 1153
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_78
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v4, v6, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1154
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_52

    .line 1158
    .end local v4    # "a":Landroid/view/animation/Animation;
    :pswitch_82
    move/from16 v0, p2

    int-to-float v6, v0

    div-float v5, v19, v6

    .line 1159
    .restart local v5    # "scaleW":F
    move/from16 v0, p3

    int-to-float v6, v0

    div-float v7, v17, v6

    .line 1160
    .restart local v7    # "scaleH":F
    new-instance v8, Landroid/view/animation/ScaleAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v6, v0, mNextAppTransitionStartX:I

    invoke-static {v6, v5}, computePivot(IF)F

    move-result v13

    move-object/from16 v0, p0

    iget v6, v0, mNextAppTransitionStartY:I

    invoke-static {v6, v7}, computePivot(IF)F

    move-result v14

    move v10, v5

    move v12, v7

    invoke-direct/range {v8 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1164
    .local v8, "scale":Landroid/view/animation/Animation;
    new-instance v15, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v15, v6, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1166
    .local v15, "alpha":Landroid/view/animation/Animation;
    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1167
    .local v16, "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1168
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1169
    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    .line 1170
    move-object/from16 v4, v16

    .line 1171
    .restart local v4    # "a":Landroid/view/animation/Animation;
    goto :goto_52

    .line 1127
    :pswitch_data_ca
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_5f
        :pswitch_78
        :pswitch_82
    .end packed-switch
.end method

.method createThumbnailScaleAnimationLocked(III)Landroid/view/animation/Animation;
    .registers 23
    .param p1, "appWidth"    # I
    .param p2, "appHeight"    # I
    .param p3, "transit"    # I

    .prologue
    .line 1081
    move-object/from16 v0, p0

    iget-object v7, v0, mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    .line 1082
    .local v17, "thumbWidthI":I
    if-lez v17, :cond_79

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    .line 1083
    .local v16, "thumbWidth":F
    :goto_f
    move-object/from16 v0, p0

    iget-object v7, v0, mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    .line 1084
    .local v15, "thumbHeightI":I
    if-lez v15, :cond_7c

    int-to-float v14, v15

    .line 1086
    .local v14, "thumbHeight":F
    :goto_1a
    move-object/from16 v0, p0

    iget-boolean v7, v0, mNextAppTransitionScaleUp:Z

    if-eqz v7, :cond_7f

    .line 1088
    move/from16 v0, p1

    int-to-float v7, v0

    div-float v6, v7, v16

    .line 1089
    .local v6, "scaleW":F
    move/from16 v0, p2

    int-to-float v7, v0

    div-float v8, v7, v14

    .line 1090
    .local v8, "scaleH":F
    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v9, v0, mNextAppTransitionStartX:I

    const/high16 v10, 0x3f800000    # 1.0f

    div-float/2addr v10, v6

    invoke-static {v9, v10}, computePivot(IF)F

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, mNextAppTransitionStartY:I

    const/high16 v11, 0x3f800000    # 1.0f

    div-float/2addr v11, v8

    invoke-static {v10, v11}, computePivot(IF)F

    move-result v10

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 1093
    .local v4, "scale":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v7, v0, mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1095
    new-instance v12, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-direct {v12, v7, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1096
    .local v12, "alpha":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v7, v0, mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v12, v7}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1099
    new-instance v13, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v13, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1100
    .local v13, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v13, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1101
    invoke-virtual {v13, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1102
    move-object v5, v13

    .line 1112
    .end local v4    # "scale":Landroid/view/animation/Animation;
    .end local v12    # "alpha":Landroid/view/animation/Animation;
    .end local v13    # "set":Landroid/view/animation/AnimationSet;
    .local v5, "a":Landroid/view/animation/Animation;
    :goto_6c
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v5, v1, v2, v3}, prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object v7

    return-object v7

    .line 1082
    .end local v5    # "a":Landroid/view/animation/Animation;
    .end local v6    # "scaleW":F
    .end local v8    # "scaleH":F
    .end local v14    # "thumbHeight":F
    .end local v15    # "thumbHeightI":I
    .end local v16    # "thumbWidth":F
    :cond_79
    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_f

    .line 1084
    .restart local v15    # "thumbHeightI":I
    .restart local v16    # "thumbWidth":F
    :cond_7c
    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_1a

    .line 1105
    .restart local v14    # "thumbHeight":F
    :cond_7f
    move/from16 v0, p1

    int-to-float v7, v0

    div-float v6, v7, v16

    .line 1106
    .restart local v6    # "scaleW":F
    move/from16 v0, p2

    int-to-float v7, v0

    div-float v8, v7, v14

    .line 1107
    .restart local v8    # "scaleH":F
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v10, v0, mNextAppTransitionStartX:I

    const/high16 v11, 0x3f800000    # 1.0f

    div-float/2addr v11, v6

    invoke-static {v10, v11}, computePivot(IF)F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, mNextAppTransitionStartY:I

    const/high16 v18, 0x3f800000    # 1.0f

    div-float v18, v18, v8

    move/from16 v0, v18

    invoke-static {v11, v0}, computePivot(IF)F

    move-result v11

    invoke-direct/range {v5 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .restart local v5    # "a":Landroid/view/animation/Animation;
    goto :goto_6c
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 1777
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1778
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAppTransitionState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, appStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1779
    iget v0, p0, mNextAppTransitionType:I

    if-eqz v0, :cond_2a

    .line 1780
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1781
    invoke-direct {p0}, transitTypeToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1783
    :cond_2a
    iget v0, p0, mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_120

    .line 1834
    :goto_2f
    iget-object v0, p0, mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_41

    .line 1835
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionCallback="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1836
    iget-object v0, p0, mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1839
    :cond_41
    iget-object v0, p0, mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_53

    .line 1840
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionCallback2="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1841
    iget-object v0, p0, mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1844
    :cond_53
    return-void

    .line 1785
    :pswitch_54
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1786
    iget-object v0, p0, mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1787
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionEnter=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1788
    iget v0, p0, mNextAppTransitionEnter:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1789
    const-string v0, " mNextAppTransitionExit=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1790
    iget v0, p0, mNextAppTransitionExit:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2f

    .line 1793
    :pswitch_83
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1794
    iget-object v0, p0, mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1795
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionInPlace=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1796
    iget v0, p0, mNextAppTransitionInPlace:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2f

    .line 1799
    :pswitch_a4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1800
    iget v0, p0, mNextAppTransitionStartX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1801
    const-string v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1802
    iget v0, p0, mNextAppTransitionStartY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1803
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionStartWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1804
    iget v0, p0, mNextAppTransitionStartWidth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1805
    const-string v0, " mNextAppTransitionStartHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1806
    iget v0, p0, mNextAppTransitionStartHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_2f

    .line 1812
    :pswitch_d6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionThumbnail="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1813
    iget-object v0, p0, mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1814
    const-string v0, " mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1815
    iget v0, p0, mNextAppTransitionStartX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1816
    const-string v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1817
    iget v0, p0, mNextAppTransitionStartY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1818
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionStartWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1819
    iget v0, p0, mNextAppTransitionStartWidth:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1820
    const-string v0, " mNextAppTransitionStartHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1821
    iget v0, p0, mNextAppTransitionStartHeight:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1822
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionScaleUp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1823
    iget-boolean v0, p0, mNextAppTransitionScaleUp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto/16 :goto_2f

    .line 1783
    :pswitch_data_120
    .packed-switch 0x1
        :pswitch_54
        :pswitch_a4
        :pswitch_d6
        :pswitch_d6
        :pswitch_d6
        :pswitch_d6
        :pswitch_83
    .end packed-switch
.end method

.method freeze()V
    .registers 2

    .prologue
    .line 445
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, setAppTransition(I)V

    .line 446
    invoke-virtual {p0}, clear()V

    .line 447
    invoke-virtual {p0}, setReady()V

    .line 448
    invoke-direct {p0}, notifyAppTransitionCancelledLocked()V

    .line 449
    return-void
.end method

.method getAppTransition()I
    .registers 2

    .prologue
    .line 357
    iget v0, p0, mNextAppTransition:I

    return v0
.end method

.method getDisplayid()I
    .registers 2

    .prologue
    .line 1856
    iget v0, p0, mDisplayId:I

    return v0
.end method

.method public getDualScreenAppTransition()I
    .registers 3

    .prologue
    .line 1885
    iget v0, p0, mNextAppTransitionType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_9

    .line 1886
    const/16 v0, 0xc9

    .line 1890
    :goto_8
    return v0

    .line 1887
    :cond_9
    iget v0, p0, mNextAppTransitionType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_12

    .line 1888
    const/16 v0, 0xca

    goto :goto_8

    .line 1890
    :cond_12
    const/4 v0, 0x0

    goto :goto_8
.end method

.method getNextAppTransitionThumbnail()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 394
    iget-object v0, p0, mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getStartingX()I
    .registers 2

    .prologue
    .line 409
    iget v0, p0, mNextAppTransitionStartX:I

    return v0
.end method

.method getStartingY()I
    .registers 2

    .prologue
    .line 413
    iget v0, p0, mNextAppTransitionStartY:I

    return v0
.end method

.method getThumbnailTransitionState(Z)I
    .registers 3
    .param p1, "enter"    # Z

    .prologue
    .line 795
    if-eqz p1, :cond_a

    .line 796
    iget-boolean v0, p0, mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_8

    .line 797
    const/4 v0, 0x0

    .line 805
    :goto_7
    return v0

    .line 799
    :cond_8
    const/4 v0, 0x2

    goto :goto_7

    .line 802
    :cond_a
    iget-boolean v0, p0, mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_10

    .line 803
    const/4 v0, 0x1

    goto :goto_7

    .line 805
    :cond_10
    const/4 v0, 0x3

    goto :goto_7
.end method

.method goodToGo(Lcom/android/server/wm/AppWindowAnimator;Lcom/android/server/wm/AppWindowAnimator;)V
    .registers 7
    .param p1, "openingAppAnimator"    # Lcom/android/server/wm/AppWindowAnimator;
    .param p2, "closingAppAnimator"    # Lcom/android/server/wm/AppWindowAnimator;

    .prologue
    const/4 v0, 0x0

    .line 426
    const/4 v1, -0x1

    iput v1, p0, mNextAppTransition:I

    .line 427
    const/4 v1, 0x2

    iput v1, p0, mAppTransitionState:I

    .line 429
    const/4 v1, 0x0

    iput-boolean v1, p0, mAppliedAlphaInsteadOfScaleAnimation:Z

    .line 431
    if-eqz p1, :cond_24

    iget-object v1, p1, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object v3, v1

    :goto_11
    if-eqz p2, :cond_26

    iget-object v1, p2, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object v2, v1

    :goto_18
    if-eqz p1, :cond_28

    iget-object v1, p1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    :goto_1c
    if-eqz p2, :cond_20

    iget-object v0, p2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    :cond_20
    invoke-direct {p0, v3, v2, v1, v0}, notifyAppTransitionStartingLocked(Landroid/os/IBinder;Landroid/os/IBinder;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    .line 436
    return-void

    :cond_24
    move-object v3, v0

    .line 431
    goto :goto_11

    :cond_26
    move-object v2, v0

    goto :goto_18

    :cond_28
    move-object v1, v0

    goto :goto_1c
.end method

.method public isAlphaAnimationAppliedInsteadOfScaleAnimation()Z
    .registers 2

    .prologue
    .line 1900
    iget-boolean v0, p0, mAppliedAlphaInsteadOfScaleAnimation:Z

    return v0
.end method

.method public isDualScreenAppTransitionType()Z
    .registers 3

    .prologue
    .line 1881
    iget v0, p0, mNextAppTransitionType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_c

    iget v0, p0, mNextAppTransitionType:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isIdle()Z
    .registers 2

    .prologue
    .line 370
    iget v0, p0, mAppTransitionState:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isMultiWindowTransitionSet()Z
    .registers 2

    .prologue
    .line 338
    iget v0, p0, mNextAppTransition:I

    packed-switch v0, :pswitch_data_a

    .line 344
    const/4 v0, 0x0

    :goto_6
    return v0

    .line 342
    :pswitch_7
    const/4 v0, 0x1

    goto :goto_6

    .line 338
    nop

    :pswitch_data_a
    .packed-switch 0x64
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method isNextThumbnailTransitionAspectScaled()Z
    .registers 3

    .prologue
    .line 399
    iget v0, p0, mNextAppTransitionType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_a

    iget v0, p0, mNextAppTransitionType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method isNextThumbnailTransitionScaleUp()Z
    .registers 2

    .prologue
    .line 405
    iget-boolean v0, p0, mNextAppTransitionScaleUp:Z

    return v0
.end method

.method isReady()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 365
    iget v1, p0, mAppTransitionState:I

    if-eq v1, v0, :cond_a

    iget v1, p0, mAppTransitionState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method isRunning()Z
    .registers 3

    .prologue
    .line 378
    iget v0, p0, mAppTransitionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isTimeout()Z
    .registers 3

    .prologue
    .line 386
    iget v0, p0, mAppTransitionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method isTransitionEqual(I)Z
    .registers 3
    .param p1, "transit"    # I

    .prologue
    .line 353
    iget v0, p0, mNextAppTransition:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isTransitionNone()Z
    .registers 2

    .prologue
    .line 349
    iget v0, p0, mNextAppTransition:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isTransitionSet()Z
    .registers 3

    .prologue
    .line 333
    iget v0, p0, mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;IZIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZI)Landroid/view/animation/Animation;
    .registers 32
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "transit"    # I
    .param p3, "enter"    # Z
    .param p4, "appWidth"    # I
    .param p5, "appHeight"    # I
    .param p6, "orientation"    # I
    .param p7, "containingFrame"    # Landroid/graphics/Rect;
    .param p8, "contentInsets"    # Landroid/graphics/Rect;
    .param p9, "appFrame"    # Landroid/graphics/Rect;
    .param p10, "isFullScreen"    # Z
    .param p11, "isVoiceInteraction"    # Z
    .param p12, "isFixedOrientation"    # Z
    .param p13, "rotation"    # I

    .prologue
    .line 1202
    const/4 v15, 0x0

    .line 1221
    .local v15, "a":Landroid/view/animation/Animation;
    if-eqz p11, :cond_70

    const/4 v5, 0x6

    move/from16 v0, p2

    if-eq v0, v5, :cond_14

    const/16 v5, 0x8

    move/from16 v0, p2

    if-eq v0, v5, :cond_14

    const/16 v5, 0xa

    move/from16 v0, p2

    if-ne v0, v5, :cond_70

    .line 1224
    :cond_14
    if-eqz p3, :cond_6c

    const v5, 0x10a00b7

    :goto_19
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v15

    .line 1227
    sget-boolean v5, DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_29

    sget-boolean v5, DEBUG_ANIM:Z

    if-eqz v5, :cond_6a

    :cond_29
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyAnimation voice: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p2 .. p2}, appTransitionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isEntrance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    :goto_6a
    move-object v5, v15

    .line 1414
    :goto_6b
    return-object v5

    .line 1224
    :cond_6c
    const v5, 0x10a00b8

    goto :goto_19

    .line 1231
    :cond_70
    if-eqz p11, :cond_de

    const/4 v5, 0x7

    move/from16 v0, p2

    if-eq v0, v5, :cond_83

    const/16 v5, 0x9

    move/from16 v0, p2

    if-eq v0, v5, :cond_83

    const/16 v5, 0xb

    move/from16 v0, p2

    if-ne v0, v5, :cond_de

    .line 1234
    :cond_83
    if-eqz p3, :cond_da

    const v5, 0x10a00b5

    :goto_88
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5}, loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v15

    .line 1237
    sget-boolean v5, DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_98

    sget-boolean v5, DEBUG_ANIM:Z

    if-eqz v5, :cond_6a

    :cond_98
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyAnimation voice: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p2 .. p2}, appTransitionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isEntrance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 1234
    :cond_da
    const v5, 0x10a00b6

    goto :goto_88

    .line 1241
    :cond_de
    move-object/from16 v0, p0

    iget v5, v0, mNextAppTransitionType:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_14b

    .line 1242
    move-object/from16 v0, p0

    iget-object v6, v0, mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz p3, :cond_146

    move-object/from16 v0, p0

    iget v5, v0, mNextAppTransitionEnter:I

    :goto_ef
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v15

    .line 1244
    sget-boolean v5, DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_fd

    sget-boolean v5, DEBUG_ANIM:Z

    if-eqz v5, :cond_6a

    :cond_fd
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyAnimation: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nextAppTransition=ANIM_CUSTOM"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p2 .. p2}, appTransitionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isEntrance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6a

    .line 1242
    :cond_146
    move-object/from16 v0, p0

    iget v5, v0, mNextAppTransitionExit:I

    goto :goto_ef

    .line 1249
    :cond_14b
    move-object/from16 v0, p0

    iget v5, v0, mNextAppTransitionType:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_1a5

    .line 1250
    move-object/from16 v0, p0

    iget-object v5, v0, mNextAppTransitionPackage:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, mNextAppTransitionInPlace:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v15

    .line 1251
    sget-boolean v5, DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_168

    sget-boolean v5, DEBUG_ANIM:Z

    if-eqz v5, :cond_6a

    :cond_168
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyAnimation: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nextAppTransition=ANIM_CUSTOM_IN_PLACE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p2 .. p2}, appTransitionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6a

    .line 1256
    :cond_1a5
    move-object/from16 v0, p0

    iget v5, v0, mNextAppTransitionType:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1f0

    .line 1257
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p9

    invoke-direct {v0, v1, v2, v3}, createClipRevealAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v15

    .line 1258
    sget-boolean v5, DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_1c1

    sget-boolean v5, DEBUG_ANIM:Z

    if-eqz v5, :cond_6a

    :cond_1c1
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyAnimation: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nextAppTransition=ANIM_CLIP_REVEAL"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6a

    .line 1264
    :cond_1f0
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, checkCocktailAppTransition(IZ)Z

    move-result v5

    if-eqz v5, :cond_20a

    .line 1265
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, createTransAnimationLocked(ZII)Landroid/view/animation/Animation;

    move-result-object v15

    goto/16 :goto_6a

    .line 1268
    :cond_20a
    move-object/from16 v0, p0

    iget v5, v0, mNextAppTransitionType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_270

    .line 1269
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, createScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;

    move-result-object v15

    .line 1270
    sget-boolean v5, DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_227

    sget-boolean v5, DEBUG_ANIM:Z

    if-eqz v5, :cond_6a

    :cond_227
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyAnimation: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nextAppTransition=ANIM_SCALE_UP"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p2 .. p2}, appTransitionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isEntrance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6a

    .line 1277
    :cond_270
    move-object/from16 v0, p0

    iget v5, v0, mNextAppTransitionType:I

    const/16 v6, 0x3e9

    if-ne v5, v6, :cond_288

    .line 1278
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-direct {v0, v1, v2, v3, v4}, createCustomScaleUpAnimationLocked(IZII)Landroid/view/animation/Animation;

    move-result-object v15

    goto/16 :goto_6a

    .line 1281
    :cond_288
    move-object/from16 v0, p0

    iget v5, v0, mNextAppTransitionType:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_296

    move-object/from16 v0, p0

    iget v5, v0, mNextAppTransitionType:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_320

    :cond_296
    move-object/from16 v0, p0

    iget-boolean v5, v0, mEasyOneHandRunning:Z

    if-nez v5, :cond_320

    .line 1283
    move-object/from16 v0, p0

    iget v5, v0, mNextAppTransitionType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_31b

    const/4 v5, 0x1

    :goto_2a4
    move-object/from16 v0, p0

    iput-boolean v5, v0, mNextAppTransitionScaleUp:Z

    .line 1285
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, getThumbnailTransitionState(Z)I

    move-result v5

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p2

    invoke-virtual {v0, v5, v1, v2, v3}, createThumbnailEnterExitAnimationLocked(IIII)Landroid/view/animation/Animation;

    move-result-object v15

    .line 1287
    sget-boolean v5, DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_2c4

    sget-boolean v5, DEBUG_ANIM:Z

    if-eqz v5, :cond_6a

    .line 1288
    :cond_2c4
    move-object/from16 v0, p0

    iget-boolean v5, v0, mNextAppTransitionScaleUp:Z

    if-eqz v5, :cond_31d

    const-string v17, "ANIM_THUMBNAIL_SCALE_UP"

    .line 1290
    .local v17, "animName":Ljava/lang/String;
    :goto_2cc
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyAnimation: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nextAppTransition="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p2 .. p2}, appTransitionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isEntrance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6a

    .line 1283
    .end local v17    # "animName":Ljava/lang/String;
    :cond_31b
    const/4 v5, 0x0

    goto :goto_2a4

    .line 1288
    :cond_31d
    const-string v17, "ANIM_THUMBNAIL_SCALE_DOWN"

    goto :goto_2cc

    .line 1295
    :cond_320
    move-object/from16 v0, p0

    iget v5, v0, mNextAppTransitionType:I

    const/4 v6, 0x5

    if-eq v5, v6, :cond_32e

    move-object/from16 v0, p0

    iget v5, v0, mNextAppTransitionType:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_3c3

    :cond_32e
    move-object/from16 v0, p0

    iget-boolean v5, v0, mEasyOneHandRunning:Z

    if-nez v5, :cond_3c3

    .line 1297
    move-object/from16 v0, p0

    iget v5, v0, mNextAppTransitionType:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_3bd

    const/4 v5, 0x1

    :goto_33c
    move-object/from16 v0, p0

    iput-boolean v5, v0, mNextAppTransitionScaleUp:Z

    .line 1299
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, getThumbnailTransitionState(Z)I

    move-result v6

    move-object/from16 v5, p0

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p2

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-virtual/range {v5 .. v14}, createAspectScaledThumbnailEnterExitAnimationLocked(IIIIILandroid/graphics/Rect;Landroid/graphics/Rect;ZI)Landroid/view/animation/Animation;

    move-result-object v15

    .line 1302
    sget-boolean v5, DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_366

    sget-boolean v5, DEBUG_ANIM:Z

    if-eqz v5, :cond_6a

    .line 1303
    :cond_366
    move-object/from16 v0, p0

    iget-boolean v5, v0, mNextAppTransitionScaleUp:Z

    if-eqz v5, :cond_3c0

    const-string v17, "ANIM_THUMBNAIL_ASPECT_SCALE_UP"

    .line 1305
    .restart local v17    # "animName":Ljava/lang/String;
    :goto_36e
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyAnimation: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nextAppTransition="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p2 .. p2}, appTransitionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isEntrance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6a

    .line 1297
    .end local v17    # "animName":Ljava/lang/String;
    :cond_3bd
    const/4 v5, 0x0

    goto/16 :goto_33c

    .line 1303
    :cond_3c0
    const-string v17, "ANIM_THUMBNAIL_ASPECT_SCALE_DOWN"

    goto :goto_36e

    .line 1312
    :cond_3c3
    const/16 v5, 0x12d

    move/from16 v0, p2

    if-ne v0, v5, :cond_422

    .line 1313
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Lcom/android/server/am/VirtualScreenManagerService;->createVirtualScreenAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v15

    .line 1314
    sget-boolean v5, DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_3db

    sget-boolean v5, DEBUG_ANIM:Z

    if-eqz v5, :cond_6a

    :cond_3db
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyAnimation: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " nextAppTransition=TRANSIT_VIRTUAL_SCREEN_TASK"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isEntrance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6a

    .line 1322
    :cond_422
    const/16 v16, 0x0

    .line 1323
    .local v16, "animAttr":I
    packed-switch p2, :pswitch_data_512

    .line 1382
    :goto_427
    packed-switch p2, :pswitch_data_52c

    .line 1398
    :goto_42a
    move-object/from16 v0, p0

    iget-boolean v5, v0, mEasyOneHandRunning:Z

    if-eqz v5, :cond_433

    .line 1399
    packed-switch p2, :pswitch_data_534

    .line 1406
    :cond_433
    if-eqz v16, :cond_50e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v15

    .line 1407
    :goto_43f
    sget-boolean v5, DEBUG_APP_TRANSITIONS:Z

    if-nez v5, :cond_447

    sget-boolean v5, DEBUG_ANIM:Z

    if-eqz v5, :cond_6a

    :cond_447
    const-string v5, "AppTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "applyAnimation: anim="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " animAttr=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transit="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p2 .. p2}, appTransitionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isEntrance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v7}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6a

    .line 1325
    :pswitch_498
    if-eqz p3, :cond_49d

    const/16 v16, 0x4

    .line 1328
    :goto_49c
    goto :goto_427

    .line 1325
    :cond_49d
    const/16 v16, 0x5

    goto :goto_49c

    .line 1330
    :pswitch_4a0
    if-eqz p3, :cond_4a5

    const/16 v16, 0x6

    .line 1333
    :goto_4a4
    goto :goto_427

    .line 1330
    :cond_4a5
    const/16 v16, 0x7

    goto :goto_4a4

    .line 1335
    :pswitch_4a8
    if-eqz p3, :cond_4ae

    const/16 v16, 0x8

    .line 1338
    :goto_4ac
    goto/16 :goto_427

    .line 1335
    :cond_4ae
    const/16 v16, 0x9

    goto :goto_4ac

    .line 1340
    :pswitch_4b1
    if-eqz p3, :cond_4b7

    const/16 v16, 0xa

    .line 1343
    :goto_4b5
    goto/16 :goto_427

    .line 1340
    :cond_4b7
    const/16 v16, 0xb

    goto :goto_4b5

    .line 1345
    :pswitch_4ba
    if-eqz p3, :cond_4c0

    const/16 v16, 0xc

    .line 1348
    :goto_4be
    goto/16 :goto_427

    .line 1345
    :cond_4c0
    const/16 v16, 0xd

    goto :goto_4be

    .line 1350
    :pswitch_4c3
    if-eqz p3, :cond_4c9

    const/16 v16, 0xe

    .line 1353
    :goto_4c7
    goto/16 :goto_427

    .line 1350
    :cond_4c9
    const/16 v16, 0xf

    goto :goto_4c7

    .line 1355
    :pswitch_4cc
    if-eqz p3, :cond_4d2

    const/16 v16, 0x10

    .line 1358
    :goto_4d0
    goto/16 :goto_427

    .line 1355
    :cond_4d2
    const/16 v16, 0x11

    goto :goto_4d0

    .line 1360
    :pswitch_4d5
    if-eqz p3, :cond_4db

    const/16 v16, 0x12

    .line 1363
    :goto_4d9
    goto/16 :goto_427

    .line 1360
    :cond_4db
    const/16 v16, 0x13

    goto :goto_4d9

    .line 1365
    :pswitch_4de
    if-eqz p3, :cond_4e4

    const/16 v16, 0x14

    .line 1368
    :goto_4e2
    goto/16 :goto_427

    .line 1365
    :cond_4e4
    const/16 v16, 0x15

    goto :goto_4e2

    .line 1370
    :pswitch_4e7
    if-eqz p3, :cond_4ed

    const/16 v16, 0x16

    .line 1373
    :goto_4eb
    goto/16 :goto_427

    .line 1370
    :cond_4ed
    const/16 v16, 0x17

    goto :goto_4eb

    .line 1375
    :pswitch_4f0
    if-eqz p3, :cond_4f6

    const/16 v16, 0x19

    :goto_4f4
    goto/16 :goto_427

    :cond_4f6
    const/16 v16, 0x18

    goto :goto_4f4

    .line 1384
    :pswitch_4f9
    if-eqz p3, :cond_4ff

    const/16 v16, 0x1a

    .line 1387
    :goto_4fd
    goto/16 :goto_42a

    .line 1384
    :cond_4ff
    const/16 v16, 0x1b

    goto :goto_4fd

    .line 1389
    :pswitch_502
    if-eqz p3, :cond_508

    const/16 v16, 0x1c

    :goto_506
    goto/16 :goto_42a

    :cond_508
    const/16 v16, 0x1d

    goto :goto_506

    .line 1401
    :pswitch_50b
    const/4 v5, 0x0

    goto/16 :goto_6b

    .line 1406
    :cond_50e
    const/4 v15, 0x0

    goto/16 :goto_43f

    .line 1323
    nop

    :pswitch_data_512
    .packed-switch 0x6
        :pswitch_498
        :pswitch_4a0
        :pswitch_4a8
        :pswitch_4b1
        :pswitch_4ba
        :pswitch_4c3
        :pswitch_4d5
        :pswitch_4cc
        :pswitch_4de
        :pswitch_4e7
        :pswitch_4f0
    .end packed-switch

    .line 1382
    :pswitch_data_52c
    .packed-switch 0x65
        :pswitch_4f9
        :pswitch_502
    .end packed-switch

    .line 1399
    :pswitch_data_534
    .packed-switch 0xc
        :pswitch_50b
    .end packed-switch
.end method

.method loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .registers 8
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "animAttr"    # I

    .prologue
    .line 518
    const/4 v0, 0x0

    .line 519
    .local v0, "anim":I
    iget-object v1, p0, mContext:Landroid/content/Context;

    .line 520
    .local v1, "context":Landroid/content/Context;
    if-ltz p2, :cond_14

    .line 521
    invoke-direct {p0, p1}, getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    .line 522
    .local v2, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v2, :cond_14

    .line 523
    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 524
    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 527
    .end local v2    # "ent":Lcom/android/server/AttributeCache$Entry;
    :cond_14
    if-eqz v0, :cond_1b

    .line 528
    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 530
    :goto_1a
    return-object v3

    :cond_1b
    const/4 v3, 0x0

    goto :goto_1a
.end method

.method loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .registers 6
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "resId"    # I

    .prologue
    .line 534
    iget-object v0, p0, mContext:Landroid/content/Context;

    .line 535
    .local v0, "context":Landroid/content/Context;
    if-ltz p2, :cond_11

    .line 536
    invoke-direct {p0, p1}, getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v1

    .line 537
    .local v1, "ent":Lcom/android/server/AttributeCache$Entry;
    if-eqz v1, :cond_c

    .line 538
    iget-object v0, v1, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    .line 540
    :cond_c
    invoke-static {v0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 542
    .end local v1    # "ent":Lcom/android/server/AttributeCache$Entry;
    :goto_10
    return-object v2

    :cond_11
    const/4 v2, 0x0

    goto :goto_10
.end method

.method public notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 456
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 457
    iget-object v1, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1}, Landroid/view/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    .line 456
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 459
    :cond_17
    return-void
.end method

.method overrideInPlaceAppTransition(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "anim"    # I

    .prologue
    .line 1553
    invoke-virtual {p0}, isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1554
    const/4 v0, 0x7

    iput v0, p0, mNextAppTransitionType:I

    .line 1555
    iput-object p1, p0, mNextAppTransitionPackage:Ljava/lang/String;

    .line 1556
    iput p2, p0, mNextAppTransitionInPlace:I

    .line 1560
    :goto_d
    return-void

    .line 1558
    :cond_e
    invoke-virtual {p0}, postAnimationCallback()V

    goto :goto_d
.end method

.method overrideNextAppTransition(ILcom/android/server/wm/AppWindowToken;)V
    .registers 5
    .param p1, "transitType"    # I
    .param p2, "requester"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    const/4 v1, 0x0

    .line 1869
    const/16 v0, 0x9

    if-eq p1, v0, :cond_9

    const/16 v0, 0xa

    if-ne p1, v0, :cond_14

    .line 1870
    :cond_9
    iput p1, p0, mNextAppTransitionType:I

    .line 1871
    iput-object p2, p0, mNextAppTransitionRequester:Lcom/android/server/wm/AppWindowToken;

    .line 1872
    invoke-virtual {p0}, postAnimationCallback()V

    .line 1873
    iput-object v1, p0, mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1875
    iput-object v1, p0, mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    .line 1878
    :cond_14
    return-void
.end method

.method overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 1434
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V

    .line 1435
    return-void
.end method

.method overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enterAnim"    # I
    .param p3, "exitAnim"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p5, "transitCallback"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 1440
    invoke-virtual {p0}, isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1441
    const/4 v0, 0x1

    iput v0, p0, mNextAppTransitionType:I

    .line 1442
    iput-object p1, p0, mNextAppTransitionPackage:Ljava/lang/String;

    .line 1443
    const/4 v0, 0x0

    iput-object v0, p0, mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 1444
    iput p2, p0, mNextAppTransitionEnter:I

    .line 1445
    iput p3, p0, mNextAppTransitionExit:I

    .line 1446
    invoke-virtual {p0}, postAnimationCallback()V

    .line 1447
    iput-object p4, p0, mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1449
    iput-object p5, p0, mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    .line 1454
    :goto_19
    return-void

    .line 1452
    :cond_1a
    invoke-virtual {p0}, postAnimationCallback()V

    goto :goto_19
.end method

.method overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/Bitmap;IIIILandroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V
    .registers 10
    .param p1, "srcThumb"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "targetWidth"    # I
    .param p5, "targetHeight"    # I
    .param p6, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p7, "transitCallback"    # Landroid/os/IRemoteCallback;
    .param p8, "scaleUp"    # Z

    .prologue
    .line 1532
    invoke-virtual {p0}, isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1533
    if-eqz p8, :cond_22

    const/4 v0, 0x5

    :goto_9
    iput v0, p0, mNextAppTransitionType:I

    .line 1535
    const/4 v0, 0x0

    iput-object v0, p0, mNextAppTransitionPackage:Ljava/lang/String;

    .line 1536
    iput-object p1, p0, mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 1537
    iput-boolean p8, p0, mNextAppTransitionScaleUp:Z

    .line 1538
    iput p2, p0, mNextAppTransitionStartX:I

    .line 1539
    iput p3, p0, mNextAppTransitionStartY:I

    .line 1540
    iput p4, p0, mNextAppTransitionStartWidth:I

    .line 1541
    iput p5, p0, mNextAppTransitionStartHeight:I

    .line 1542
    invoke-virtual {p0}, postAnimationCallback()V

    .line 1543
    iput-object p6, p0, mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1545
    iput-object p7, p0, mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    .line 1550
    :goto_21
    return-void

    .line 1533
    :cond_22
    const/4 v0, 0x6

    goto :goto_9

    .line 1548
    :cond_24
    invoke-virtual {p0}, postAnimationCallback()V

    goto :goto_21
.end method

.method overridePendingAppTransitionClipReveal(IIII)V
    .registers 7
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 1476
    invoke-virtual {p0}, isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1477
    const/16 v0, 0x8

    iput v0, p0, mNextAppTransitionType:I

    .line 1478
    iput p1, p0, mNextAppTransitionStartX:I

    .line 1479
    iput p2, p0, mNextAppTransitionStartY:I

    .line 1480
    iput p3, p0, mNextAppTransitionStartWidth:I

    .line 1481
    iput p4, p0, mNextAppTransitionStartHeight:I

    .line 1482
    invoke-virtual {p0}, postAnimationCallback()V

    .line 1483
    iput-object v1, p0, mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1485
    iput-object v1, p0, mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    .line 1488
    :cond_1a
    return-void
.end method

.method overridePendingAppTransitionCustomScaleUp(IIII)V
    .registers 7
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 1493
    invoke-virtual {p0}, isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1494
    const/16 v0, 0x3e9

    iput v0, p0, mNextAppTransitionType:I

    .line 1495
    iput-object v1, p0, mNextAppTransitionPackage:Ljava/lang/String;

    .line 1496
    iput-object v1, p0, mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 1497
    iput p1, p0, mNextAppTransitionStartX:I

    .line 1498
    iput p2, p0, mNextAppTransitionStartY:I

    .line 1499
    iput p3, p0, mNextAppTransitionStartWidth:I

    .line 1500
    iput p4, p0, mNextAppTransitionStartHeight:I

    .line 1501
    invoke-virtual {p0}, postAnimationCallback()V

    .line 1502
    iput-object v1, p0, mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1504
    :cond_1c
    return-void
.end method

.method overridePendingAppTransitionScaleUp(IIII)V
    .registers 7
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "startWidth"    # I
    .param p4, "startHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 1458
    invoke-virtual {p0}, isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1459
    const/4 v0, 0x2

    iput v0, p0, mNextAppTransitionType:I

    .line 1460
    iput-object v1, p0, mNextAppTransitionPackage:Ljava/lang/String;

    .line 1461
    iput-object v1, p0, mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 1462
    iput p1, p0, mNextAppTransitionStartX:I

    .line 1463
    iput p2, p0, mNextAppTransitionStartY:I

    .line 1464
    iput p3, p0, mNextAppTransitionStartWidth:I

    .line 1465
    iput p4, p0, mNextAppTransitionStartHeight:I

    .line 1466
    invoke-virtual {p0}, postAnimationCallback()V

    .line 1467
    iput-object v1, p0, mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1469
    iput-object v1, p0, mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    .line 1472
    :cond_1d
    return-void
.end method

.method overridePendingAppTransitionThumb(Landroid/graphics/Bitmap;IILandroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V
    .registers 8
    .param p1, "srcThumb"    # Landroid/graphics/Bitmap;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "startedCallback"    # Landroid/os/IRemoteCallback;
    .param p5, "transitCallback"    # Landroid/os/IRemoteCallback;
    .param p6, "scaleUp"    # Z

    .prologue
    .line 1511
    invoke-virtual {p0}, isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1512
    if-eqz p6, :cond_1e

    const/4 v0, 0x3

    :goto_9
    iput v0, p0, mNextAppTransitionType:I

    .line 1514
    const/4 v0, 0x0

    iput-object v0, p0, mNextAppTransitionPackage:Ljava/lang/String;

    .line 1515
    iput-object p1, p0, mNextAppTransitionThumbnail:Landroid/graphics/Bitmap;

    .line 1516
    iput-boolean p6, p0, mNextAppTransitionScaleUp:Z

    .line 1517
    iput p2, p0, mNextAppTransitionStartX:I

    .line 1518
    iput p3, p0, mNextAppTransitionStartY:I

    .line 1519
    invoke-virtual {p0}, postAnimationCallback()V

    .line 1520
    iput-object p4, p0, mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1522
    iput-object p5, p0, mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    .line 1527
    :goto_1d
    return-void

    .line 1512
    :cond_1e
    const/4 v0, 0x4

    goto :goto_9

    .line 1525
    :cond_20
    invoke-virtual {p0}, postAnimationCallback()V

    goto :goto_1d
.end method

.method overridePendingAppTransitionTranslate()V
    .registers 2

    .prologue
    .line 1564
    invoke-virtual {p0}, isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1565
    const/16 v0, 0x3e8

    iput v0, p0, mNextAppTransitionType:I

    .line 1566
    invoke-virtual {p0}, postAnimationCallback()V

    .line 1568
    :cond_d
    return-void
.end method

.method postAnimationCallback()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1421
    iget-object v1, p0, mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-nez v1, :cond_9

    iget-object v1, p0, mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    if-eqz v1, :cond_23

    .line 1422
    :cond_9
    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    iget-object v2, p0, mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1424
    .local v0, "obj":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;>;"
    iget-object v1, p0, mH:Landroid/os/Handler;

    iget-object v2, p0, mH:Landroid/os/Handler;

    const/16 v3, 0x1a

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1425
    iput-object v4, p0, mNextAppTransitionCallback2:Landroid/os/IRemoteCallback;

    .line 1427
    iput-object v4, p0, mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    .line 1429
    .end local v0    # "obj":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;>;"
    :cond_23
    return-void
.end method

.method prepare()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 417
    invoke-virtual {p0}, isRunning()Z

    move-result v1

    if-nez v1, :cond_d

    .line 418
    iput v0, p0, mAppTransitionState:I

    .line 419
    invoke-direct {p0}, notifyAppTransitionPendingLocked()V

    .line 420
    const/4 v0, 0x1

    .line 422
    :cond_d
    return v0
.end method

.method prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;
    .registers 11
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "transit"    # I

    .prologue
    .line 778
    packed-switch p4, :pswitch_data_14

    .line 784
    const/16 v4, 0x150

    .line 787
    .local v4, "duration":I
    :goto_5
    iget-object v5, p0, mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    .line 781
    .end local v4    # "duration":I
    :pswitch_10
    iget v4, p0, mConfigShortAnimTime:I

    .line 782
    .restart local v4    # "duration":I
    goto :goto_5

    .line 778
    nop

    :pswitch_data_14
    .packed-switch 0x6
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIILandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .registers 8
    .param p1, "a"    # Landroid/view/animation/Animation;
    .param p2, "appWidth"    # I
    .param p3, "appHeight"    # I
    .param p4, "duration"    # I
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 761
    if-lez p4, :cond_6

    .line 762
    int-to-long v0, p4

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 764
    :cond_6
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 765
    invoke-virtual {p1, p5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 766
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 767
    return-object p1
.end method

.method registerListenerLocked(Landroid/view/WindowManagerInternal$AppTransitionListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/WindowManagerInternal$AppTransitionListener;

    .prologue
    .line 452
    iget-object v0, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 453
    return-void
.end method

.method setAppTransition(I)V
    .registers 2
    .param p1, "transit"    # I

    .prologue
    .line 361
    iput p1, p0, mNextAppTransition:I

    .line 362
    return-void
.end method

.method public setCurrentUser(I)V
    .registers 2
    .param p1, "newUserId"    # I

    .prologue
    .line 1847
    iput p1, p0, mCurrentUserId:I

    .line 1848
    return-void
.end method

.method setDisplayId(I)V
    .registers 2
    .param p1, "displayId"    # I

    .prologue
    .line 1852
    iput p1, p0, mDisplayId:I

    .line 1853
    return-void
.end method

.method setEasyOneHandRunning(Z)V
    .registers 2
    .param p1, "isRunning"    # Z

    .prologue
    .line 1193
    iput-boolean p1, p0, mEasyOneHandRunning:Z

    .line 1194
    return-void
.end method

.method setIdle()V
    .registers 2

    .prologue
    .line 382
    const/4 v0, 0x0

    iput v0, p0, mAppTransitionState:I

    .line 383
    return-void
.end method

.method setReady()V
    .registers 2

    .prologue
    .line 374
    const/4 v0, 0x1

    iput v0, p0, mAppTransitionState:I

    .line 375
    return-void
.end method

.method setTimeout()V
    .registers 2

    .prologue
    .line 390
    const/4 v0, 0x3

    iput v0, p0, mAppTransitionState:I

    .line 391
    return-void
.end method

.method setWindowAnimator(Lcom/android/server/wm/WindowAnimator;)V
    .registers 2
    .param p1, "windowAnimator"    # Lcom/android/server/wm/WindowAnimator;

    .prologue
    .line 1860
    iput-object p1, p0, mWindowAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 1861
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mNextAppTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mNextAppTransition:I

    invoke-static {v1}, appTransitionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
