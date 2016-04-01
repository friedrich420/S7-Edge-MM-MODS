.class public Lcom/android/server/wm/DualScreenTransition;
.super Ljava/lang/Object;
.source "DualScreenTransition.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DualScreenTransition$H;,
        Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    }
.end annotation


# static fields
.field public static final COVER_DISPLAY:I = 0x2

.field public static final DEBUG:Z

.field public static final DEBUG_ANIM:Z

.field public static final DEBUG_TRANSFORMS:Z

.field public static final DEBUG_VERBOSE:Z

.field private static final DEFAULT_APP_TRANSITION_DURATION:I = 0x190

.field private static final DEFAULT_APP_TRANSITION_INTERPOLATOR:I = 0x10c0027

.field static final DEV_FREEZE_TIMEOUT:I

.field static final DEV_FREEZE_TRANSITION:Z

.field public static final DEV_MODE_ENABLED:Z

.field static final DEV_MOVE_WINDOWS_ENABLED:Z

.field static final DEV_TRANSIT_DEBUG:Z

.field public static final DIRECTION_FULL_TO_HALF:I = 0x4

.field public static final DIRECTION_HALF_TO_FULL:I = 0x3

.field public static final DIRECTION_MAIN_TO_SUB:I = 0x1

.field public static final DIRECTION_SUB_TO_MAIN:I = 0x2

.field public static final DIRECTION_UNDEFINED:I = -0x1

.field public static DUALSCREEN_VI_ENABLED:Z = false

.field static final FREEZE_LAYER:I = 0xf4240

.field public static final PREFIX_TAG:Ljava/lang/String; = "[DualScreenTransition] "

.field static final SCREEN_COVER_LAYER:I = 0xf4241

.field static final SCREEN_COVER_SURFACE_NANME:Ljava/lang/String; = "ScreenCoverSurface"

.field public static final SYSTEM_PROPERTY_TRANSIT_DEBUG:Ljava/lang/String; = "dev.ds.transit.debug"

.field public static final SYSTEM_PROPERTY_TRANSIT_DURATION:Ljava/lang/String; = "dev.ds.transit.duration"

.field public static final SYSTEM_PROPERTY_TRANSIT_FREEZE:Ljava/lang/String; = "dev.ds.transit.freeze"

.field public static final SYSTEM_PROPERTY_TRANSIT_INTERPOLATOR:Ljava/lang/String; = "dev.ds.transit.interpolator"

.field public static final SYSTEM_PROPERTY_TRANSIT_MOVE_WINDOWS_ENABLED:Ljava/lang/String; = "dev.ds.transit.movewindows"

.field public static final SYSTEM_PROPERTY_TRANSIT_TIMEOUT:Ljava/lang/String; = "dev.ds.transit.timeout"

.field public static final TAG:Ljava/lang/String; = "DualScreenTransition"

.field public static final TRANSIT_DISPLAY_SCALE:I = 0x190

.field public static final TRANSIT_EXPAND:I = 0xc8

.field public static final TRANSIT_FADEOUT:I = 0x3e8

.field public static final TRANSIT_NONE:I = 0x0

.field public static final TRANSIT_SHRINK:I = 0x12c

.field public static final TRANSIT_TARGET_DISPLAY:I = 0x1

.field static final TRANSIT_TARGET_LAYER:I = 0xf4242

.field static final TRANSIT_TARGET_SURFACE_NANME:Ljava/lang/String; = "TransitTargetSurface"

.field public static final TRANSIT_TASK_MOVE:I = 0x64

.field public static final TRANSIT_TIMEOUT:I = -0x1

.field private static final TRANSIT_TYPE_NONE:I = 0x0

.field private static final TRANSIT_TYPE_TRANSLATE:I = 0x65

.field public static final USE_XML_ANIMATION:Z


# instance fields
.field mAnimRunning:Z

.field mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

.field mAnimStageDisplayCurrentRotation:I

.field mAnimStageDisplayHeight:I

.field mAnimStageDisplayOriginalRotation:I

.field mAnimStageDisplayWidth:I

.field private final mContext:Landroid/content/Context;

.field final mCoverInitialMatrix:Landroid/graphics/Matrix;

.field mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

.field mCoveredDisplayCurrentRotation:I

.field mCoveredDisplayHeight:I

.field mCoveredDisplayOriginalRotation:I

.field mCoveredDisplayWidth:I

.field private final mDefaultInterpolator:Landroid/view/animation/Interpolator;

.field private mDevDuration:I

.field private mDevInterpolator:Landroid/view/animation/Interpolator;

.field mFromDisplay:Lcom/android/server/wm/DisplayContent;

.field final mHandler:Lcom/android/server/wm/DualScreenTransition$H;

.field private mMoreTransit:Z

.field private mMoveDirection:I

.field mMovedDimTargetWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mMovedWindowsForCoverScreen:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/SurfaceControl;",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mMovedWindowsForTransitTarget:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/SurfaceControl;",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mNextTransition:I

.field mOriginalAnimStageDisplayRect:Landroid/graphics/Rect;

.field mOriginalCoveredDisplayRect:Landroid/graphics/Rect;

.field mOriginalTransitTargetDisplayRect:Landroid/graphics/Rect;

.field private final mPolicy:Landroid/view/WindowManagerPolicy;

.field mScreenCoverAnimation:Landroid/view/animation/Animation;

.field mScreenCoverSurface:Landroid/view/SurfaceControl;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field mSession:Landroid/view/SurfaceSession;

.field mSkipAnimationTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mStarted:Z

.field final mTmpFloats:[F

.field final mTmpFloats2:[F

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field mToDisplay:Lcom/android/server/wm/DisplayContent;

.field mTransitAnimation:Landroid/view/animation/Animation;

.field mTransitTargetDisplayCurrentRotation:I

.field mTransitTargetDisplayHeight:I

.field mTransitTargetDisplayOriginalRotation:I

.field mTransitTargetDisplayWidth:I

.field mTransitTargetInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mTransitTransformation:Landroid/view/animation/Transformation;

.field private mTransitionType:I

.field private mWaitingScreens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/dualscreen/DualScreen;",
            ">;"
        }
    .end annotation
.end field

.field mWatingAppToken:Lcom/android/server/wm/AppWindowToken;

.field mWatingScreenDrawn:Z

.field private final mWindowAnimator:Lcom/android/server/wm/WindowAnimator;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 84
    sget-boolean v3, Lcom/samsung/android/dualscreen/DualScreenManager;->DEBUG:Z

    if-eqz v3, :cond_aa

    move v3, v4

    :goto_8
    sput-boolean v3, DEBUG:Z

    .line 85
    sget-boolean v3, Lcom/samsung/android/dualscreen/DualScreenManager;->SAFE_DEBUG:Z

    sput-boolean v3, DEV_MODE_ENABLED:Z

    .line 93
    sget-boolean v3, DEV_MODE_ENABLED:Z

    if-eqz v3, :cond_b1

    .line 94
    const-string/jumbo v3, "dev.ds.transit.debug"

    const-string v6, "0"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "freeze":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ad

    .line 96
    sput-boolean v4, DEV_TRANSIT_DEBUG:Z

    .line 105
    :goto_25
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_b5

    :cond_29
    move v3, v4

    :goto_2a
    sput-boolean v3, DEBUG_ANIM:Z

    .line 106
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_30

    :cond_30
    sget-boolean v3, DEV_TRANSIT_DEBUG:Z

    if-eqz v3, :cond_bc

    move v3, v4

    :goto_35
    sput-boolean v3, DEBUG_TRANSFORMS:Z

    .line 107
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_3b

    :cond_3b
    sget-boolean v3, DEV_TRANSIT_DEBUG:Z

    if-eqz v3, :cond_bf

    move v3, v4

    :goto_40
    sput-boolean v3, DEBUG_VERBOSE:Z

    .line 110
    sget-boolean v3, Lcom/samsung/android/multidisplay/dualscreen/DualScreenFeatures;->SUPPORT_DUALSCREEN_VI:Z

    sput-boolean v3, DUALSCREEN_VI_ENABLED:Z

    .line 242
    sget-boolean v3, DEV_MODE_ENABLED:Z

    if-eqz v3, :cond_c4

    .line 243
    const-string/jumbo v3, "dev.ds.transit.movewindows"

    const-string v6, "1"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 244
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c1

    .line 245
    sput-boolean v4, DEV_MOVE_WINDOWS_ENABLED:Z

    .line 253
    :goto_5d
    sget-boolean v3, DEV_MODE_ENABLED:Z

    if-eqz v3, :cond_ca

    .line 254
    const-string/jumbo v3, "dev.ds.transit.freeze"

    const-string v6, "0"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c7

    .line 256
    sput-boolean v4, DEV_FREEZE_TRANSITION:Z

    .line 264
    :goto_74
    sget-boolean v3, DEV_MODE_ENABLED:Z

    if-eqz v3, :cond_d0

    .line 265
    const-string/jumbo v3, "dev.ds.transit.timeout"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "timeout":Ljava/lang/String;
    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dev.ds.transit.timeout="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    if-eqz v1, :cond_cd

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_cd

    .line 268
    const/4 v2, -0x1

    .line 270
    .local v2, "timeoutInt":I
    :try_start_a3
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_a3 .. :try_end_a6} :catch_d3

    move-result v2

    .line 273
    :goto_a7
    sput v2, DEV_FREEZE_TIMEOUT:I

    .line 280
    .end local v1    # "timeout":Ljava/lang/String;
    .end local v2    # "timeoutInt":I
    :goto_a9
    return-void

    .end local v0    # "freeze":Ljava/lang/String;
    :cond_aa
    move v3, v5

    .line 84
    goto/16 :goto_8

    .line 98
    .restart local v0    # "freeze":Ljava/lang/String;
    :cond_ad
    sput-boolean v5, DEV_TRANSIT_DEBUG:Z

    goto/16 :goto_25

    .line 101
    .end local v0    # "freeze":Ljava/lang/String;
    :cond_b1
    sput-boolean v5, DEV_TRANSIT_DEBUG:Z

    goto/16 :goto_25

    .line 105
    .restart local v0    # "freeze":Ljava/lang/String;
    :cond_b5
    sget-boolean v3, DEV_TRANSIT_DEBUG:Z

    if-nez v3, :cond_29

    move v3, v5

    goto/16 :goto_2a

    :cond_bc
    move v3, v5

    .line 106
    goto/16 :goto_35

    :cond_bf
    move v3, v5

    .line 107
    goto :goto_40

    .line 247
    :cond_c1
    sput-boolean v5, DEV_MOVE_WINDOWS_ENABLED:Z

    goto :goto_5d

    .line 250
    :cond_c4
    sput-boolean v4, DEV_MOVE_WINDOWS_ENABLED:Z

    goto :goto_5d

    .line 258
    :cond_c7
    sput-boolean v5, DEV_FREEZE_TRANSITION:Z

    goto :goto_74

    .line 261
    :cond_ca
    sput-boolean v5, DEV_FREEZE_TRANSITION:Z

    goto :goto_74

    .line 275
    .restart local v1    # "timeout":Ljava/lang/String;
    :cond_cd
    sput v7, DEV_FREEZE_TIMEOUT:I

    goto :goto_a9

    .line 278
    .end local v1    # "timeout":Ljava/lang/String;
    :cond_d0
    sput v7, DEV_FREEZE_TIMEOUT:I

    goto :goto_a9

    .line 271
    .restart local v1    # "timeout":Ljava/lang/String;
    .restart local v2    # "timeoutInt":I
    :catch_d3
    move-exception v3

    goto :goto_a7
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayContent;I)V
    .registers 12
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "fromDisplay"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "toDisplay"    # Lcom/android/server/wm/DisplayContent;
    .param p4, "animStageDisplay"    # Lcom/android/server/wm/DisplayContent;
    .param p5, "transition"    # I

    .prologue
    const/16 v5, 0x64

    const/16 v4, 0x9

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput v3, p0, mNextTransition:I

    .line 128
    iput v3, p0, mTransitionType:I

    .line 136
    const/4 v0, 0x1

    iput v0, p0, mMoveDirection:I

    .line 153
    new-instance v0, Lcom/android/server/wm/DualScreenTransition$H;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/DualScreenTransition$H;-><init>(Lcom/android/server/wm/DualScreenTransition;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Lcom/android/server/wm/DualScreenTransition$H;

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mTransitTargetInfos:Ljava/util/ArrayList;

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mMovedWindowsForTransitTarget:Ljava/util/HashMap;

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mMovedWindowsForCoverScreen:Ljava/util/HashMap;

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mMovedDimTargetWindows:Ljava/util/ArrayList;

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mSkipAnimationTokens:Ljava/util/ArrayList;

    .line 212
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mOriginalTransitTargetDisplayRect:Landroid/graphics/Rect;

    .line 213
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mOriginalCoveredDisplayRect:Landroid/graphics/Rect;

    .line 214
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mOriginalAnimStageDisplayRect:Landroid/graphics/Rect;

    .line 220
    iput-boolean v3, p0, mWatingScreenDrawn:Z

    .line 221
    iput-object v2, p0, mWatingAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 223
    iput-object v2, p0, mTransitAnimation:Landroid/view/animation/Animation;

    .line 224
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, mTransitTransformation:Landroid/view/animation/Transformation;

    .line 225
    iput-object v2, p0, mScreenCoverAnimation:Landroid/view/animation/Animation;

    .line 227
    new-array v0, v4, [F

    iput-object v0, p0, mTmpFloats:[F

    .line 228
    new-array v0, v4, [F

    iput-object v0, p0, mTmpFloats2:[F

    .line 229
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, mTmpMatrix:Landroid/graphics/Matrix;

    .line 232
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, mCoverInitialMatrix:Landroid/graphics/Matrix;

    .line 238
    iput-object v2, p0, mDevInterpolator:Landroid/view/animation/Interpolator;

    .line 478
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mWaitingScreens:Ljava/util/ArrayList;

    .line 285
    if-nez p1, :cond_a1

    .line 286
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_a1
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_ad

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    if-eqz v0, :cond_ad

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    if-nez v0, :cond_e0

    .line 289
    :cond_ad
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " windowAnimator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :cond_e0
    if-eqz p2, :cond_e6

    if-eqz p3, :cond_e6

    if-nez p4, :cond_114

    .line 293
    :cond_e6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "fromDisplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " toDisplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " animStageDisplay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_114
    iput-object p1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    .line 298
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v0, p0, mPolicy:Landroid/view/WindowManagerPolicy;

    .line 299
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 300
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iput-object v0, p0, mWindowAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 301
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFxSession:Landroid/view/SurfaceSession;

    iput-object v0, p0, mSession:Landroid/view/SurfaceSession;

    .line 304
    iput-object p2, p0, mFromDisplay:Lcom/android/server/wm/DisplayContent;

    .line 305
    iput-object p3, p0, mToDisplay:Lcom/android/server/wm/DisplayContent;

    iput-object p3, p0, mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

    .line 306
    iput-object p4, p0, mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    .line 307
    iput p5, p0, mTransitionType:I

    .line 309
    invoke-virtual {p0, p5}, setTransition(I)V

    .line 311
    if-eq p5, v5, :cond_169

    const/16 v0, 0xc8

    if-eq p5, v0, :cond_169

    const/16 v0, 0x12c

    if-eq p5, v0, :cond_169

    const/16 v0, 0x190

    if-eq p5, v0, :cond_169

    .line 315
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid transition. ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_169
    if-ne p5, v5, :cond_16f

    .line 319
    const/16 v0, 0x65

    iput v0, p0, mTransitionType:I

    .line 321
    :cond_16f
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-direct {p0, v0, v1}, selectMoveDirection(II)V

    .line 322
    invoke-virtual {p0, p5}, updateWaitingScreens(I)V

    .line 324
    iget-object v0, p0, mContext:Landroid/content/Context;

    const v1, 0x10c0027

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, mDefaultInterpolator:Landroid/view/animation/Interpolator;

    .line 327
    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "creating DualScreenTransition. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p5}, transitionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " caller=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_23d

    .line 331
    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ctor : transitionType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mTransitionType:I

    invoke-virtual {p0, v2}, transitTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " direction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mMoveDirection:I

    invoke-virtual {p0, v2}, directionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DEV_MODE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, DEV_MODE_ENABLED:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ctor : from d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mToDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (anim stage d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_23d
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/DualScreenTransition;)Lcom/android/server/wm/WindowManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DualScreenTransition;

    .prologue
    .line 72
    iget-object v0, p0, mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/DualScreenTransition;)Lcom/android/server/wm/WindowAnimator;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/DualScreenTransition;

    .prologue
    .line 72
    iget-object v0, p0, mWindowAnimator:Lcom/android/server/wm/WindowAnimator;

    return-object v0
.end method

.method private canMoveWindowsToFront(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WindowState;)Z
    .registers 12
    .param p1, "allWindows"    # Lcom/android/server/wm/WindowList;
    .param p2, "target"    # Lcom/android/server/wm/WindowState;

    .prologue
    const/4 v8, 0x3

    const/4 v3, 0x0

    const/4 v7, -0x1

    .line 377
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_23

    .line 378
    const-string v4, "DualScreenTransition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canMoveWindowsToFront() caller="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_23
    if-eqz p1, :cond_27

    if-nez p2, :cond_28

    .line 422
    :cond_27
    :goto_27
    return v3

    .line 385
    :cond_28
    const/4 v0, 0x0

    .line 386
    .local v0, "added":Z
    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_2f
    if-ltz v1, :cond_df

    .line 387
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 388
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v4, v8, :cond_5c

    .line 389
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_59

    .line 390
    const-string v4, "DualScreenTransition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canMoveWindowsToFront() : skip starting win... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_59
    :goto_59
    add-int/lit8 v1, v1, -0x1

    goto :goto_2f

    .line 395
    :cond_5c
    iget v4, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v5, p2, Lcom/android/server/wm/WindowState;->mLayer:I

    if-lt v4, v5, :cond_7f

    .line 396
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_59

    .line 397
    const-string v4, "DualScreenTransition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canMoveWindowsToFront() : skip higher layer than top ... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_59

    .line 402
    :cond_7f
    if-nez v0, :cond_b1

    .line 403
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_b1

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v4, v5, :cond_b1

    .line 404
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_a9

    .line 405
    const-string v4, "DualScreenTransition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canMoveWindowsToFront() : add token to mSkipAnimationTokens ..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :cond_a9
    iget-object v4, p0, mSkipAnimationTokens:Ljava/util/ArrayList;

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    const/4 v0, 0x1

    .line 412
    :cond_b1
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v4, :cond_59

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v4, :cond_59

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v4, v7, :cond_59

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v4, v7, :cond_59

    .line 415
    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz v4, :cond_59

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-eqz v4, :cond_59

    iget-object v4, v2, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iget-object v5, p2, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v5, :cond_59

    goto/16 :goto_27

    .line 422
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_df
    const/4 v3, 0x1

    goto/16 :goto_27
.end method

.method private checkMoveDirectionType(II)I
    .registers 6
    .param p1, "fromDisplayId"    # I
    .param p2, "toDisplayId"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 354
    if-ne p2, v1, :cond_a

    .line 355
    if-eqz p1, :cond_8

    if-ne p1, v0, :cond_2e

    .line 356
    :cond_8
    const/4 v0, 0x3

    .line 367
    :cond_9
    :goto_9
    return v0

    .line 358
    :cond_a
    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v2}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v2

    if-eq p2, v2, :cond_1a

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v2}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v2

    if-ne p2, v2, :cond_2e

    .line 359
    :cond_1a
    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->FULL:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v2}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v2

    if-ne p1, v2, :cond_24

    .line 360
    const/4 v0, 0x4

    goto :goto_9

    .line 361
    :cond_24
    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v2}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v2

    if-eq p1, v2, :cond_9

    move v0, v1

    .line 364
    goto :goto_9

    .line 367
    :cond_2e
    const/4 v0, -0x1

    goto :goto_9
.end method

.method private clearDualScreenTransitionAnimation()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 2025
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_27

    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearDualScreenTransitionAnimation()   caller=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    :cond_27
    iget-object v0, p0, mScreenCoverAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_32

    .line 2028
    iget-object v0, p0, mScreenCoverAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 2029
    iput-object v3, p0, mScreenCoverAnimation:Landroid/view/animation/Animation;

    .line 2032
    :cond_32
    iget-object v0, p0, mTransitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3d

    .line 2033
    iget-object v0, p0, mTransitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 2034
    iput-object v3, p0, mTransitAnimation:Landroid/view/animation/Animation;

    .line 2037
    :cond_3d
    iget-object v0, p0, mSkipAnimationTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4a

    .line 2038
    iget-object v0, p0, mSkipAnimationTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2041
    :cond_4a
    iget-object v0, p0, mMovedDimTargetWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_57

    .line 2042
    iget-object v0, p0, mMovedDimTargetWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2045
    :cond_57
    iget-object v0, p0, mHandler:Lcom/android/server/wm/DualScreenTransition$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DualScreenTransition$H;->removeMessages(I)V

    .line 2046
    const/4 v0, 0x0

    iput-boolean v0, p0, mWatingScreenDrawn:Z

    .line 2047
    iput-object v3, p0, mWatingAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 2048
    return-void
.end method

.method private clearMovedWindows(Ljava/util/HashMap;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/SurfaceControl;",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1912
    .local p1, "windowsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;>;"
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_9

    .line 1936
    :cond_8
    :goto_8
    return-void

    .line 1916
    :cond_9
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 1917
    .local v2, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1918
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl;

    .line 1919
    .local v4, "surfaceControl":Landroid/view/SurfaceControl;
    if-eqz v4, :cond_11

    .line 1920
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 1922
    .local v5, "w":Lcom/android/server/wm/WindowState;
    :try_start_2b
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v4, v6}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 1923
    sget-boolean v6, DEBUG:Z

    if-eqz v6, :cond_11

    .line 1924
    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clearMovedWindows() set layer order to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_5c} :catch_5d

    goto :goto_11

    .line 1927
    :catch_5d
    move-exception v0

    .line 1928
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v6, DEBUG:Z

    if-eqz v6, :cond_11

    .line 1929
    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clearMovedWindows() Surface is already released. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " callers="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 1935
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;>;"
    .end local v4    # "surfaceControl":Landroid/view/SurfaceControl;
    .end local v5    # "w":Lcom/android/server/wm/WindowState;
    :cond_8a
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_8
.end method

.method private collectWindowsToFront(Lcom/android/server/wm/WindowList;Ljava/util/HashMap;I)V
    .registers 11
    .param p1, "allWindows"    # Lcom/android/server/wm/WindowList;
    .param p3, "targetLayer"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowList;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/SurfaceControl;",
            "Lcom/android/server/wm/WindowState;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, "outWindowsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;>;"
    const/4 v6, 0x3

    .line 622
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_21

    .line 623
    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "collectWindowsToFront() caller="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_21
    invoke-virtual {p1}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_25
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 627
    .local v2, "win":Lcom/android/server/wm/WindowState;
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v3, v6, :cond_54

    .line 628
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_25

    .line 629
    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "collectWindowsToFront() : skip adding... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 634
    :cond_54
    iget v3, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    if-le v3, p3, :cond_25

    .line 635
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_12c

    .line 636
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_c8

    .line 637
    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "collectWindowsToFront() : adding... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "collectWindowsToFront() :  mAnimLayer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mLastLayer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mBaseLayer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v5, v5, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mLayer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v5, v5, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_c8
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p2, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_25

    .line 648
    const/4 v1, 0x0

    .line 649
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_125

    .line 650
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 655
    :goto_e0
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isDimming()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 656
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_11e

    .line 657
    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "collectWindowsToFront() : adding... mDimHasWindowsFrontTransitTarget win="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "collectWindowsToFront() : adding... dimLayer.mAnimLayer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/wm/TaskStack;->mDimWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_11e
    iget-object v3, p0, mMovedDimTargetWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_25

    .line 652
    :cond_125
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    goto :goto_e0

    .line 664
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_12c
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_25

    .line 665
    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "collectWindowsToFront() : skip adding... (no SurfaceControl) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_25

    .line 671
    .end local v2    # "win":Lcom/android/server/wm/WindowState;
    :cond_14a
    return-void
.end method

.method private static createRotationMatrix(IIILandroid/graphics/Matrix;)V
    .registers 6
    .param p0, "rotation"    # I
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "outMatrix"    # Landroid/graphics/Matrix;

    .prologue
    const/4 v1, 0x0

    .line 1285
    packed-switch p0, :pswitch_data_28

    .line 1302
    :goto_4
    return-void

    .line 1287
    :pswitch_5
    invoke-virtual {p3}, Landroid/graphics/Matrix;->reset()V

    goto :goto_4

    .line 1290
    :pswitch_9
    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1291
    int-to-float v0, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_4

    .line 1294
    :pswitch_13
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1295
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_4

    .line 1298
    :pswitch_1e
    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p3, v0, v1, v1}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1299
    int-to-float v0, p1

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_4

    .line 1285
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_5
        :pswitch_9
        :pswitch_13
        :pswitch_1e
    .end packed-switch
.end method

.method private createSurface(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;IIII)Landroid/view/SurfaceControl;
    .registers 29
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "screenshotMaxLayer"    # I
    .param p6, "screenshotMinLayer"    # I

    .prologue
    .line 1219
    if-eqz p1, :cond_e

    if-eqz p2, :cond_e

    const/4 v3, 0x1

    move/from16 v0, p3

    if-lt v0, v3, :cond_e

    const/4 v3, 0x1

    move/from16 v0, p4

    if-ge v0, v3, :cond_4e

    .line 1220
    :cond_e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "displayContent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1224
    :cond_4e
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_ab

    .line 1225
    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "createSurface() d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " screenshotMaxLayer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " screenshotMinLayer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    :cond_ab
    const/4 v2, 0x0

    .line 1233
    .local v2, "createdSurfaceControl":Landroid/view/SurfaceControl;
    const/16 v19, 0x0

    .line 1234
    .local v19, "isSecure":Z
    const/4 v8, 0x4

    .line 1235
    .local v8, "flags":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v20

    .line 1237
    .local v20, "windows":Lcom/android/server/wm/WindowList;
    if-eqz v20, :cond_dd

    .line 1238
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowList;->size()I

    move-result v16

    .line 1239
    .local v16, "N":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_bb
    move/from16 v0, v18

    move/from16 v1, v16

    if-ge v0, v1, :cond_dd

    .line 1240
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/wm/WindowState;

    .line 1241
    .local v21, "ws":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v3

    if-eqz v3, :cond_154

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_154

    .line 1242
    const/16 v19, 0x1

    .line 1247
    .end local v16    # "N":I
    .end local v18    # "i":I
    .end local v21    # "ws":Lcom/android/server/wm/WindowState;
    :cond_dd
    if-eqz v19, :cond_e1

    .line 1248
    or-int/lit16 v8, v8, 0x80

    .line 1250
    :cond_e1
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-nez v3, :cond_e9

    sget-boolean v3, DEV_MODE_ENABLED:Z

    if-eqz v3, :cond_158

    .line 1251
    :cond_e9
    new-instance v2, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    .end local v2    # "createdSurfaceControl":Landroid/view/SurfaceControl;
    move-object/from16 v0, p0

    iget-object v3, v0, mSession:Landroid/view/SurfaceSession;

    const/4 v7, -0x3

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    .line 1259
    .restart local v2    # "createdSurfaceControl":Landroid/view/SurfaceControl;
    :goto_f9
    new-instance v10, Landroid/view/Surface;

    invoke-direct {v10}, Landroid/view/Surface;-><init>()V

    .line 1260
    .local v10, "sur":Landroid/view/Surface;
    invoke-virtual {v10, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 1261
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v17

    .line 1262
    .local v17, "builtInDisplayId":I
    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/MultiWindowTransition;->convertDisplayIdToBuiltInDisplayId(I)I

    move-result v3

    invoke-static {v3}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v9

    .line 1264
    .local v9, "displayToken":Landroid/os/IBinder;
    if-eqz v9, :cond_150

    .line 1265
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_146

    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "createSurface() screenshot! builtInDisplayId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " screenshotMinLayer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " screenshotMaxLayer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    :cond_146
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    move/from16 v13, p6

    move/from16 v14, p5

    invoke-static/range {v9 .. v15}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;IIIIZ)V

    .line 1271
    :cond_150
    invoke-virtual {v10}, Landroid/view/Surface;->destroy()V

    .line 1273
    return-object v2

    .line 1239
    .end local v9    # "displayToken":Landroid/os/IBinder;
    .end local v10    # "sur":Landroid/view/Surface;
    .end local v17    # "builtInDisplayId":I
    .restart local v16    # "N":I
    .restart local v18    # "i":I
    .restart local v21    # "ws":Lcom/android/server/wm/WindowState;
    :cond_154
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_bb

    .line 1254
    .end local v16    # "N":I
    .end local v18    # "i":I
    .end local v21    # "ws":Lcom/android/server/wm/WindowState;
    :cond_158
    new-instance v2, Landroid/view/SurfaceControl;

    .end local v2    # "createdSurfaceControl":Landroid/view/SurfaceControl;
    move-object/from16 v0, p0

    iget-object v3, v0, mSession:Landroid/view/SurfaceSession;

    const/4 v7, -0x1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v2 .. v8}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    .restart local v2    # "createdSurfaceControl":Landroid/view/SurfaceControl;
    goto :goto_f9
.end method

.method private static deltaRotation(II)I
    .registers 3
    .param p0, "oldRotation"    # I
    .param p1, "newRotation"    # I

    .prologue
    .line 1278
    sub-int v0, p1, p0

    .line 1279
    .local v0, "delta":I
    if-gez v0, :cond_6

    add-int/lit8 v0, v0, 0x4

    .line 1280
    :cond_6
    return v0
.end method

.method public static getFreezeTimeOut()I
    .registers 3

    .prologue
    .line 1480
    sget-boolean v0, DEV_MODE_ENABLED:Z

    if-eqz v0, :cond_2a

    sget v0, DEV_FREEZE_TIMEOUT:I

    if-lez v0, :cond_2a

    .line 1481
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_27

    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getFreezeTimeOut() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, DEV_FREEZE_TIMEOUT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    :cond_27
    sget v0, DEV_FREEZE_TIMEOUT:I

    .line 1485
    :goto_29
    return v0

    .line 1484
    :cond_2a
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_36

    const-string v0, "DualScreenTransition"

    const-string/jumbo v1, "getFreezeTimeOut() 6000"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    :cond_36
    const/16 v0, 0x1770

    goto :goto_29
.end method

.method private getHighestAppWindowTokenLayer(Lcom/android/server/wm/AppWindowToken;)I
    .registers 7
    .param p1, "atoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 2319
    const/4 v1, -0x1

    .line 2320
    .local v1, "ret":I
    if-nez p1, :cond_5

    move v2, v1

    .line 2329
    .end local v1    # "ret":I
    .local v2, "ret":I
    :goto_4
    return v2

    .line 2324
    .end local v2    # "ret":I
    .restart local v1    # "ret":I
    :cond_5
    iget-object v4, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 2325
    .local v3, "w":Lcom/android/server/wm/WindowState;
    iget v4, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ge v1, v4, :cond_b

    .line 2326
    iget v1, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    goto :goto_b

    .end local v3    # "w":Lcom/android/server/wm/WindowState;
    :cond_1e
    move v2, v1

    .line 2329
    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    goto :goto_4
.end method

.method private getMinLayer(Ljava/util/HashMap;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/SurfaceControl;",
            "Lcom/android/server/wm/WindowState;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 778
    .local p1, "windowsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;>;"
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v5

    if-gez v5, :cond_a

    .line 779
    :cond_8
    const/4 v3, -0x1

    .line 796
    :cond_9
    :goto_9
    return v3

    .line 782
    :cond_a
    const v3, 0x7fffffff

    .line 784
    .local v3, "minLayer":I
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 785
    .local v1, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 786
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 788
    .local v4, "win":Lcom/android/server/wm/WindowState;
    sget-boolean v5, DEBUG:Z

    if-eqz v5, :cond_52

    const-string v5, "DualScreenTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getMinLayer() : checking... "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", layer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_52
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v5, v3, :cond_15

    .line 791
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v5, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    goto :goto_15

    .line 795
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;>;"
    .end local v4    # "win":Lcom/android/server/wm/WindowState;
    :cond_5d
    sget-boolean v5, DEBUG:Z

    if-eqz v5, :cond_9

    const-string v5, "DualScreenTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getMinLayer() return minLayer="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9
.end method

.method private getTopWindow(Lcom/android/server/wm/AppWindowToken;)Lcom/android/server/wm/WindowState;
    .registers 9
    .param p1, "aToken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 803
    if-nez p1, :cond_4

    .line 804
    const/4 v2, 0x0

    .line 824
    :cond_3
    return-object v2

    .line 807
    :cond_4
    const/4 v1, 0x0

    .line 808
    .local v1, "tempMaxLayer":I
    const/4 v2, 0x0

    .line 810
    .local v2, "top":Lcom/android/server/wm/WindowState;
    iget-object v4, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 811
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3d

    .line 812
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_c

    .line 813
    const-string v4, "DualScreenTransition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getTopWindow() : skip... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 818
    :cond_3d
    iget v4, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ge v1, v4, :cond_c

    .line 819
    iget v1, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 820
    move-object v2, v3

    goto :goto_c
.end method

.method private getTransitTargetHeightOnAnimStage()I
    .registers 3

    .prologue
    .line 2302
    iget v0, p0, mTransitTargetDisplayWidth:I

    iget v1, p0, mTransitTargetDisplayHeight:I

    invoke-direct {p0, v0, v1}, getTransitTargetHeightOnAnimStage(II)I

    move-result v0

    return v0
.end method

.method private getTransitTargetHeightOnAnimStage(II)I
    .registers 4
    .param p1, "transitTargetDisplayWidth"    # I
    .param p2, "transitTargetDisplayHeight"    # I

    .prologue
    .line 2306
    iget v0, p0, mAnimStageDisplayCurrentRotation:I

    packed-switch v0, :pswitch_data_8

    :pswitch_5
    move p1, p2

    .line 2314
    .end local p1    # "transitTargetDisplayWidth":I
    :pswitch_6
    return p1

    .line 2306
    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getTransitTargetWidthOnAnimStage()I
    .registers 3

    .prologue
    .line 2285
    iget v0, p0, mTransitTargetDisplayWidth:I

    iget v1, p0, mTransitTargetDisplayHeight:I

    invoke-direct {p0, v0, v1}, getTransitTargetWidthOnAnimStage(II)I

    move-result v0

    return v0
.end method

.method private getTransitTargetWidthOnAnimStage(II)I
    .registers 4
    .param p1, "transitTargetDisplayWidth"    # I
    .param p2, "transitTargetDisplayHeight"    # I

    .prologue
    .line 2289
    iget v0, p0, mAnimStageDisplayCurrentRotation:I

    packed-switch v0, :pswitch_data_8

    :pswitch_5
    move p2, p1

    .line 2297
    .end local p2    # "transitTargetDisplayHeight":I
    :pswitch_6
    return p2

    .line 2289
    nop

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private hasAnimations()Z
    .registers 2

    .prologue
    .line 2181
    iget-object v0, p0, mScreenCoverAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_8

    iget-object v0, p0, mTransitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private moveWindowsToFront(Ljava/util/HashMap;I)V
    .registers 12
    .param p2, "targetLayer"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/SurfaceControl;",
            "Lcom/android/server/wm/WindowState;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 591
    .local p1, "windowsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;>;"
    sget-boolean v6, DEBUG:Z

    if-eqz v6, :cond_22

    .line 592
    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "moveWindowsToFront() caller="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_22
    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v6

    if-nez v6, :cond_48

    .line 596
    :cond_2a
    sget-boolean v6, DEBUG:Z

    if-eqz v6, :cond_47

    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "moveWindowsToFront() windowsMap="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_47
    return-void

    .line 600
    :cond_48
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 601
    .local v1, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_50
    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 602
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/SurfaceControl;

    .line 603
    .local v4, "surfaceControl":Landroid/view/SurfaceControl;
    if-eqz v4, :cond_50

    .line 604
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowState;

    .line 605
    .local v5, "w":Lcom/android/server/wm/WindowState;
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    add-int/2addr v6, p2

    invoke-virtual {v4, v6}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 606
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_50

    iget-object v6, p0, mMovedDimTargetWindows:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 608
    const/4 v3, 0x0

    .line 609
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_92

    .line 610
    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    .line 614
    :goto_8b
    const v6, 0xf4243

    invoke-virtual {v3, v6}, Lcom/android/server/wm/TaskStack;->setDimLayer(I)V

    goto :goto_50

    .line 612
    :cond_92
    iget-object v6, v5, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    goto :goto_8b
.end method

.method private removeMovedWindowLocked(Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 674
    iget-object v0, p0, mMovedWindowsForTransitTarget:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 675
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_2b

    .line 676
    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeMovedWindow() : removing... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in mFromDisplayWindowMapFrontTransitTarget."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_2b
    iget-object v0, p0, mMovedWindowsForTransitTarget:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, removeMovedWindowLockedInner(Lcom/android/server/wm/WindowState;Ljava/util/HashMap;)V

    .line 685
    :cond_30
    :goto_30
    return-void

    .line 679
    :cond_31
    iget-object v0, p0, mMovedWindowsForCoverScreen:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 680
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_5c

    .line 681
    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeMovedWindow() : removing... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in mCoveredDisplayWindowMapFrontTransitTarget."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_5c
    iget-object v0, p0, mMovedWindowsForCoverScreen:Ljava/util/HashMap;

    invoke-direct {p0, p1, v0}, removeMovedWindowLockedInner(Lcom/android/server/wm/WindowState;Ljava/util/HashMap;)V

    goto :goto_30
.end method

.method private removeMovedWindowLockedInner(Lcom/android/server/wm/WindowState;Ljava/util/HashMap;)V
    .registers 11
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowState;",
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/SurfaceControl;",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 688
    .local p2, "windowsMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;>;"
    const/4 v3, 0x0

    .line 690
    .local v3, "removeTarget":Landroid/view/SurfaceControl;
    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v5

    if-nez v5, :cond_a

    .line 718
    :cond_9
    :goto_9
    return-void

    .line 694
    :cond_a
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 695
    .local v1, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;>;>;"
    const/4 v4, 0x0

    .line 696
    .local v4, "tmpWin":Lcom/android/server/wm/WindowState;
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_13
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 697
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "tmpWin":Lcom/android/server/wm/WindowState;
    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 698
    .restart local v4    # "tmpWin":Lcom/android/server/wm/WindowState;
    sget-boolean v5, DEBUG:Z

    if-eqz v5, :cond_42

    .line 699
    const-string v5, "DualScreenTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeMovedWindowLockedInner() : checking... "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_42
    if-ne v4, p1, :cond_13

    .line 702
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "removeTarget":Landroid/view/SurfaceControl;
    check-cast v3, Landroid/view/SurfaceControl;

    .restart local v3    # "removeTarget":Landroid/view/SurfaceControl;
    goto :goto_13

    .line 706
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/SurfaceControl;Lcom/android/server/wm/WindowState;>;"
    :cond_4b
    if-eqz v3, :cond_9

    .line 707
    sget-boolean v5, DEBUG:Z

    if-eqz v5, :cond_6e

    .line 708
    const-string v5, "DualScreenTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeMovedWindowLockedInner() : removed... "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_6e
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_9

    iget-object v5, p0, mMovedDimTargetWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 715
    iget-object v5, p0, mMovedDimTargetWindows:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_9
.end method

.method private removeTransitTargetWindowLocked(Lcom/android/server/wm/WindowState;)V
    .registers 8
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 758
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_1d

    .line 759
    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeTransitTargetWindowLocked() : removing... "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_1d
    const/4 v2, 0x0

    .line 763
    .local v2, "targetInfo":Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    iget-object v3, p0, mTransitTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;

    .line 764
    .local v1, "info":Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    iget-object v3, v1, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->win:Lcom/android/server/wm/WindowState;

    if-eqz v3, :cond_24

    iget-object v3, v1, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->win:Lcom/android/server/wm/WindowState;

    if-ne v3, p1, :cond_24

    .line 765
    move-object v2, v1

    .line 770
    .end local v1    # "info":Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    :cond_39
    iget-object v3, p0, mTransitTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 772
    if-eqz p1, :cond_51

    iget-object v3, p0, mSkipAnimationTokens:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 773
    iget-object v3, p0, mSkipAnimationTokens:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 775
    :cond_51
    return-void
.end method

.method private selectMoveDirection(II)V
    .registers 4
    .param p1, "fromDisplayId"    # I
    .param p2, "toDisplayId"    # I

    .prologue
    .line 341
    invoke-direct {p0, p1, p2}, checkMoveDirectionType(II)I

    move-result v0

    iput v0, p0, mMoveDirection:I

    .line 342
    iget v0, p0, mMoveDirection:I

    packed-switch v0, :pswitch_data_10

    .line 351
    :goto_b
    return-void

    .line 345
    :pswitch_c
    const/4 v0, 0x0

    iput-object v0, p0, mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

    goto :goto_b

    .line 342
    :pswitch_data_10
    .packed-switch 0x3
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method private setTransitTransformInTransaction(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;FIIILcom/android/server/wm/WindowState;)V
    .registers 22
    .param p1, "surfaceControl"    # Landroid/view/SurfaceControl;
    .param p2, "matrix"    # Landroid/graphics/Matrix;
    .param p3, "alpha"    # F
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "layer"    # I
    .param p7, "w"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 2186
    sget-boolean v9, DEBUG_ANIM:Z

    if-eqz v9, :cond_43

    .line 2187
    const-string v9, "DualScreenTransition"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setTransitTransformInTransaction() "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " matrix="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " alpha="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " caller="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2192
    :cond_43
    if-nez p1, :cond_46

    .line 2282
    :cond_45
    :goto_45
    return-void

    .line 2196
    :cond_46
    iget v9, p0, mNextTransition:I

    const/16 v10, 0x190

    if-ne v9, v10, :cond_181

    .line 2197
    if-eqz p7, :cond_181

    .line 2198
    move-object/from16 v0, p7

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v9, v9, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    add-int p6, p6, v9

    .line 2199
    move-object/from16 v0, p7

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_74

    .line 2200
    const/4 v6, 0x0

    .line 2201
    .local v6, "stack":Lcom/android/server/wm/TaskStack;
    move-object/from16 v0, p7

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v9, :cond_394

    .line 2202
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v6

    .line 2206
    :goto_6b
    move-object/from16 v0, p7

    invoke-virtual {p0, v0}, getDimLayer(Lcom/android/server/wm/WindowState;)I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/server/wm/TaskStack;->setDimLayer(I)V

    .line 2209
    .end local v6    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_74
    sget-boolean v9, DEBUG_TRANSFORMS:Z

    if-eqz v9, :cond_92

    .line 2210
    const-string v9, "DualScreenTransition"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "applied window transformations prior to applying animation matrix "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2212
    :cond_92
    iget-object v9, p0, mTmpFloats:[F

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2213
    iget-object v9, p0, mTmpFloats:[F

    const/4 v10, 0x2

    aget v3, v9, v10

    .line 2214
    .local v3, "px":F
    iget-object v9, p0, mTmpFloats:[F

    const/4 v10, 0x5

    aget v4, v9, v10

    .line 2216
    .local v4, "py":F
    sget-boolean v9, DEBUG_TRANSFORMS:Z

    if-eqz v9, :cond_d5

    const-string v9, "DualScreenTransition"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  anim matrix position ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    :cond_d5
    sget-boolean v9, DEBUG_TRANSFORMS:Z

    if-eqz v9, :cond_113

    const-string v9, "DualScreenTransition"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  window matrix position ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p7

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v11, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p7

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v11, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2219
    :cond_113
    move-object/from16 v0, p7

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v9, v9, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    mul-float p3, p3, v9

    .line 2221
    iget-object v9, p0, mTmpFloats2:[F

    const/4 v10, 0x2

    move-object/from16 v0, p7

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v11, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    add-float/2addr v11, v3

    aput v11, v9, v10

    .line 2222
    iget-object v9, p0, mTmpFloats2:[F

    const/4 v10, 0x5

    move-object/from16 v0, p7

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v11, v11, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    add-float/2addr v11, v4

    aput v11, v9, v10

    .line 2223
    iget-object v9, p0, mTmpFloats2:[F

    const/4 v10, 0x0

    move-object/from16 v0, p7

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v11, v11, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    move-object/from16 v0, p7

    iget v12, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v11, v12

    aput v11, v9, v10

    .line 2224
    iget-object v9, p0, mTmpFloats2:[F

    const/4 v10, 0x3

    move-object/from16 v0, p7

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v11, v11, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    move-object/from16 v0, p7

    iget v12, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v11, v12

    aput v11, v9, v10

    .line 2225
    iget-object v9, p0, mTmpFloats2:[F

    const/4 v10, 0x1

    move-object/from16 v0, p7

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v11, v11, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    move-object/from16 v0, p7

    iget v12, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v11, v12

    aput v11, v9, v10

    .line 2226
    iget-object v9, p0, mTmpFloats2:[F

    const/4 v10, 0x4

    move-object/from16 v0, p7

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v11, v11, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    move-object/from16 v0, p7

    iget v12, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v11, v12

    aput v11, v9, v10

    .line 2227
    iget-object v9, p0, mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v10, p0, mTmpFloats2:[F

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->setValues([F)V

    .line 2228
    iget-object v9, p0, mTmpMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 2232
    .end local v3    # "px":F
    .end local v4    # "py":F
    :cond_181
    iget-object v9, p0, mTmpFloats:[F

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/graphics/Matrix;->getValues([F)V

    .line 2234
    iget-object v9, p0, mTmpFloats:[F

    const/4 v10, 0x2

    aget v7, v9, v10

    .line 2235
    .local v7, "x":F
    iget-object v9, p0, mTmpFloats:[F

    const/4 v10, 0x5

    aget v8, v9, v10

    .line 2236
    .local v8, "y":F
    sget-boolean v9, DEBUG_TRANSFORMS:Z

    if-eqz v9, :cond_26e

    if-eqz p7, :cond_26e

    .line 2237
    const-string v9, "DualScreenTransition"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    set alpha to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    const-string v9, "DualScreenTransition"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    set position to ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    const-string v9, "DualScreenTransition"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    const-string v9, "DualScreenTransition"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    set matrix to  matrix=["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, mTmpFloats:[F

    const/4 v12, 0x0

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, mTmpFloats:[F

    const/4 v12, 0x3

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, mTmpFloats:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, mTmpFloats:[F

    const/4 v12, 0x4

    aget v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p7

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    :cond_26e
    :try_start_26e
    invoke-virtual {p1, v7, v8}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 2247
    iget-object v9, p0, mTmpFloats:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    iget-object v10, p0, mTmpFloats:[F

    const/4 v11, 0x3

    aget v10, v10, v11

    iget-object v11, p0, mTmpFloats:[F

    const/4 v12, 0x1

    aget v11, v11, v12

    iget-object v12, p0, mTmpFloats:[F

    const/4 v13, 0x4

    aget v12, v12, v13

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 2250
    const/4 v9, 0x0

    cmpl-float v9, p3, v9

    if-ltz v9, :cond_298

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v9, p3, v9

    if-gtz v9, :cond_298

    .line 2251
    move/from16 v0, p3

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 2253
    :cond_298
    if-lez p6, :cond_29f

    .line 2254
    move/from16 v0, p6

    invoke-virtual {p1, v0}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 2257
    :cond_29f
    sget-boolean v9, DEBUG_TRANSFORMS:Z

    if-eqz v9, :cond_45

    .line 2259
    if-eqz p7, :cond_39e

    .line 2260
    const/4 v9, 0x4

    new-array v5, v9, [F

    const/4 v9, 0x0

    move-object/from16 v0, p7

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v10, v10, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    aput v10, v5, v9

    const/4 v9, 0x1

    move-object/from16 v0, p7

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v10, v10, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    aput v10, v5, v9

    const/4 v9, 0x2

    move-object/from16 v0, p7

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v10, v10, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    aput v10, v5, v9

    const/4 v9, 0x3

    move-object/from16 v0, p7

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v10, v10, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    aput v10, v5, v9

    .line 2269
    .local v5, "srcPnts":[F
    :goto_2cc
    const/4 v9, 0x4

    new-array v1, v9, [F

    .line 2270
    .local v1, "dstPnts":[F
    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    .line 2271
    const-string v9, "DualScreenTransition"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Original  : ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")-("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    aget v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x3

    aget v11, v5, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    const-string v9, "DualScreenTransition"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Transformed: ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    aget v11, v1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget v11, v1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")-("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    aget v11, v1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x3

    aget v11, v1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_364
    .catch Ljava/lang/Exception; {:try_start_26e .. :try_end_364} :catch_366

    goto/16 :goto_45

    .line 2276
    .end local v1    # "dstPnts":[F
    .end local v5    # "srcPnts":[F
    :catch_366
    move-exception v2

    .line 2277
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v9, DEBUG:Z

    if-eqz v9, :cond_45

    .line 2278
    const-string v9, "DualScreenTransition"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Surface is already released. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " callers="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x3

    invoke-static {v11}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_45

    .line 2204
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "x":F
    .end local v8    # "y":F
    .restart local v6    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_394
    move-object/from16 v0, p7

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v6

    goto/16 :goto_6b

    .line 2265
    .end local v6    # "stack":Lcom/android/server/wm/TaskStack;
    .restart local v7    # "x":F
    .restart local v8    # "y":F
    :cond_39e
    const/4 v9, 0x4

    :try_start_39f
    new-array v5, v9, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v10, v5, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v5, v9

    const/4 v9, 0x2

    move/from16 v0, p4

    int-to-float v10, v0

    aput v10, v5, v9

    const/4 v9, 0x3

    move/from16 v0, p5

    int-to-float v10, v0

    aput v10, v5, v9
    :try_end_3b5
    .catch Ljava/lang/Exception; {:try_start_39f .. :try_end_3b5} :catch_366

    .restart local v5    # "srcPnts":[F
    goto/16 :goto_2cc
.end method

.method private startAnimation(Landroid/view/SurfaceSession;JF)Z
    .registers 13
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "maxAnimationDuration"    # J
    .param p4, "animationScale"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2120
    sget-boolean v5, DEBUG:Z

    if-eqz v5, :cond_1f

    .line 2121
    const-string v5, "DualScreenTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startAnimation() animationScale="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    :cond_1f
    iget-object v5, p0, mTransitTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_28

    .line 2177
    :goto_27
    return v3

    .line 2127
    :cond_28
    iget-boolean v5, p0, mStarted:Z

    if-eqz v5, :cond_2e

    move v3, v4

    .line 2128
    goto :goto_27

    .line 2131
    :cond_2e
    iput-boolean v4, p0, mStarted:Z

    .line 2133
    sget-boolean v5, DEBUG:Z

    if-eqz v5, :cond_5b

    .line 2134
    const-string v5, "DualScreenTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startAnimation mTransitionType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mTransitionType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mMoveDirection="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mMoveDirection:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    :cond_5b
    iget-object v5, p0, mSkipAnimationTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_68

    .line 2139
    iget-object v5, p0, mSkipAnimationTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2142
    :cond_68
    invoke-direct {p0}, getTransitTargetWidthOnAnimStage()I

    move-result v2

    .line 2143
    .local v2, "transitTargetWidthOnAnimStage":I
    invoke-direct {p0}, getTransitTargetHeightOnAnimStage()I

    move-result v1

    .line 2144
    .local v1, "transitTargetHeightOnAnimStage":I
    sget-boolean v5, DEBUG:Z

    if-eqz v5, :cond_af

    .line 2145
    const-string v5, "DualScreenTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mTransitTargetDisplayCurrentRotation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mTransitTargetDisplayCurrentRotation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mAnimStageDisplayCurrentRotation="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, mAnimStageDisplayCurrentRotation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transitTargetWidthOnAnimStage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " transitTargetHeightOnAnimStage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    :cond_af
    invoke-virtual {p0}, loadAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, mTransitAnimation:Landroid/view/animation/Animation;

    .line 2155
    sget-boolean v5, DEBUG:Z

    if-eqz v5, :cond_d4

    .line 2156
    const-string v5, "DualScreenTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "load animation : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, mTransitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    :cond_d4
    sget-boolean v5, DEV_MODE_ENABLED:Z

    if-eqz v5, :cond_11a

    iget v5, p0, mDevDuration:I

    if-lez v5, :cond_11a

    .line 2160
    iget v5, p0, mDevDuration:I

    add-int/lit16 v0, v5, 0x3e8

    .line 2161
    .local v0, "maxDuration":I
    iget-object v5, p0, mTransitAnimation:Landroid/view/animation/Animation;

    iget v6, p0, mDevDuration:I

    add-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 2162
    iget-object v5, p0, mTransitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5, p4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 2163
    sget-boolean v5, DEBUG:Z

    if-eqz v5, :cond_115

    .line 2164
    const-string v5, "DualScreenTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "animation : maxDuration="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " scale="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    .end local v0    # "maxDuration":I
    :cond_115
    :goto_115
    iput-boolean v3, p0, mAnimRunning:Z

    move v3, v4

    .line 2177
    goto/16 :goto_27

    .line 2167
    :cond_11a
    iget-object v5, p0, mTransitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5, p2, p3}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 2168
    iget-object v5, p0, mTransitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5, p4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 2169
    sget-boolean v5, DEBUG:Z

    if-eqz v5, :cond_115

    .line 2170
    const-string v5, "DualScreenTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "animation : maxDuration="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " scale="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_115
.end method

.method private stepAnimation(J)Z
    .registers 10
    .param p1, "now"    # J

    .prologue
    .line 2082
    sget-boolean v3, DEBUG_ANIM:Z

    if-eqz v3, :cond_1e

    .line 2083
    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Step: mTransitAnimation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mTransitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2086
    :cond_1e
    const/4 v3, 0x0

    iput-boolean v3, p0, mMoreTransit:Z

    .line 2087
    iget-object v3, p0, mTransitAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_4d

    .line 2088
    iget-object v3, p0, mTransitAnimation:Landroid/view/animation/Animation;

    iget-object v4, p0, mTransitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, p1, p2, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v3

    iput-boolean v3, p0, mMoreTransit:Z

    .line 2089
    sget-boolean v3, DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_4d

    .line 2090
    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stepped dual screen transit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mTransitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2093
    :cond_4d
    iget-boolean v3, p0, mMoreTransit:Z

    if-nez v3, :cond_6d

    .line 2094
    iget-object v3, p0, mTransitAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_6d

    .line 2095
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_60

    const-string v3, "DualScreenTransition"

    const-string v4, "Transit animations done, clearing transit anim!"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2096
    :cond_60
    iget-object v3, p0, mTransitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3}, Landroid/view/animation/Animation;->cancel()V

    .line 2097
    const/4 v3, 0x0

    iput-object v3, p0, mTransitAnimation:Landroid/view/animation/Animation;

    .line 2098
    iget-object v3, p0, mTransitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->clear()V

    .line 2102
    :cond_6d
    iget-boolean v2, p0, mMoreTransit:Z

    .line 2104
    .local v2, "more":Z
    iget-object v3, p0, mTransitTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_75
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;

    .line 2105
    .local v1, "info":Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    sget-boolean v3, DEBUG_TRANSFORMS:Z

    if-eqz v3, :cond_ab

    .line 2106
    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Final transit: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, mTransitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mTransitInitialMatrix="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->initialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2109
    :cond_ab
    iget-object v3, v1, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->finalMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, mTransitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->initialMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    goto :goto_75

    .line 2111
    .end local v1    # "info":Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    :cond_b9
    sget-boolean v3, DEBUG_ANIM:Z

    if-eqz v3, :cond_d5

    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Step: more="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    :cond_d5
    return v2
.end method

.method public static transitionToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "transition"    # I

    .prologue
    .line 2391
    sparse-switch p0, :sswitch_data_1c

    .line 2414
    const-string v0, "<UNKNOWN>"

    :goto_5
    return-object v0

    .line 2393
    :sswitch_6
    const-string v0, "TRANSIT_TIMEOUT"

    goto :goto_5

    .line 2396
    :sswitch_9
    const-string v0, "TRANSIT_NONE"

    goto :goto_5

    .line 2399
    :sswitch_c
    const-string v0, "TRANSIT_TASK_MOVE"

    goto :goto_5

    .line 2402
    :sswitch_f
    const-string v0, "TRANSIT_EXPAND"

    goto :goto_5

    .line 2405
    :sswitch_12
    const-string v0, "TRANSIT_SHRINK"

    goto :goto_5

    .line 2408
    :sswitch_15
    const-string v0, "TRANSIT_FADEOUT"

    goto :goto_5

    .line 2411
    :sswitch_18
    const-string v0, "TRANSIT_DISPLAY_SCALE"

    goto :goto_5

    .line 2391
    nop

    :sswitch_data_1c
    .sparse-switch
        -0x1 -> :sswitch_6
        0x0 -> :sswitch_9
        0x64 -> :sswitch_c
        0xc8 -> :sswitch_f
        0x12c -> :sswitch_12
        0x190 -> :sswitch_18
        0x3e8 -> :sswitch_15
    .end sparse-switch
.end method

.method private updateDisplayInfos()V
    .registers 16

    .prologue
    .line 1139
    iget-object v12, p0, mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v8

    .line 1140
    .local v8, "transitTargetDisplay":Landroid/view/Display;
    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v12

    iput v12, p0, mTransitTargetDisplayOriginalRotation:I

    .line 1141
    iget v12, p0, mTransitTargetDisplayOriginalRotation:I

    iput v12, p0, mTransitTargetDisplayCurrentRotation:I

    .line 1143
    iget-object v12, p0, mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v10

    .line 1144
    .local v10, "transitTargetDisplayInfo":Landroid/view/DisplayInfo;
    iget v11, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1145
    .local v11, "transitTargetDisplayWidth":I
    iget v9, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1147
    .local v9, "transitTargetDisplayHeight":I
    iget v12, p0, mTransitTargetDisplayOriginalRotation:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_24

    iget v12, p0, mTransitTargetDisplayOriginalRotation:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_13a

    .line 1149
    :cond_24
    iput v9, p0, mTransitTargetDisplayWidth:I

    .line 1150
    iput v11, p0, mTransitTargetDisplayHeight:I

    .line 1155
    :goto_28
    iget-object v12, p0, mFromDisplay:Lcom/android/server/wm/DisplayContent;

    iget-object v13, p0, mOriginalTransitTargetDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 1156
    sget-boolean v12, DEBUG:Z

    if-eqz v12, :cond_81

    .line 1157
    const-string v12, "DualScreenTransition"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateDisplayInfos() mTransitTargetDisplayWidth="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, mTransitTargetDisplayWidth:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mTransitTargetDisplayHeight="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, mTransitTargetDisplayHeight:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    const-string v12, "DualScreenTransition"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateDisplayInfos() mOriginalTransitTargetDisplayRect="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, mOriginalTransitTargetDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mTransitTargetDisplayOriginalRotation="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, mTransitTargetDisplayOriginalRotation:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    :cond_81
    iget-object v12, p0, mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

    if-eqz v12, :cond_df

    .line 1168
    iget-object v12, p0, mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v4

    .line 1169
    .local v4, "coveredDisplay":Landroid/view/Display;
    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v12

    iput v12, p0, mCoveredDisplayOriginalRotation:I

    .line 1170
    iget v12, p0, mCoveredDisplayOriginalRotation:I

    iput v12, p0, mCoveredDisplayCurrentRotation:I

    .line 1172
    iget-object v12, p0, mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v6

    .line 1173
    .local v6, "coveredDisplayInfo":Landroid/view/DisplayInfo;
    iget v7, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1174
    .local v7, "coveredDisplayWidth":I
    iget v5, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1176
    .local v5, "coveredDisplayHeight":I
    iget v12, p0, mCoveredDisplayOriginalRotation:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_a9

    iget v12, p0, mCoveredDisplayOriginalRotation:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_140

    .line 1178
    :cond_a9
    iput v5, p0, mCoveredDisplayWidth:I

    .line 1179
    iput v7, p0, mCoveredDisplayHeight:I

    .line 1184
    :goto_ad
    iget-object v12, p0, mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

    iget-object v13, p0, mOriginalCoveredDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 1185
    sget-boolean v12, DEBUG:Z

    if-eqz v12, :cond_df

    .line 1186
    const-string v12, "DualScreenTransition"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateDisplayInfos() mOriginalCoveredDisplayRect="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, mOriginalCoveredDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mCoveredDisplayOriginalRotation="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, mCoveredDisplayOriginalRotation:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    .end local v4    # "coveredDisplay":Landroid/view/Display;
    .end local v5    # "coveredDisplayHeight":I
    .end local v6    # "coveredDisplayInfo":Landroid/view/DisplayInfo;
    .end local v7    # "coveredDisplayWidth":I
    :cond_df
    iget-object v12, p0, mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1194
    .local v0, "animStageDisplay":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v12

    iput v12, p0, mAnimStageDisplayOriginalRotation:I

    .line 1195
    iget v12, p0, mAnimStageDisplayOriginalRotation:I

    iput v12, p0, mAnimStageDisplayCurrentRotation:I

    .line 1197
    iget-object v12, p0, mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v12}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 1198
    .local v2, "animStageDisplayInfo":Landroid/view/DisplayInfo;
    iget v3, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1199
    .local v3, "animStageDisplayWidth":I
    iget v1, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1201
    .local v1, "animStageDisplayHeight":I
    iget v12, p0, mAnimStageDisplayCurrentRotation:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_103

    iget v12, p0, mAnimStageDisplayCurrentRotation:I

    const/4 v13, 0x3

    if-ne v12, v13, :cond_146

    .line 1203
    :cond_103
    iput v1, p0, mAnimStageDisplayWidth:I

    .line 1204
    iput v3, p0, mAnimStageDisplayHeight:I

    .line 1209
    :goto_107
    iget-object v12, p0, mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    iget-object v13, p0, mOriginalAnimStageDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 1210
    sget-boolean v12, DEBUG:Z

    if-eqz v12, :cond_139

    .line 1211
    const-string v12, "DualScreenTransition"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateDisplayInfos() mOriginalAnimStageDisplayRect="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, mOriginalAnimStageDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mAnimStageDisplayCurrentRotation="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, mAnimStageDisplayCurrentRotation:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    :cond_139
    return-void

    .line 1152
    .end local v0    # "animStageDisplay":Landroid/view/Display;
    .end local v1    # "animStageDisplayHeight":I
    .end local v2    # "animStageDisplayInfo":Landroid/view/DisplayInfo;
    .end local v3    # "animStageDisplayWidth":I
    :cond_13a
    iput v11, p0, mTransitTargetDisplayWidth:I

    .line 1153
    iput v9, p0, mTransitTargetDisplayHeight:I

    goto/16 :goto_28

    .line 1181
    .restart local v4    # "coveredDisplay":Landroid/view/Display;
    .restart local v5    # "coveredDisplayHeight":I
    .restart local v6    # "coveredDisplayInfo":Landroid/view/DisplayInfo;
    .restart local v7    # "coveredDisplayWidth":I
    :cond_140
    iput v7, p0, mCoveredDisplayWidth:I

    .line 1182
    iput v5, p0, mCoveredDisplayHeight:I

    goto/16 :goto_ad

    .line 1206
    .end local v4    # "coveredDisplay":Landroid/view/Display;
    .end local v5    # "coveredDisplayHeight":I
    .end local v6    # "coveredDisplayInfo":Landroid/view/DisplayInfo;
    .end local v7    # "coveredDisplayWidth":I
    .restart local v0    # "animStageDisplay":Landroid/view/Display;
    .restart local v1    # "animStageDisplayHeight":I
    .restart local v2    # "animStageDisplayInfo":Landroid/view/DisplayInfo;
    .restart local v3    # "animStageDisplayWidth":I
    :cond_146
    iput v3, p0, mAnimStageDisplayWidth:I

    .line 1207
    iput v1, p0, mAnimStageDisplayHeight:I

    goto :goto_107
.end method


# virtual methods
.method addTransitTargetLocked(Lcom/android/server/wm/AppWindowToken;)V
    .registers 11
    .param p1, "token"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 721
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_1c

    .line 722
    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTransitTargetLocked() : token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_1c
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_22
    :goto_22
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fb

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 725
    .local v3, "win":Lcom/android/server/wm/WindowState;
    iget-object v0, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_52

    .line 726
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_22

    .line 727
    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTransitTarget() : skip adding... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 731
    :cond_52
    iget-object v0, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_dd

    .line 732
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_c2

    .line 733
    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTransitTargetLocked() : adding... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTransitTargetLocked() :  mAnimLayer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLastLayer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mBaseLayer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v2, v2, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mLayer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget v2, v2, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_c2
    iget-object v8, p0, mTransitTargetInfos:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;

    iget-object v1, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    const v2, 0xf4242

    iget v4, p0, mTransitTargetDisplayWidth:I

    iget v5, p0, mTransitTargetDisplayHeight:I

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;-><init>(Landroid/view/SurfaceControl;ILcom/android/server/wm/WindowState;III)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_22

    .line 744
    :cond_dd
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_22

    .line 745
    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTransitTargetLocked() : skip adding... (no SurfaceControl) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22

    .line 750
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    :cond_fb
    return-void
.end method

.method canOverrideTransition(ILcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayContent;)Z
    .registers 12
    .param p1, "newTransition"    # I
    .param p2, "fromDisplay"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "toDisplay"    # Lcom/android/server/wm/DisplayContent;
    .param p4, "animStageDisplay"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    const/4 v3, 0x0

    .line 1010
    sget-boolean v4, DEBUG:Z

    if-eqz v4, :cond_3f

    .line 1011
    const-string v4, "DualScreenTransition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canOverrideTransition() : currentTransition="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, mNextTransition:I

    invoke-static {v6}, transitionToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " newTransition="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, transitionToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " caller="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_3f
    invoke-virtual {p0}, isAnimating()Z

    move-result v4

    if-eqz v4, :cond_46

    .line 1034
    :cond_45
    :goto_45
    return v3

    .line 1021
    :cond_46
    const/16 v4, 0x64

    if-ne p1, v4, :cond_45

    .line 1022
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    invoke-direct {p0, v4, v5}, checkMoveDirectionType(II)I

    move-result v1

    .line 1023
    .local v1, "moveDirectionType":I
    const/4 v4, 0x4

    if-eq v1, v4, :cond_45

    const/4 v4, 0x3

    if-eq v1, v4, :cond_45

    .line 1027
    iget-object v4, p0, mToDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    .line 1028
    .local v2, "prevToDisplayId":I
    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 1029
    .local v0, "currentFromDisplayId":I
    const/16 v4, 0x12c

    invoke-virtual {p0, v4}, isTransitionEqual(I)Z

    move-result v4

    if-eqz v4, :cond_45

    if-ne v2, v0, :cond_45

    .line 1030
    const/4 v3, 0x1

    goto :goto_45
.end method

.method public directionToString(I)Ljava/lang/String;
    .registers 4
    .param p1, "direction"    # I

    .prologue
    .line 2431
    packed-switch p1, :pswitch_data_20

    .line 2437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mTransitionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_19
    return-object v0

    .line 2433
    :pswitch_1a
    const-string v0, "DIRECTION_MAIN_TO_SUB"

    goto :goto_19

    .line 2435
    :pswitch_1d
    const-string v0, "DIRECTION_SUB_TO_MAIN"

    goto :goto_19

    .line 2431
    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1d
    .end packed-switch
.end method

.method dismiss(Landroid/view/SurfaceSession;JF)Z
    .registers 9
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "maxAnimationDuration"    # J
    .param p4, "animationScale"    # F

    .prologue
    const/4 v0, 0x0

    .line 1453
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_c

    const-string v1, "DualScreenTransition"

    const-string v2, "Dismiss!"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    :cond_c
    sget-boolean v1, DUALSCREEN_VI_ENABLED:Z

    if-nez v1, :cond_1c

    .line 1456
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_1b

    const-string v1, "DualScreenTransition"

    const-string v2, "cannot dismiss! does not support DUALSCREEN_VI"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    :cond_1b
    :goto_1b
    return v0

    .line 1460
    :cond_1c
    iget-object v1, p0, mTransitTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_30

    .line 1461
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_1b

    .line 1462
    const-string v1, "DualScreenTransition"

    const-string v2, "cannot dismiss! mTransitTargetSurfaceControls.size()=0"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 1467
    :cond_30
    iget-boolean v1, p0, mStarted:Z

    if-nez v1, :cond_37

    .line 1468
    invoke-direct {p0, p1, p2, p3, p4}, startAnimation(Landroid/view/SurfaceSession;JF)Z

    .line 1471
    :cond_37
    iget-boolean v1, p0, mStarted:Z

    if-nez v1, :cond_47

    .line 1472
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_1b

    const-string v1, "DualScreenTransition"

    const-string v2, "cannot dismiss! animation is not started"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 1476
    :cond_47
    const/4 v0, 0x1

    goto :goto_1b
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 2443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2444
    iget v0, p0, mNextTransition:I

    if-eqz v0, :cond_28

    .line 2445
    const-string v0, "  mNextTransition="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2446
    iget v0, p0, mNextTransition:I

    invoke-static {v0}, transitionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2448
    :cond_28
    iget v0, p0, mTransitionType:I

    if-eqz v0, :cond_3a

    .line 2449
    const-string v0, "  mTransitionType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2450
    iget v0, p0, mTransitionType:I

    invoke-virtual {p0, v0}, transitTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2452
    :cond_3a
    iget v0, p0, mTransitionType:I

    packed-switch v0, :pswitch_data_50

    .line 2458
    :goto_3f
    return-void

    .line 2454
    :pswitch_40
    const-string v0, "  mMoveDirection="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2455
    iget v0, p0, mMoveDirection:I

    invoke-virtual {p0, v0}, directionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3f

    .line 2452
    nop

    :pswitch_data_50
    .packed-switch 0x65
        :pswitch_40
    .end packed-switch
.end method

.method freezeForTransitionLocked(Lcom/android/server/wm/AppWindowToken;Z)V
    .registers 41
    .param p1, "transitTargetAtoken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "inTransaction"    # Z

    .prologue
    .line 829
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_22

    .line 830
    const-string v2, "DualScreenTransition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "freezeForTransition() callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_22
    invoke-virtual/range {p0 .. p0}, hasScreenshot()Z

    move-result v2

    if-eqz v2, :cond_30

    .line 834
    const-string v2, "DualScreenTransition"

    const-string/jumbo v3, "freezeForTransition() already has screenshots"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_30
    invoke-direct/range {p0 .. p0}, updateDisplayInfos()V

    .line 840
    if-nez p2, :cond_38

    .line 843
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 848
    :cond_38
    :try_start_38
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v2}, Lcom/android/server/wm/InputMonitor;->freezeInputDispatchingLw()V

    .line 850
    move-object/from16 v0, p0

    iget v2, v0, mNextTransition:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_210

    .line 851
    move-object/from16 v0, p0

    iget-object v2, v0, mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v3, 0x7d0

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x2710

    add-int/lit8 v37, v2, -0x1

    .line 852
    .local v37, "topWindowLayer":I
    const/16 v35, 0x0

    .line 853
    .local v35, "screenshotMinLayer":I
    move/from16 v16, v37

    .line 854
    .local v16, "screenshotMaxLayerForCoveredDisplay":I
    move/from16 v7, v37

    .line 855
    .local v7, "screenshotMaxLayerForFromDisplay":I
    const/16 v34, 0x0

    .line 857
    .local v34, "moveWindowsToFront":I
    move-object/from16 v0, p0

    iget v2, v0, mMoveDirection:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6d

    move-object/from16 v0, p0

    iget v2, v0, mMoveDirection:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b1

    .line 858
    :cond_6d
    if-eqz p1, :cond_99

    .line 859
    invoke-direct/range {p0 .. p1}, getTopWindow(Lcom/android/server/wm/AppWindowToken;)Lcom/android/server/wm/WindowState;

    move-result-object v36

    .line 860
    .local v36, "topWindow":Lcom/android/server/wm/WindowState;
    sget-boolean v2, DEV_MOVE_WINDOWS_ENABLED:Z

    if-eqz v2, :cond_99

    if-eqz v36, :cond_99

    move-object/from16 v0, p0

    iget-object v2, v0, mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v2, v1}, canMoveWindowsToFront(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WindowState;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 863
    const-string v2, "DualScreenTransition"

    const-string/jumbo v3, "freezeForTransition() : moveWindowsToFront|=TRANSIT_TARGET_DISPLAY"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    move-object/from16 v0, v36

    iget v7, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 865
    or-int/lit8 v34, v34, 0x1

    .line 869
    .end local v36    # "topWindow":Lcom/android/server/wm/WindowState;
    :cond_99
    sget-boolean v2, DEV_MOVE_WINDOWS_ENABLED:Z

    if-eqz v2, :cond_b1

    move-object/from16 v0, p0

    iget v2, v0, mTransitTargetDisplayCurrentRotation:I

    move-object/from16 v0, p0

    iget v3, v0, mCoveredDisplayCurrentRotation:I

    if-ne v2, v3, :cond_b1

    .line 871
    const-string v2, "DualScreenTransition"

    const-string/jumbo v3, "freezeForTransition() : moveWindowsToFront|=COVER_DISPLAY"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    or-int/lit8 v34, v34, 0x2

    .line 877
    :cond_b1
    const/4 v9, 0x0

    .line 878
    .local v9, "transitTargetCapture":Landroid/view/SurfaceControl;
    move-object/from16 v0, p0

    iget-object v3, v0, mFromDisplay:Lcom/android/server/wm/DisplayContent;

    const-string v4, "TransitTargetSurface"

    move-object/from16 v0, p0

    iget v5, v0, mTransitTargetDisplayWidth:I

    move-object/from16 v0, p0

    iget v6, v0, mTransitTargetDisplayHeight:I

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, createSurface(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;IIII)Landroid/view/SurfaceControl;

    move-result-object v9

    .line 892
    move-object/from16 v0, p0

    iget-object v2, v0, mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v9, v2}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 894
    and-int/lit8 v2, v34, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_f4

    .line 895
    move-object/from16 v0, p0

    iget-object v2, v0, mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, mMovedWindowsForTransitTarget:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v7}, collectWindowsToFront(Lcom/android/server/wm/WindowList;Ljava/util/HashMap;I)V

    .line 896
    move-object/from16 v0, p0

    iget-object v2, v0, mMovedWindowsForTransitTarget:Ljava/util/HashMap;

    const v3, 0xf4242

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, moveWindowsToFront(Ljava/util/HashMap;I)V

    .line 899
    :cond_f4
    const v10, 0xf4242

    .line 900
    .local v10, "transitTargetLayer":I
    move-object/from16 v0, p0

    iget v2, v0, mMoveDirection:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_104

    .line 901
    invoke-direct/range {p0 .. p1}, getHighestAppWindowTokenLayer(Lcom/android/server/wm/AppWindowToken;)I

    move-result v2

    add-int/lit16 v10, v2, 0x3e8

    .line 903
    :cond_104
    invoke-virtual {v9, v10}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 904
    invoke-virtual {v9}, Landroid/view/SurfaceControl;->show()V

    .line 905
    move-object/from16 v0, p0

    iget-object v2, v0, mTransitTargetInfos:Ljava/util/ArrayList;

    new-instance v8, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v12, v0, mTransitTargetDisplayWidth:I

    move-object/from16 v0, p0

    iget v13, v0, mTransitTargetDisplayHeight:I

    move-object/from16 v0, p0

    iget-object v3, v0, mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v14

    invoke-direct/range {v8 .. v14}, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;-><init>(Landroid/view/SurfaceControl;ILcom/android/server/wm/WindowState;III)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    move-object/from16 v0, p0

    iget-object v2, v0, mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

    if-eqz v2, :cond_1ad

    .line 910
    move-object/from16 v0, p0

    iget-object v12, v0, mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

    const-string v13, "ScreenCoverSurface"

    move-object/from16 v0, p0

    iget v14, v0, mCoveredDisplayWidth:I

    move-object/from16 v0, p0

    iget v15, v0, mCoveredDisplayHeight:I

    const/16 v17, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v17}, createSurface(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;IIII)Landroid/view/SurfaceControl;

    move-result-object v18

    .line 915
    .local v18, "screenCoverSurface":Landroid/view/SurfaceControl;
    and-int/lit8 v2, v34, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_167

    .line 916
    move-object/from16 v0, p0

    iget-object v2, v0, mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, mMovedWindowsForCoverScreen:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v2, v3, v1}, collectWindowsToFront(Lcom/android/server/wm/WindowList;Ljava/util/HashMap;I)V

    .line 917
    move-object/from16 v0, p0

    iget-object v2, v0, mMovedWindowsForCoverScreen:Ljava/util/HashMap;

    const v3, 0xf4241

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, moveWindowsToFront(Ljava/util/HashMap;I)V

    .line 920
    :cond_167
    move-object/from16 v0, p0

    iget v2, v0, mMoveDirection:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1d5

    .line 921
    move-object/from16 v0, p0

    iget-object v2, v0, mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 922
    const v2, 0xf4242

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 924
    move-object/from16 v0, p0

    iget-object v2, v0, mTransitTargetInfos:Ljava/util/ArrayList;

    new-instance v17, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;

    const v19, 0xf4242

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget v0, v0, mCoveredDisplayWidth:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, mCoveredDisplayHeight:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v3, v0, mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v23

    invoke-direct/range {v17 .. v23}, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;-><init>(Landroid/view/SurfaceControl;ILcom/android/server/wm/WindowState;III)V

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 932
    :goto_1aa
    invoke-virtual/range {v18 .. v18}, Landroid/view/SurfaceControl;->show()V

    .line 935
    .end local v18    # "screenCoverSurface":Landroid/view/SurfaceControl;
    :cond_1ad
    move-object/from16 v0, p0

    iget-object v2, v0, mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p0

    iget v3, v0, mAnimStageDisplayCurrentRotation:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, setRotationInTransaction(Lcom/android/server/wm/DisplayContent;I)V

    .line 993
    .end local v7    # "screenshotMaxLayerForFromDisplay":I
    .end local v9    # "transitTargetCapture":Landroid/view/SurfaceControl;
    .end local v10    # "transitTargetLayer":I
    .end local v16    # "screenshotMaxLayerForCoveredDisplay":I
    .end local v34    # "moveWindowsToFront":I
    .end local v35    # "screenshotMinLayer":I
    .end local v37    # "topWindowLayer":I
    :cond_1ba
    :goto_1ba
    move-object/from16 v0, p0

    iget-object v2, v0, mHandler:Lcom/android/server/wm/DualScreenTransition$H;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DualScreenTransition$H;->removeMessages(I)V

    .line 994
    move-object/from16 v0, p0

    iget-object v2, v0, mHandler:Lcom/android/server/wm/DualScreenTransition$H;

    const/4 v3, 0x1

    invoke-static {}, getFreezeTimeOut()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/DualScreenTransition$H;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1cf
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_38 .. :try_end_1cf} :catch_1fe
    .catchall {:try_start_38 .. :try_end_1cf} :catchall_209

    .line 1000
    :goto_1cf
    if-nez p2, :cond_1d4

    .line 1001
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1006
    :cond_1d4
    return-void

    .line 927
    .restart local v7    # "screenshotMaxLayerForFromDisplay":I
    .restart local v9    # "transitTargetCapture":Landroid/view/SurfaceControl;
    .restart local v10    # "transitTargetLayer":I
    .restart local v16    # "screenshotMaxLayerForCoveredDisplay":I
    .restart local v18    # "screenCoverSurface":Landroid/view/SurfaceControl;
    .restart local v34    # "moveWindowsToFront":I
    .restart local v35    # "screenshotMinLayer":I
    .restart local v37    # "topWindowLayer":I
    :cond_1d5
    :try_start_1d5
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, mScreenCoverSurface:Landroid/view/SurfaceControl;

    .line 928
    move-object/from16 v0, p0

    iget-object v2, v0, mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 929
    move-object/from16 v0, p0

    iget-object v2, v0, mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p0

    iget v3, v0, mCoveredDisplayOriginalRotation:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, setRotationInTransaction(Lcom/android/server/wm/DisplayContent;I)V

    .line 930
    const v2, 0xf4241

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setLayer(I)V
    :try_end_1fd
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1d5 .. :try_end_1fd} :catch_1fe
    .catchall {:try_start_1d5 .. :try_end_1fd} :catchall_209

    goto :goto_1aa

    .line 996
    .end local v7    # "screenshotMaxLayerForFromDisplay":I
    .end local v9    # "transitTargetCapture":Landroid/view/SurfaceControl;
    .end local v10    # "transitTargetLayer":I
    .end local v16    # "screenshotMaxLayerForCoveredDisplay":I
    .end local v18    # "screenCoverSurface":Landroid/view/SurfaceControl;
    .end local v34    # "moveWindowsToFront":I
    .end local v35    # "screenshotMinLayer":I
    .end local v37    # "topWindowLayer":I
    :catch_1fe
    move-exception v33

    .line 997
    .local v33, "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_1ff
    const-string v2, "DualScreenTransition"

    const-string v3, "Unable to allocate freeze surface"

    move-object/from16 v0, v33

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_208
    .catchall {:try_start_1ff .. :try_end_208} :catchall_209

    goto :goto_1cf

    .line 1000
    .end local v33    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catchall_209
    move-exception v2

    if-nez p2, :cond_20f

    .line 1001
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    :cond_20f
    throw v2

    .line 936
    :cond_210
    :try_start_210
    move-object/from16 v0, p0

    iget v2, v0, mNextTransition:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_286

    .line 937
    move-object/from16 v0, p0

    iget-object v2, v0, mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v3, 0x7d0

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v37

    .line 938
    .restart local v37    # "topWindowLayer":I
    move/from16 v0, v37

    mul-int/lit16 v2, v0, 0x2710

    add-int/lit8 v24, v2, -0x1

    .line 939
    .local v24, "screenshotMaxLayer":I
    const/16 v35, 0x0

    .line 946
    .restart local v35    # "screenshotMinLayer":I
    move-object/from16 v0, p0

    iget-object v0, v0, mToDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v20, v0

    const-string v21, "ScreenCoverSurface"

    move-object/from16 v0, p0

    iget v0, v0, mCoveredDisplayWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, mCoveredDisplayHeight:I

    move/from16 v23, v0

    const/16 v25, 0x0

    move-object/from16 v19, p0

    invoke-direct/range {v19 .. v25}, createSurface(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;IIII)Landroid/view/SurfaceControl;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, mScreenCoverSurface:Landroid/view/SurfaceControl;

    .line 949
    move-object/from16 v0, p0

    iget-object v2, v0, mScreenCoverSurface:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget-object v3, v0, mToDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 950
    move-object/from16 v0, p0

    iget-object v2, v0, mScreenCoverSurface:Landroid/view/SurfaceControl;

    const v3, 0xf4241

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 951
    move-object/from16 v0, p0

    iget-object v2, v0, mScreenCoverSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->show()V

    .line 953
    move-object/from16 v0, p0

    iget-object v2, v0, mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p0

    iget v3, v0, mAnimStageDisplayCurrentRotation:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, setRotationInTransaction(Lcom/android/server/wm/DisplayContent;I)V

    .line 954
    move-object/from16 v0, p0

    iget-object v2, v0, mToDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p0

    iget v3, v0, mCoveredDisplayOriginalRotation:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, setRotationInTransaction(Lcom/android/server/wm/DisplayContent;I)V

    goto/16 :goto_1ba

    .line 955
    .end local v24    # "screenshotMaxLayer":I
    .end local v35    # "screenshotMinLayer":I
    .end local v37    # "topWindowLayer":I
    :cond_286
    move-object/from16 v0, p0

    iget v2, v0, mNextTransition:I

    const/16 v3, 0x12c

    if-ne v2, v3, :cond_317

    .line 956
    move-object/from16 v0, p0

    iget-object v2, v0, mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v3, 0x7d0

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v37

    .line 957
    .restart local v37    # "topWindowLayer":I
    move/from16 v0, v37

    mul-int/lit16 v2, v0, 0x2710

    add-int/lit8 v24, v2, -0x1

    .line 958
    .restart local v24    # "screenshotMaxLayer":I
    const/16 v35, 0x0

    .line 965
    .restart local v35    # "screenshotMinLayer":I
    move-object/from16 v0, p0

    iget-object v0, v0, mFromDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v20, v0

    const-string v21, "TransitTargetSurface"

    move-object/from16 v0, p0

    iget v0, v0, mTransitTargetDisplayWidth:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, mTransitTargetDisplayHeight:I

    move/from16 v23, v0

    const/16 v25, 0x0

    move-object/from16 v19, p0

    invoke-direct/range {v19 .. v25}, createSurface(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;IIII)Landroid/view/SurfaceControl;

    move-result-object v26

    .line 968
    .local v26, "transitTargetSurfaceControl":Landroid/view/SurfaceControl;
    move-object/from16 v0, p0

    iget-object v2, v0, mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 969
    const v2, 0xf4242

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 970
    invoke-virtual/range {v26 .. v26}, Landroid/view/SurfaceControl;->show()V

    .line 971
    move-object/from16 v0, p0

    iget-object v2, v0, mTransitTargetInfos:Ljava/util/ArrayList;

    new-instance v25, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;

    const v27, 0xf4242

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, mTransitTargetDisplayWidth:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, mTransitTargetDisplayHeight:I

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v3, v0, mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v31

    invoke-direct/range {v25 .. v31}, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;-><init>(Landroid/view/SurfaceControl;ILcom/android/server/wm/WindowState;III)V

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    move-object/from16 v0, p0

    iget-object v2, v0, mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p0

    iget v3, v0, mAnimStageDisplayCurrentRotation:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, setRotationInTransaction(Lcom/android/server/wm/DisplayContent;I)V

    .line 975
    move-object/from16 v0, p0

    iget-object v2, v0, mFromDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p0

    iget v3, v0, mTransitTargetDisplayOriginalRotation:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, setRotationInTransaction(Lcom/android/server/wm/DisplayContent;I)V

    goto/16 :goto_1ba

    .line 976
    .end local v24    # "screenshotMaxLayer":I
    .end local v26    # "transitTargetSurfaceControl":Landroid/view/SurfaceControl;
    .end local v35    # "screenshotMinLayer":I
    .end local v37    # "topWindowLayer":I
    :cond_317
    move-object/from16 v0, p0

    iget v2, v0, mNextTransition:I

    const/16 v3, 0x190

    if-ne v2, v3, :cond_1ba

    .line 977
    invoke-virtual/range {p0 .. p1}, addTransitTargetLocked(Lcom/android/server/wm/AppWindowToken;)V

    .line 979
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/AppWindowToken;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v32

    .line 980
    .local v32, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-direct/range {p0 .. p1}, getTopWindow(Lcom/android/server/wm/AppWindowToken;)Lcom/android/server/wm/WindowState;

    move-result-object v36

    .line 981
    .restart local v36    # "topWindow":Lcom/android/server/wm/WindowState;
    if-eqz v36, :cond_1ba

    .line 982
    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    move/from16 v37, v0

    .line 984
    .restart local v37    # "topWindowLayer":I
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, mMovedWindowsForTransitTarget:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-direct {v0, v2, v3, v1}, collectWindowsToFront(Lcom/android/server/wm/WindowList;Ljava/util/HashMap;I)V

    .line 985
    move-object/from16 v0, p0

    iget-object v2, v0, mMovedWindowsForTransitTarget:Ljava/util/HashMap;

    const v3, 0xf4242

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, moveWindowsToFront(Ljava/util/HashMap;I)V
    :try_end_355
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_210 .. :try_end_355} :catch_1fe
    .catchall {:try_start_210 .. :try_end_355} :catchall_209

    goto/16 :goto_1ba
.end method

.method getDimLayer(Lcom/android/server/wm/WindowState;)I
    .registers 4
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    const v0, 0xf4242

    .line 552
    if-eqz p1, :cond_c

    .line 553
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    .line 555
    :cond_c
    return v0
.end method

.method getFromScreen()Lcom/samsung/android/dualscreen/DualScreen;
    .registers 2

    .prologue
    .line 516
    iget-object v0, p0, mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenUtils;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v0

    return-object v0
.end method

.method getToScreen()Lcom/samsung/android/dualscreen/DualScreen;
    .registers 2

    .prologue
    .line 520
    iget-object v0, p0, mToDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/multidisplay/dualscreen/DualScreenUtils;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v0

    return-object v0
.end method

.method getTransition()I
    .registers 2

    .prologue
    .line 438
    iget v0, p0, mNextTransition:I

    return v0
.end method

.method getWaitingAppTokenDrawn()Lcom/android/server/wm/AppWindowToken;
    .registers 4

    .prologue
    .line 472
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_1f

    .line 473
    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getWaitingAppTokenDrawn() : mWatingAppToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mWatingAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_1f
    iget-object v0, p0, mWatingAppToken:Lcom/android/server/wm/AppWindowToken;

    return-object v0
.end method

.method getWaitingScreenDrawn()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/dualscreen/DualScreen;",
            ">;"
        }
    .end annotation

    .prologue
    .line 505
    sget-boolean v3, DEBUG:Z

    if-eqz v3, :cond_61

    .line 506
    iget-object v3, p0, mWaitingScreens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/dualscreen/DualScreen;

    .line 507
    .local v2, "screen":Lcom/samsung/android/dualscreen/DualScreen;
    iget-object v3, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 508
    .local v0, "di":Landroid/view/DisplayInfo;
    const-string v3, "DualScreenTransition"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getWaitingScreenDrawn() : waitingDisplay d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/dualscreen/DualScreen;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 512
    .end local v0    # "di":Landroid/view/DisplayInfo;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "screen":Lcom/samsung/android/dualscreen/DualScreen;
    :cond_61
    iget-object v3, p0, mWaitingScreens:Ljava/util/ArrayList;

    return-object v3
.end method

.method hasScreenshot()Z
    .registers 6

    .prologue
    .line 454
    iget-object v2, p0, mTransitTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 455
    .local v1, "transitTargetSize":I
    if-gtz v1, :cond_c

    iget-object v2, p0, mScreenCoverSurface:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_49

    :cond_c
    const/4 v0, 0x1

    .line 456
    .local v0, "hasScreenshot":Z
    :goto_d
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_48

    .line 457
    const-string v2, "DualScreenTransition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hasScreenshot() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " transitTargetSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " caller=["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_48
    return v0

    .line 455
    .end local v0    # "hasScreenshot":Z
    :cond_49
    const/4 v0, 0x0

    goto :goto_d
.end method

.method isAnimating()Z
    .registers 2

    .prologue
    .line 1908
    invoke-direct {p0}, hasAnimations()Z

    move-result v0

    return v0
.end method

.method public isAppTransitAnimAllowed(I)Z
    .registers 6
    .param p1, "displayId"    # I

    .prologue
    .line 560
    const/4 v0, 0x1

    .line 561
    .local v0, "appTransitAnimAllowed":Z
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_22

    .line 562
    const-string v1, "DualScreenTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAppTransitAnimAllowed() caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_22
    iget v1, p0, mNextTransition:I

    packed-switch v1, :pswitch_data_6e

    .line 576
    iget-object v1, p0, mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    if-ne v1, p1, :cond_30

    .line 577
    const/4 v0, 0x0

    .line 581
    :cond_30
    :goto_30
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_5b

    .line 582
    const-string v2, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAppTransitAnimAllowed() : basic app transition is"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_6a

    const-string v1, " "

    :goto_46
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "allowed for d"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_5b
    return v0

    .line 566
    :pswitch_5c
    iget v1, p0, mMoveDirection:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_66

    iget v1, p0, mMoveDirection:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_68

    .line 567
    :cond_66
    const/4 v0, 0x1

    goto :goto_30

    .line 569
    :cond_68
    const/4 v0, 0x0

    .line 571
    goto :goto_30

    .line 582
    :cond_6a
    const-string v1, " not "

    goto :goto_46

    .line 564
    nop

    :pswitch_data_6e
    .packed-switch 0x64
        :pswitch_5c
    .end packed-switch
.end method

.method isFullToHalfTransition()Z
    .registers 3

    .prologue
    .line 434
    iget v0, p0, mNextTransition:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_d

    iget v0, p0, mMoveDirection:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method isFullViewMoveTransition()Z
    .registers 3

    .prologue
    .line 426
    iget v0, p0, mNextTransition:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_12

    iget v0, p0, mMoveDirection:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    iget v0, p0, mMoveDirection:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method isHalfToFullTransition()Z
    .registers 3

    .prologue
    .line 430
    iget v0, p0, mNextTransition:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_d

    iget v0, p0, mMoveDirection:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method isTransitionEqual(I)Z
    .registers 3
    .param p1, "transit"    # I

    .prologue
    .line 450
    iget v0, p0, mNextTransition:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method kill(Z)V
    .registers 14
    .param p1, "inTransaction"    # Z

    .prologue
    .line 1939
    sget-boolean v6, DEBUG:Z

    if-eqz v6, :cond_36

    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Kill!  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, mNextTransition:I

    invoke-static {v8}, transitionToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  caller=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    :cond_36
    monitor-enter p0

    .line 1941
    if-nez p1, :cond_3c

    .line 1944
    :try_start_39
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_229

    .line 1950
    :cond_3c
    const/16 v6, 0x64

    :try_start_3e
    invoke-virtual {p0, v6}, isTransitionEqual(I)Z

    move-result v6

    if-eqz v6, :cond_22c

    .line 1951
    iget-object v6, p0, mMovedWindowsForCoverScreen:Ljava/util/HashMap;

    invoke-direct {p0, v6}, getMinLayer(Ljava/util/HashMap;)I

    move-result v3

    .line 1952
    .local v3, "minLayer":I
    if-lez v3, :cond_69

    .line 1953
    iget-object v6, p0, mScreenCoverSurface:Landroid/view/SurfaceControl;

    if-eqz v6, :cond_57

    .line 1954
    iget-object v6, p0, mScreenCoverSurface:Landroid/view/SurfaceControl;

    add-int/lit8 v7, v3, -0x2

    invoke-virtual {v6, v7}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 1956
    :cond_57
    iget-object v6, p0, mTransitTargetInfos:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;

    iget-object v4, v6, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->surface:Landroid/view/SurfaceControl;

    .line 1957
    .local v4, "transitTargetCapture":Landroid/view/SurfaceControl;
    if-eqz v4, :cond_69

    .line 1958
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v4, v6}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 1961
    .end local v4    # "transitTargetCapture":Landroid/view/SurfaceControl;
    :cond_69
    iget-object v6, p0, mMovedWindowsForTransitTarget:Ljava/util/HashMap;

    invoke-direct {p0, v6}, clearMovedWindows(Ljava/util/HashMap;)V

    .line 1962
    iget-object v6, p0, mMovedWindowsForCoverScreen:Ljava/util/HashMap;

    invoke-direct {p0, v6}, clearMovedWindows(Ljava/util/HashMap;)V

    .line 1967
    .end local v3    # "minLayer":I
    :cond_73
    :goto_73
    iget-object v6, p0, mTransitTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_79
    :goto_79
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_242

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    :try_end_85
    .catchall {:try_start_3e .. :try_end_85} :catchall_213

    .line 1969
    .local v2, "info":Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    const/16 v6, 0xc8

    :try_start_87
    invoke-virtual {p0, v6}, isTransitionEqual(I)Z

    move-result v6

    if-nez v6, :cond_95

    const/16 v6, 0x190

    invoke-virtual {p0, v6}, isTransitionEqual(I)Z

    move-result v6

    if-eqz v6, :cond_23b

    .line 1971
    :cond_95
    iget-object v5, v2, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->win:Lcom/android/server/wm/WindowState;

    .line 1972
    .local v5, "w":Lcom/android/server/wm/WindowState;
    iget-object v6, v2, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->surface:Landroid/view/SurfaceControl;

    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v6, v7}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 1973
    iget-object v6, v2, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->surface:Landroid/view/SurfaceControl;

    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {v6, v7}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 1974
    iget-object v6, v2, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->surface:Landroid/view/SurfaceControl;

    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    invoke-virtual {v6, v7, v8}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 1975
    iget-object v6, v2, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->surface:Landroid/view/SurfaceControl;

    iget-object v7, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    iget v8, v5, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v7, v8

    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    iget v9, v5, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v8, v9

    iget-object v9, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v9, v9, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    iget v10, v5, Lcom/android/server/wm/WindowState;->mHScale:F

    mul-float/2addr v9, v10

    iget-object v10, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v10, v10, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    iget v11, v5, Lcom/android/server/wm/WindowState;->mVScale:F

    mul-float/2addr v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 1980
    sget-boolean v6, DEBUG:Z

    if-eqz v6, :cond_79

    .line 1981
    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Kill! set layer to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Kill! set alpha to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Kill! set position to ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceX:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceY:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1984
    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Kill! set matrix to  matrix=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/server/wm/WindowState;->mHScale:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/server/wm/WindowState;->mVScale:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/server/wm/WindowState;->mHScale:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/server/wm/WindowState;->mVScale:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e1
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_1e1} :catch_1e3
    .catchall {:try_start_87 .. :try_end_1e1} :catchall_213

    goto/16 :goto_79

    .line 1996
    .end local v5    # "w":Lcom/android/server/wm/WindowState;
    :catch_1e3
    move-exception v0

    .line 1997
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1e4
    sget-boolean v6, DEBUG:Z

    if-eqz v6, :cond_79

    .line 1998
    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Surface is already released. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " callers="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_211
    .catchall {:try_start_1e4 .. :try_end_211} :catchall_213

    goto/16 :goto_79

    .line 2011
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    :catchall_213
    move-exception v6

    if-nez p1, :cond_219

    .line 2012
    :try_start_216
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 2016
    :cond_219
    iget-object v7, p0, mTransitTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 2017
    iget-object v7, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v7}, Lcom/android/server/wm/InputMonitor;->thawInputDispatchingLw()V

    .line 2019
    invoke-direct {p0}, clearDualScreenTransitionAnimation()V

    throw v6

    .line 2021
    :catchall_229
    move-exception v6

    monitor-exit p0
    :try_end_22b
    .catchall {:try_start_216 .. :try_end_22b} :catchall_229

    throw v6

    .line 1963
    :cond_22c
    const/16 v6, 0x190

    :try_start_22e
    invoke-virtual {p0, v6}, isTransitionEqual(I)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 1964
    iget-object v6, p0, mMovedWindowsForTransitTarget:Ljava/util/HashMap;

    invoke-direct {p0, v6}, clearMovedWindows(Ljava/util/HashMap;)V
    :try_end_239
    .catchall {:try_start_22e .. :try_end_239} :catchall_213

    goto/16 :goto_73

    .line 1994
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "info":Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    :cond_23b
    :try_start_23b
    iget-object v6, v2, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->destroy()V
    :try_end_240
    .catch Ljava/lang/Exception; {:try_start_23b .. :try_end_240} :catch_1e3
    .catchall {:try_start_23b .. :try_end_240} :catchall_213

    goto/16 :goto_79

    .line 2003
    .end local v2    # "info":Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    :cond_242
    :try_start_242
    iget-object v6, p0, mScreenCoverSurface:Landroid/view/SurfaceControl;

    if-eqz v6, :cond_24e

    .line 2007
    iget-object v6, p0, mScreenCoverSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->destroy()V

    .line 2008
    const/4 v6, 0x0

    iput-object v6, p0, mScreenCoverSurface:Landroid/view/SurfaceControl;
    :try_end_24e
    .catchall {:try_start_242 .. :try_end_24e} :catchall_213

    .line 2011
    :cond_24e
    if-nez p1, :cond_253

    .line 2012
    :try_start_250
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 2016
    :cond_253
    iget-object v6, p0, mTransitTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2017
    iget-object v6, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v6}, Lcom/android/server/wm/InputMonitor;->thawInputDispatchingLw()V

    .line 2019
    invoke-direct {p0}, clearDualScreenTransitionAnimation()V

    .line 2021
    monitor-exit p0
    :try_end_263
    .catchall {:try_start_250 .. :try_end_263} :catchall_229

    .line 2022
    return-void
.end method

.method loadAnimation()Landroid/view/animation/Animation;
    .registers 27

    .prologue
    .line 1491
    const/4 v15, 0x0

    .line 1493
    .local v15, "anim":Landroid/view/animation/Animation;
    invoke-direct/range {p0 .. p0}, getTransitTargetWidthOnAnimStage()I

    move-result v25

    .line 1494
    .local v25, "transitTargetWidthOnAnimStage":I
    invoke-direct/range {p0 .. p0}, getTransitTargetHeightOnAnimStage()I

    move-result v24

    .line 1496
    .local v24, "transitTargetHeightOnAnimStage":I
    sget-boolean v6, DEBUG:Z

    if-eqz v6, :cond_54

    .line 1497
    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "loadAnimation() transitionToString="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, mNextTransition:I

    invoke-static {v8}, transitionToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mAnimStageDisplayCurrentRotation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, mAnimStageDisplayCurrentRotation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " transitTargetWidthOnAnimStage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " transitTargetHeightOnAnimStage="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    :cond_54
    move-object/from16 v0, p0

    iget v6, v0, mNextTransition:I

    const/16 v7, 0x64

    if-ne v6, v7, :cond_1ff

    .line 1504
    move-object/from16 v0, p0

    iget v6, v0, mTransitionType:I

    const/16 v7, 0x65

    if-ne v6, v7, :cond_6b

    .line 1505
    move-object/from16 v0, p0

    iget v6, v0, mAnimStageDisplayCurrentRotation:I

    packed-switch v6, :pswitch_data_4b2

    .line 1850
    :cond_6b
    :goto_6b
    if-nez v15, :cond_7e

    .line 1851
    const-string v6, "DualScreenTransition"

    const-string/jumbo v7, "loadAnimation() : animation is not loaded !!!"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    new-instance v15, Landroid/view/animation/AlphaAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v15, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1854
    .restart local v15    # "anim":Landroid/view/animation/Animation;
    :cond_7e
    const-wide/16 v6, 0x0

    invoke-virtual {v15, v6, v7}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1856
    move-object/from16 v0, p0

    iget v6, v0, mAnimStageDisplayWidth:I

    move-object/from16 v0, p0

    iget v7, v0, mAnimStageDisplayHeight:I

    move/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v15, v0, v1, v6, v7}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 1859
    sget-boolean v6, DEV_MODE_ENABLED:Z

    if-eqz v6, :cond_42a

    move-object/from16 v0, p0

    iget-object v6, v0, mDevInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v6, :cond_42a

    .line 1860
    instance-of v6, v15, Landroid/view/animation/AnimationSet;

    if-eqz v6, :cond_3f4

    move-object/from16 v21, v15

    .line 1861
    check-cast v21, Landroid/view/animation/AnimationSet;

    .line 1862
    .local v21, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual/range {v21 .. v21}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_ac
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3fb

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/animation/Animation;

    .line 1863
    .local v14, "a":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, mDevInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v14, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_ac

    .line 1516
    .end local v14    # "a":Landroid/view/animation/Animation;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v21    # "set":Landroid/view/animation/AnimationSet;
    :pswitch_c0
    new-instance v21, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1517
    .restart local v21    # "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, p0

    iget v6, v0, mMoveDirection:I

    packed-switch v6, :pswitch_data_4be

    .line 1536
    :goto_cf
    move-object/from16 v15, v21

    .line 1538
    goto :goto_6b

    .line 1519
    :pswitch_d2
    new-instance v23, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    move/from16 v0, v25

    int-to-float v7, v0

    neg-float v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1521
    .local v23, "trans":Landroid/view/animation/Animation;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_cf

    .line 1525
    .end local v23    # "trans":Landroid/view/animation/Animation;
    :pswitch_e8
    new-instance v23, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    move/from16 v0, v25

    int-to-float v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1527
    .restart local v23    # "trans":Landroid/view/animation/Animation;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_cf

    .line 1532
    .end local v23    # "trans":Landroid/view/animation/Animation;
    :pswitch_fd
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_cf

    .line 1541
    .end local v21    # "set":Landroid/view/animation/AnimationSet;
    :pswitch_10b
    move-object/from16 v0, p0

    iget v6, v0, mTransitionType:I

    const/16 v7, 0x65

    if-ne v6, v7, :cond_6b

    .line 1551
    new-instance v21, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1552
    .restart local v21    # "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, p0

    iget v6, v0, mMoveDirection:I

    packed-switch v6, :pswitch_data_4ca

    .line 1571
    :goto_122
    move-object/from16 v15, v21

    .line 1572
    goto/16 :goto_6b

    .line 1554
    :pswitch_126
    new-instance v23, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v0, v24

    int-to-float v9, v0

    move-object/from16 v0, v23

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1556
    .restart local v23    # "trans":Landroid/view/animation/Animation;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_122

    .line 1560
    .end local v23    # "trans":Landroid/view/animation/Animation;
    :pswitch_13b
    new-instance v23, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v0, v24

    int-to-float v9, v0

    neg-float v9, v9

    move-object/from16 v0, v23

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1562
    .restart local v23    # "trans":Landroid/view/animation/Animation;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_122

    .line 1567
    .end local v23    # "trans":Landroid/view/animation/Animation;
    :pswitch_151
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_122

    .line 1586
    .end local v21    # "set":Landroid/view/animation/AnimationSet;
    :pswitch_15f
    new-instance v21, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1587
    .restart local v21    # "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, p0

    iget v6, v0, mMoveDirection:I

    packed-switch v6, :pswitch_data_4d6

    .line 1606
    :goto_16e
    move-object/from16 v15, v21

    .line 1608
    goto/16 :goto_6b

    .line 1589
    :pswitch_172
    new-instance v23, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    move/from16 v0, v25

    int-to-float v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1591
    .restart local v23    # "trans":Landroid/view/animation/Animation;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_16e

    .line 1595
    .end local v23    # "trans":Landroid/view/animation/Animation;
    :pswitch_187
    new-instance v23, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    move/from16 v0, v25

    int-to-float v7, v0

    neg-float v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1597
    .restart local v23    # "trans":Landroid/view/animation/Animation;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_16e

    .line 1602
    .end local v23    # "trans":Landroid/view/animation/Animation;
    :pswitch_19d
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_16e

    .line 1611
    .end local v21    # "set":Landroid/view/animation/AnimationSet;
    :pswitch_1ab
    move-object/from16 v0, p0

    iget v6, v0, mTransitionType:I

    const/16 v7, 0x65

    if-ne v6, v7, :cond_6b

    .line 1621
    new-instance v21, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1622
    .restart local v21    # "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, p0

    iget v6, v0, mMoveDirection:I

    packed-switch v6, :pswitch_data_4e2

    .line 1641
    :goto_1c2
    move-object/from16 v15, v21

    goto/16 :goto_6b

    .line 1624
    :pswitch_1c6
    new-instance v23, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v0, v24

    int-to-float v9, v0

    neg-float v9, v9

    move-object/from16 v0, v23

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1626
    .restart local v23    # "trans":Landroid/view/animation/Animation;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1c2

    .line 1630
    .end local v23    # "trans":Landroid/view/animation/Animation;
    :pswitch_1dc
    new-instance v23, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v0, v24

    int-to-float v9, v0

    move-object/from16 v0, v23

    invoke-direct {v0, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1632
    .restart local v23    # "trans":Landroid/view/animation/Animation;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1c2

    .line 1637
    .end local v23    # "trans":Landroid/view/animation/Animation;
    :pswitch_1f1
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1c2

    .line 1647
    .end local v21    # "set":Landroid/view/animation/AnimationSet;
    :cond_1ff
    move-object/from16 v0, p0

    iget v6, v0, mNextTransition:I

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_2bd

    .line 1649
    move-object/from16 v0, p0

    iget v6, v0, mAnimStageDisplayCurrentRotation:I

    packed-switch v6, :pswitch_data_4ee

    .line 1731
    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "loadAnimation() invalid rotation! mAnimStageDisplayCurrentRotation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, mAnimStageDisplayCurrentRotation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6b

    .line 1660
    :pswitch_22d
    move-object/from16 v0, p0

    iget v6, v0, mMoveDirection:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_241

    .line 1661
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    move/from16 v0, v25

    int-to-float v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v15, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_6b

    .line 1664
    :cond_241
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    move/from16 v0, v24

    int-to-float v6, v0

    neg-float v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v15, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1668
    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_6b

    .line 1680
    :pswitch_24f
    move-object/from16 v0, p0

    iget v6, v0, mMoveDirection:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_264

    .line 1681
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, v24

    int-to-float v8, v0

    neg-float v8, v8

    const/4 v9, 0x0

    invoke-direct {v15, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_6b

    .line 1684
    :cond_264
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, v24

    int-to-float v8, v0

    const/4 v9, 0x0

    invoke-direct {v15, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1688
    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_6b

    .line 1700
    :pswitch_271
    new-instance v21, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1701
    .restart local v21    # "set":Landroid/view/animation/AnimationSet;
    move-object/from16 v0, p0

    iget v6, v0, mMoveDirection:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_28e

    .line 1702
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    move/from16 v0, v24

    int-to-float v6, v0

    neg-float v6, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v15, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_6b

    .line 1705
    :cond_28e
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    move/from16 v0, v24

    int-to-float v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v15, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_6b

    .line 1721
    .end local v21    # "set":Landroid/view/animation/AnimationSet;
    :pswitch_29b
    move-object/from16 v0, p0

    iget v6, v0, mMoveDirection:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2af

    .line 1722
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, v24

    int-to-float v8, v0

    const/4 v9, 0x0

    invoke-direct {v15, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_6b

    .line 1725
    :cond_2af
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v0, v24

    int-to-float v8, v0

    neg-float v8, v8

    const/4 v9, 0x0

    invoke-direct {v15, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1729
    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_6b

    .line 1735
    :cond_2bd
    move-object/from16 v0, p0

    iget v6, v0, mNextTransition:I

    const/16 v7, 0x12c

    if-ne v6, v7, :cond_373

    .line 1737
    move-object/from16 v0, p0

    iget v6, v0, mAnimStageDisplayCurrentRotation:I

    packed-switch v6, :pswitch_data_4fa

    .line 1818
    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "loadAnimation() invalid rotation! mAnimStageDisplayCurrentRotation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, mAnimStageDisplayCurrentRotation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6b

    .line 1748
    :pswitch_2eb
    move-object/from16 v0, p0

    iget v6, v0, mMoveDirection:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_300

    .line 1749
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x0

    move/from16 v0, v25

    int-to-float v7, v0

    neg-float v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v15, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_6b

    .line 1752
    :cond_300
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x0

    move/from16 v0, v25

    int-to-float v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v15, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1756
    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_6b

    .line 1768
    :pswitch_30d
    move-object/from16 v0, p0

    iget v6, v0, mMoveDirection:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_321

    .line 1769
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v0, v24

    int-to-float v9, v0

    invoke-direct {v15, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_6b

    .line 1772
    :cond_321
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v0, v24

    int-to-float v9, v0

    neg-float v9, v9

    invoke-direct {v15, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1776
    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_6b

    .line 1788
    :pswitch_32f
    move-object/from16 v0, p0

    iget v6, v0, mMoveDirection:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_343

    .line 1789
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x0

    move/from16 v0, v25

    int-to-float v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v15, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_6b

    .line 1792
    :cond_343
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x0

    move/from16 v0, v25

    int-to-float v7, v0

    neg-float v7, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v15, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1796
    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_6b

    .line 1808
    :pswitch_351
    move-object/from16 v0, p0

    iget v6, v0, mMoveDirection:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_366

    .line 1809
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v0, v24

    int-to-float v9, v0

    neg-float v9, v9

    invoke-direct {v15, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_6b

    .line 1812
    :cond_366
    new-instance v15, Landroid/view/animation/TranslateAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v0, v24

    int-to-float v9, v0

    invoke-direct {v15, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1816
    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_6b

    .line 1821
    :cond_373
    move-object/from16 v0, p0

    iget v6, v0, mNextTransition:I

    const/16 v7, 0x3e8

    if-ne v6, v7, :cond_385

    .line 1822
    new-instance v15, Landroid/view/animation/AlphaAnimation;

    .end local v15    # "anim":Landroid/view/animation/Animation;
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-direct {v15, v6, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .restart local v15    # "anim":Landroid/view/animation/Animation;
    goto/16 :goto_6b

    .line 1823
    :cond_385
    move-object/from16 v0, p0

    iget v6, v0, mNextTransition:I

    const/16 v7, 0x190

    if-ne v6, v7, :cond_6b

    .line 1824
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1825
    .local v3, "startInc":F
    const v4, 0x3f83d70a    # 1.03f

    .line 1826
    .local v4, "endInc":F
    const/high16 v22, 0x3f800000    # 1.0f

    .line 1827
    .local v22, "startdec":F
    div-float v18, v3, v4

    .line 1828
    .local v18, "endDec":F
    const/16 v17, 0x14d

    .line 1829
    .local v17, "duration":I
    new-instance v20, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct/range {v20 .. v20}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    .line 1831
    .local v20, "interpolator":Landroid/view/animation/interpolator/SineInOut80;
    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1832
    .local v16, "animSet":Landroid/view/animation/AnimationSet;
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move v5, v3

    move v6, v4

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1834
    .local v2, "incScaleAnim":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 1835
    move/from16 v0, v17

    int-to-long v6, v0

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1836
    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1838
    new-instance v5, Landroid/view/animation/ScaleAnimation;

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    const/4 v12, 0x1

    const/high16 v13, 0x3f000000    # 0.5f

    move/from16 v6, v22

    move/from16 v7, v18

    move/from16 v8, v22

    move/from16 v9, v18

    invoke-direct/range {v5 .. v13}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1840
    .local v5, "decScaleAnim":Landroid/view/animation/ScaleAnimation;
    const/16 v6, 0x1b1

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 1841
    move/from16 v0, v17

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1842
    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1844
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1845
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1847
    move-object/from16 v15, v16

    goto/16 :goto_6b

    .line 1866
    .end local v2    # "incScaleAnim":Landroid/view/animation/ScaleAnimation;
    .end local v3    # "startInc":F
    .end local v4    # "endInc":F
    .end local v5    # "decScaleAnim":Landroid/view/animation/ScaleAnimation;
    .end local v16    # "animSet":Landroid/view/animation/AnimationSet;
    .end local v17    # "duration":I
    .end local v18    # "endDec":F
    .end local v20    # "interpolator":Landroid/view/animation/interpolator/SineInOut80;
    .end local v22    # "startdec":F
    :cond_3f4
    move-object/from16 v0, p0

    iget-object v6, v0, mDevInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v15, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1879
    :cond_3fb
    :goto_3fb
    sget-boolean v6, DEV_MODE_ENABLED:Z

    if-eqz v6, :cond_47f

    move-object/from16 v0, p0

    iget v6, v0, mDevDuration:I

    if-lez v6, :cond_47f

    .line 1880
    instance-of v6, v15, Landroid/view/animation/AnimationSet;

    if-eqz v6, :cond_456

    move-object/from16 v21, v15

    .line 1881
    check-cast v21, Landroid/view/animation/AnimationSet;

    .line 1882
    .restart local v21    # "set":Landroid/view/animation/AnimationSet;
    invoke-virtual/range {v21 .. v21}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :goto_415
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_45e

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/animation/Animation;

    .line 1883
    .restart local v14    # "a":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v6, v0, mDevDuration:I

    int-to-long v6, v6

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_415

    .line 1869
    .end local v14    # "a":Landroid/view/animation/Animation;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v21    # "set":Landroid/view/animation/AnimationSet;
    :cond_42a
    instance-of v6, v15, Landroid/view/animation/AnimationSet;

    if-eqz v6, :cond_44e

    move-object/from16 v21, v15

    .line 1870
    check-cast v21, Landroid/view/animation/AnimationSet;

    .line 1871
    .restart local v21    # "set":Landroid/view/animation/AnimationSet;
    invoke-virtual/range {v21 .. v21}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :goto_43a
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3fb

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/animation/Animation;

    .line 1872
    .restart local v14    # "a":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v6, v0, mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v14, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_43a

    .line 1875
    .end local v14    # "a":Landroid/view/animation/Animation;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v21    # "set":Landroid/view/animation/AnimationSet;
    :cond_44e
    move-object/from16 v0, p0

    iget-object v6, v0, mDefaultInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v15, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_3fb

    .line 1886
    :cond_456
    move-object/from16 v0, p0

    iget v6, v0, mDevDuration:I

    int-to-long v6, v6

    invoke-virtual {v15, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1888
    :cond_45e
    sget-boolean v6, DEBUG:Z

    if-eqz v6, :cond_47e

    .line 1889
    const-string v6, "DualScreenTransition"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "animation : duration="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, mDevDuration:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    :cond_47e
    :goto_47e
    return-object v15

    .line 1892
    :cond_47f
    instance-of v6, v15, Landroid/view/animation/AnimationSet;

    if-eqz v6, :cond_4a1

    move-object/from16 v21, v15

    .line 1893
    check-cast v21, Landroid/view/animation/AnimationSet;

    .line 1894
    .restart local v21    # "set":Landroid/view/animation/AnimationSet;
    invoke-virtual/range {v21 .. v21}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .restart local v19    # "i$":Ljava/util/Iterator;
    :goto_48f
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4a6

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/animation/Animation;

    .line 1895
    .restart local v14    # "a":Landroid/view/animation/Animation;
    const-wide/16 v6, 0x190

    invoke-virtual {v14, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_48f

    .line 1898
    .end local v14    # "a":Landroid/view/animation/Animation;
    .end local v19    # "i$":Ljava/util/Iterator;
    .end local v21    # "set":Landroid/view/animation/AnimationSet;
    :cond_4a1
    const-wide/16 v6, 0x190

    invoke-virtual {v15, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1900
    :cond_4a6
    sget-boolean v6, DEBUG:Z

    if-eqz v6, :cond_47e

    .line 1901
    const-string v6, "DualScreenTransition"

    const-string v7, "animation : duration=400"

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47e

    .line 1505
    :pswitch_data_4b2
    .packed-switch 0x0
        :pswitch_c0
        :pswitch_10b
        :pswitch_15f
        :pswitch_1ab
    .end packed-switch

    .line 1517
    :pswitch_data_4be
    .packed-switch 0x1
        :pswitch_d2
        :pswitch_e8
        :pswitch_fd
        :pswitch_fd
    .end packed-switch

    .line 1552
    :pswitch_data_4ca
    .packed-switch 0x1
        :pswitch_126
        :pswitch_13b
        :pswitch_151
        :pswitch_151
    .end packed-switch

    .line 1587
    :pswitch_data_4d6
    .packed-switch 0x1
        :pswitch_172
        :pswitch_187
        :pswitch_19d
        :pswitch_19d
    .end packed-switch

    .line 1622
    :pswitch_data_4e2
    .packed-switch 0x1
        :pswitch_1c6
        :pswitch_1dc
        :pswitch_1f1
        :pswitch_1f1
    .end packed-switch

    .line 1649
    :pswitch_data_4ee
    .packed-switch 0x0
        :pswitch_22d
        :pswitch_24f
        :pswitch_271
        :pswitch_29b
    .end packed-switch

    .line 1737
    :pswitch_data_4fa
    .packed-switch 0x0
        :pswitch_2eb
        :pswitch_30d
        :pswitch_32f
        :pswitch_351
    .end packed-switch
.end method

.method overrideTransition(Lcom/android/server/wm/AppWindowToken;ILcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayContent;Z)V
    .registers 36
    .param p1, "transitTargetAtoken"    # Lcom/android/server/wm/AppWindowToken;
    .param p2, "newTransition"    # I
    .param p3, "fromDisplay"    # Lcom/android/server/wm/DisplayContent;
    .param p4, "toDisplay"    # Lcom/android/server/wm/DisplayContent;
    .param p5, "animStageDisplay"    # Lcom/android/server/wm/DisplayContent;
    .param p6, "inTransaction"    # Z

    .prologue
    .line 1039
    sget-boolean v5, DEBUG:Z

    if-eqz v5, :cond_33

    .line 1040
    const-string v5, "DualScreenTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "overrideTransition() : currentTransition="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, mNextTransition:I

    invoke-static {v7}, transitionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " newTransition="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p2 .. p2}, transitionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_33
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, canOverrideTransition(ILcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayContent;)Z

    move-result v5

    if-nez v5, :cond_4c

    .line 1046
    const-string v5, "DualScreenTransition"

    const-string/jumbo v6, "overrideTransition() : overriding transition is not allowed"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    :cond_4b
    :goto_4b
    return-void

    .line 1050
    :cond_4c
    if-eqz p3, :cond_52

    if-eqz p4, :cond_52

    if-nez p5, :cond_86

    .line 1051
    :cond_52
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fromDisplay="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " toDisplay="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " animStageDisplay="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1055
    :cond_86
    move-object/from16 v0, p0

    iget-object v0, v0, mFromDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v22, v0

    .line 1056
    .local v22, "prevFromDisplay":Lcom/android/server/wm/DisplayContent;
    move-object/from16 v0, p0

    iget-object v0, v0, mToDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v23, v0

    .line 1057
    .local v23, "prevToDisplay":Lcom/android/server/wm/DisplayContent;
    move-object/from16 v0, p0

    iget-object v0, v0, mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v21, v0

    .line 1058
    .local v21, "prevAnimStageDisplay":Lcom/android/server/wm/DisplayContent;
    move-object/from16 v0, p0

    iget v0, v0, mNextTransition:I

    move/from16 v25, v0

    .line 1059
    .local v25, "prevTransition":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, setTransition(I)V

    .line 1061
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, mFromDisplay:Lcom/android/server/wm/DisplayContent;

    .line 1062
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, mToDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

    .line 1063
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    .line 1064
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, mTransitionType:I

    .line 1066
    const/16 v5, 0x64

    move/from16 v0, p2

    if-ne v0, v5, :cond_cf

    .line 1067
    const/16 v5, 0x65

    move-object/from16 v0, p0

    iput v5, v0, mTransitionType:I

    .line 1069
    :cond_cf
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, selectMoveDirection(II)V

    .line 1070
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, updateWaitingScreens(I)V

    .line 1073
    invoke-direct/range {p0 .. p0}, updateDisplayInfos()V

    .line 1078
    const/16 v5, 0x64

    move/from16 v0, p2

    if-ne v0, v5, :cond_1e7

    .line 1079
    :try_start_ec
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v24

    .line 1080
    .local v24, "prevToDisplayId":I
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v18

    .line 1081
    .local v18, "currentFromDisplayId":I
    const/16 v5, 0x12c

    move/from16 v0, v25

    if-ne v0, v5, :cond_1e7

    move/from16 v0, v24

    move/from16 v1, v18

    if-ne v0, v1, :cond_1e7

    .line 1082
    move-object/from16 v0, p0

    iget-object v5, v0, mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v6, 0x7d0

    invoke-interface {v5, v6}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v5

    mul-int/lit16 v5, v5, 0x2710

    add-int/lit8 v28, v5, -0x1

    .line 1083
    .local v28, "topWindowLayer":I
    const/16 v26, 0x0

    .line 1084
    .local v26, "screenshotMinLayer":I
    move/from16 v10, v28

    .line 1085
    .local v10, "screenshotMaxLayerForFromDisplay":I
    const/16 v20, 0x0

    .line 1089
    .local v20, "moveWindowsToFront":I
    move-object/from16 v0, p0

    iget-object v5, v0, mTransitTargetInfos:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;

    iget-object v5, v5, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->surface:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iput-object v5, v0, mScreenCoverSurface:Landroid/view/SurfaceControl;

    .line 1090
    move-object/from16 v0, p0

    iget-object v5, v0, mScreenCoverSurface:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget-object v6, v0, mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 1093
    if-eqz p1, :cond_160

    .line 1094
    invoke-direct/range {p0 .. p1}, getTopWindow(Lcom/android/server/wm/AppWindowToken;)Lcom/android/server/wm/WindowState;

    move-result-object v27

    .line 1095
    .local v27, "topWindow":Lcom/android/server/wm/WindowState;
    sget-boolean v5, DEV_MOVE_WINDOWS_ENABLED:Z

    if-eqz v5, :cond_160

    if-eqz v27, :cond_160

    move-object/from16 v0, p0

    iget-object v5, v0, mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v5, v1}, canMoveWindowsToFront(Lcom/android/server/wm/WindowList;Lcom/android/server/wm/WindowState;)Z

    move-result v5

    if-eqz v5, :cond_160

    .line 1098
    const-string v5, "DualScreenTransition"

    const-string/jumbo v6, "freezeForTransition() : moveWindowsToFront|=TRANSIT_TARGET_DISPLAY"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    move-object/from16 v0, v27

    iget v10, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 1100
    or-int/lit8 v20, v20, 0x1

    .line 1105
    .end local v27    # "topWindow":Lcom/android/server/wm/WindowState;
    :cond_160
    move-object/from16 v0, p0

    iget-object v6, v0, mFromDisplay:Lcom/android/server/wm/DisplayContent;

    const-string v7, "TransitTargetSurface"

    move-object/from16 v0, p0

    iget v8, v0, mTransitTargetDisplayWidth:I

    move-object/from16 v0, p0

    iget v9, v0, mTransitTargetDisplayHeight:I

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, createSurface(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;IIII)Landroid/view/SurfaceControl;

    move-result-object v12

    .line 1109
    .local v12, "transitTargetCapture":Landroid/view/SurfaceControl;
    move-object/from16 v0, p0

    iget-object v5, v0, mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    invoke-virtual {v12, v5}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 1111
    and-int/lit8 v5, v20, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1a2

    .line 1112
    move-object/from16 v0, p0

    iget-object v5, v0, mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, mMovedWindowsForTransitTarget:Ljava/util/HashMap;

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v10}, collectWindowsToFront(Lcom/android/server/wm/WindowList;Ljava/util/HashMap;I)V

    .line 1113
    move-object/from16 v0, p0

    iget-object v5, v0, mMovedWindowsForTransitTarget:Ljava/util/HashMap;

    const v6, 0xf4242

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, moveWindowsToFront(Ljava/util/HashMap;I)V

    .line 1116
    :cond_1a2
    const v5, 0xf4242

    invoke-virtual {v12, v5}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 1117
    invoke-virtual {v12}, Landroid/view/SurfaceControl;->show()V

    .line 1118
    move-object/from16 v0, p0

    iget-object v5, v0, mTransitTargetInfos:Ljava/util/ArrayList;

    new-instance v11, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;

    const v13, 0xf4242

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, mTransitTargetDisplayWidth:I

    move-object/from16 v0, p0

    iget v0, v0, mTransitTargetDisplayHeight:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v6, v0, mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v17

    invoke-direct/range {v11 .. v17}, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;-><init>(Landroid/view/SurfaceControl;ILcom/android/server/wm/WindowState;III)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1121
    move-object/from16 v0, p0

    iget-object v5, v0, mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p0

    iget v6, v0, mAnimStageDisplayCurrentRotation:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, setRotationInTransaction(Lcom/android/server/wm/DisplayContent;I)V

    .line 1122
    move-object/from16 v0, p0

    iget-object v5, v0, mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p0

    iget v6, v0, mCoveredDisplayOriginalRotation:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, setRotationInTransaction(Lcom/android/server/wm/DisplayContent;I)V
    :try_end_1e7
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_ec .. :try_end_1e7} :catch_1ee
    .catchall {:try_start_ec .. :try_end_1e7} :catchall_1f9

    .line 1129
    .end local v10    # "screenshotMaxLayerForFromDisplay":I
    .end local v12    # "transitTargetCapture":Landroid/view/SurfaceControl;
    .end local v18    # "currentFromDisplayId":I
    .end local v20    # "moveWindowsToFront":I
    .end local v24    # "prevToDisplayId":I
    .end local v26    # "screenshotMinLayer":I
    .end local v28    # "topWindowLayer":I
    :cond_1e7
    :goto_1e7
    if-nez p6, :cond_4b

    .line 1130
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto/16 :goto_4b

    .line 1125
    :catch_1ee
    move-exception v19

    .line 1126
    .local v19, "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_1ef
    const-string v5, "DualScreenTransition"

    const-string v6, "Unable to allocate freeze surface"

    move-object/from16 v0, v19

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f8
    .catchall {:try_start_1ef .. :try_end_1f8} :catchall_1f9

    goto :goto_1e7

    .line 1129
    .end local v19    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catchall_1f9
    move-exception v5

    if-nez p6, :cond_1ff

    .line 1130
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    :cond_1ff
    throw v5
.end method

.method removeWindowLocked(Lcom/android/server/wm/WindowState;)V
    .registers 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 753
    invoke-direct {p0, p1}, removeTransitTargetWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 754
    invoke-direct {p0, p1}, removeMovedWindowLocked(Lcom/android/server/wm/WindowState;)V

    .line 755
    return-void
.end method

.method reportWaitingScreenDrawn(Lcom/samsung/android/dualscreen/DualScreen;)V
    .registers 5
    .param p1, "drawnScreen"    # Lcom/samsung/android/dualscreen/DualScreen;

    .prologue
    .line 524
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_3a

    .line 525
    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reportWaitingScreenDrawn() mWatingScreenDrawn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, mWatingScreenDrawn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWaitingScreens="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mWaitingScreens:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_3a
    iget-object v0, p0, mWaitingScreens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 529
    iget-object v0, p0, mWaitingScreens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p0, mWatingScreenDrawn:Z

    .line 532
    :cond_4a
    return-void
.end method

.method setRotationInTransaction(Lcom/android/server/wm/DisplayContent;I)V
    .registers 18
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "rotation"    # I

    .prologue
    .line 1306
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_6d

    .line 1307
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v10

    .line 1308
    .local v10, "di":Landroid/view/DisplayInfo;
    if-eqz v10, :cond_6d

    .line 1309
    const-string v1, "DualScreenTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setRotationInTransaction() rotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mNextTransition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mNextTransition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x6

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    .end local v10    # "di":Landroid/view/DisplayInfo;
    :cond_6d
    iget v1, p0, mNextTransition:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1b8

    .line 1318
    iget-object v1, p0, mCoveredDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_ba

    .line 1319
    move/from16 v0, p2

    iput v0, p0, mCoveredDisplayCurrentRotation:I

    .line 1320
    const/4 v1, 0x0

    move/from16 v0, p2

    invoke-static {v0, v1}, deltaRotation(II)I

    move-result v9

    .line 1321
    .local v9, "delta":I
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_a0

    const-string v1, "DualScreenTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**** ROTATION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    :cond_a0
    iget v1, p0, mCoveredDisplayWidth:I

    iget v2, p0, mCoveredDisplayHeight:I

    iget-object v3, p0, mCoverInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v9, v1, v2, v3}, createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 1325
    iget-object v2, p0, mScreenCoverSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, mCoverInitialMatrix:Landroid/graphics/Matrix;

    const/high16 v4, -0x40800000    # -1.0f

    iget v5, p0, mCoveredDisplayWidth:I

    iget v6, p0, mCoveredDisplayHeight:I

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, setTransitTransformInTransaction(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;FIIILcom/android/server/wm/WindowState;)V

    .line 1425
    .end local v9    # "delta":I
    :cond_b9
    :goto_b9
    return-void

    .line 1328
    :cond_ba
    iget-object v1, p0, mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_b9

    .line 1329
    move/from16 v0, p2

    iput v0, p0, mAnimStageDisplayCurrentRotation:I

    .line 1330
    const/4 v1, 0x0

    move/from16 v0, p2

    invoke-static {v0, v1}, deltaRotation(II)I

    move-result v9

    .line 1331
    .restart local v9    # "delta":I
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_e7

    const-string v1, "DualScreenTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**** ROTATION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    :cond_e7
    iget-object v1, p0, mTransitTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_ed
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;

    .line 1334
    .local v12, "info":Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    iget v1, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->width:I

    iget v2, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->height:I

    iget-object v3, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->initialMatrix:Landroid/graphics/Matrix;

    invoke-static {v9, v1, v2, v3}, createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 1336
    iget v1, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->width:I

    iget v2, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->height:I

    invoke-direct {p0, v1, v2}, getTransitTargetWidthOnAnimStage(II)I

    move-result v14

    .line 1337
    .local v14, "transitTargetWidthOnAnimStage":I
    iget v1, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->width:I

    iget v2, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->height:I

    invoke-direct {p0, v1, v2}, getTransitTargetHeightOnAnimStage(II)I

    move-result v13

    .line 1339
    .local v13, "transitTargetHeightOnAnimStage":I
    iget v1, p0, mAnimStageDisplayCurrentRotation:I

    packed-switch v1, :pswitch_data_27e

    .line 1378
    iget v1, p0, mMoveDirection:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a1

    .line 1379
    iget-object v1, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->initialMatrix:Landroid/graphics/Matrix;

    int-to-float v2, v14

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1389
    :cond_123
    :goto_123
    iget-object v2, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->surface:Landroid/view/SurfaceControl;

    iget-object v3, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->initialMatrix:Landroid/graphics/Matrix;

    const/high16 v4, -0x40800000    # -1.0f

    iget v5, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->width:I

    iget v6, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->height:I

    iget v7, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->layer:I

    iget-object v8, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->win:Lcom/android/server/wm/WindowState;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, setTransitTransformInTransaction(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;FIIILcom/android/server/wm/WindowState;)V

    goto :goto_ed

    .line 1341
    :pswitch_136
    iget v1, p0, mMoveDirection:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_123

    .line 1343
    iget v1, p0, mMoveDirection:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_148

    .line 1344
    iget-object v1, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->initialMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    int-to-float v3, v13

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_123

    .line 1345
    :cond_148
    iget v1, p0, mMoveDirection:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_123

    .line 1346
    iget v1, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->displayId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_123

    .line 1347
    iget-object v1, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->initialMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    int-to-float v3, v13

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_123

    .line 1353
    :pswitch_15a
    iget v1, p0, mMoveDirection:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_123

    .line 1355
    iget v1, p0, mMoveDirection:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_16c

    .line 1356
    iget-object v1, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->initialMatrix:Landroid/graphics/Matrix;

    int-to-float v2, v14

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_123

    .line 1357
    :cond_16c
    iget v1, p0, mMoveDirection:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_123

    .line 1358
    iget v1, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->displayId:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_123

    .line 1359
    iget-object v1, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->initialMatrix:Landroid/graphics/Matrix;

    int-to-float v2, v14

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_123

    .line 1365
    :pswitch_17e
    iget v1, p0, mMoveDirection:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18b

    .line 1366
    iget-object v1, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->initialMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    int-to-float v3, v13

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_123

    .line 1367
    :cond_18b
    iget v1, p0, mMoveDirection:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_123

    .line 1369
    iget v1, p0, mMoveDirection:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_123

    .line 1370
    iget v1, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->displayId:I

    if-nez v1, :cond_123

    .line 1371
    iget-object v1, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->initialMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    int-to-float v3, v13

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_123

    .line 1380
    :cond_1a1
    iget v1, p0, mMoveDirection:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_123

    .line 1382
    iget v1, p0, mMoveDirection:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_123

    .line 1383
    iget v1, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->displayId:I

    if-nez v1, :cond_123

    .line 1384
    iget-object v1, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->initialMatrix:Landroid/graphics/Matrix;

    int-to-float v2, v14

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_123

    .line 1392
    .end local v9    # "delta":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "info":Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    .end local v13    # "transitTargetHeightOnAnimStage":I
    .end local v14    # "transitTargetWidthOnAnimStage":I
    :cond_1b8
    iget v1, p0, mNextTransition:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_210

    .line 1394
    iget-object v1, p0, mToDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_204

    .line 1395
    move/from16 v0, p2

    iput v0, p0, mCoveredDisplayCurrentRotation:I

    .line 1396
    const/4 v1, 0x0

    move/from16 v0, p2

    invoke-static {v0, v1}, deltaRotation(II)I

    move-result v9

    .line 1397
    .restart local v9    # "delta":I
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_1eb

    const-string v1, "DualScreenTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**** ROTATION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    :cond_1eb
    iget v1, p0, mCoveredDisplayWidth:I

    iget v2, p0, mCoveredDisplayHeight:I

    iget-object v3, p0, mCoverInitialMatrix:Landroid/graphics/Matrix;

    invoke-static {v9, v1, v2, v3}, createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 1401
    iget-object v2, p0, mScreenCoverSurface:Landroid/view/SurfaceControl;

    iget-object v3, p0, mCoverInitialMatrix:Landroid/graphics/Matrix;

    const/high16 v4, -0x40800000    # -1.0f

    iget v5, p0, mCoveredDisplayWidth:I

    iget v6, p0, mCoveredDisplayHeight:I

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, setTransitTransformInTransaction(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;FIIILcom/android/server/wm/WindowState;)V

    .line 1405
    .end local v9    # "delta":I
    :cond_204
    iget-object v1, p0, mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_b9

    .line 1406
    move/from16 v0, p2

    iput v0, p0, mAnimStageDisplayCurrentRotation:I

    goto/16 :goto_b9

    .line 1408
    :cond_210
    iget v1, p0, mNextTransition:I

    const/16 v2, 0x12c

    if-ne v1, v2, :cond_b9

    .line 1410
    iget-object v1, p0, mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_271

    .line 1411
    move/from16 v0, p2

    iput v0, p0, mCoveredDisplayCurrentRotation:I

    .line 1412
    const/4 v1, 0x0

    move/from16 v0, p2

    invoke-static {v0, v1}, deltaRotation(II)I

    move-result v9

    .line 1413
    .restart local v9    # "delta":I
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_243

    const-string v1, "DualScreenTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "**** ROTATION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    :cond_243
    iget-object v1, p0, mTransitTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .restart local v11    # "i$":Ljava/util/Iterator;
    :goto_249
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_271

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;

    .line 1416
    .restart local v12    # "info":Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    iget v1, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->width:I

    iget v2, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->height:I

    iget-object v3, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->initialMatrix:Landroid/graphics/Matrix;

    invoke-static {v9, v1, v2, v3}, createRotationMatrix(IIILandroid/graphics/Matrix;)V

    .line 1417
    iget-object v2, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->surface:Landroid/view/SurfaceControl;

    iget-object v3, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->initialMatrix:Landroid/graphics/Matrix;

    const/high16 v4, -0x40800000    # -1.0f

    iget v5, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->width:I

    iget v6, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->height:I

    iget v7, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->layer:I

    iget-object v8, v12, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->win:Lcom/android/server/wm/WindowState;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, setTransitTransformInTransaction(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;FIIILcom/android/server/wm/WindowState;)V

    goto :goto_249

    .line 1421
    .end local v9    # "delta":I
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "info":Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    :cond_271
    iget-object v1, p0, mAnimStageDisplay:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_b9

    .line 1422
    move/from16 v0, p2

    iput v0, p0, mAnimStageDisplayCurrentRotation:I

    goto/16 :goto_b9

    .line 1339
    nop

    :pswitch_data_27e
    .packed-switch 0x1
        :pswitch_136
        :pswitch_15a
        :pswitch_17e
    .end packed-switch
.end method

.method setTransition(I)V
    .registers 5
    .param p1, "transit"    # I

    .prologue
    .line 442
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_45

    .line 443
    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTransition() : prev="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mNextTransition:I

    invoke-static {v2}, transitionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " next="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, transitionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " caller=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_45
    iput p1, p0, mNextTransition:I

    .line 447
    return-void
.end method

.method shouldFreezeScreen()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 535
    iget-boolean v3, p0, mWatingScreenDrawn:Z

    if-nez v3, :cond_59

    iget v3, p0, mNextTransition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_59

    iget v3, p0, mNextTransition:I

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_59

    move v0, v1

    .line 536
    .local v0, "shouldFreeze":Z
    :goto_12
    iget-object v3, p0, mWatingAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_5b

    :goto_16
    or-int/2addr v0, v1

    .line 538
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_58

    .line 539
    const-string v1, "DualScreenTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shouldFreezeScreen() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : mWatingScreenDrawn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mWatingScreenDrawn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mNextTransition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mNextTransition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mWatingAppToken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mWatingAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_58
    return v0

    .end local v0    # "shouldFreeze":Z
    :cond_59
    move v0, v2

    .line 535
    goto :goto_12

    .restart local v0    # "shouldFreeze":Z
    :cond_5b
    move v1, v2

    .line 536
    goto :goto_16
.end method

.method shouldMoveDimLayer(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 548
    iget-object v0, p0, mMovedDimTargetWindows:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, mMovedDimTargetWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method stepAnimationLocked(J)Z
    .registers 6
    .param p1, "now"    # J

    .prologue
    .line 1428
    sget-boolean v0, DEBUG_ANIM:Z

    if-eqz v0, :cond_1d

    .line 1429
    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stepAnimationLocked() now="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    :cond_1d
    invoke-direct {p0}, hasAnimations()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1432
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_2e

    const-string v0, "DualScreenTransition"

    const-string v1, "Step: no animations running"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    :cond_2e
    const/4 v0, 0x0

    .line 1446
    :goto_2f
    return v0

    .line 1436
    :cond_30
    iget-boolean v0, p0, mAnimRunning:Z

    if-nez v0, :cond_54

    .line 1437
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_3f

    const-string v0, "DualScreenTransition"

    const-string v1, "Step: starting animation, setting start time"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    :cond_3f
    iget-object v0, p0, mTransitAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_48

    .line 1439
    iget-object v0, p0, mTransitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1441
    :cond_48
    iget-object v0, p0, mScreenCoverAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_51

    .line 1442
    iget-object v0, p0, mScreenCoverAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 1444
    :cond_51
    const/4 v0, 0x1

    iput-boolean v0, p0, mAnimRunning:Z

    .line 1446
    :cond_54
    invoke-direct {p0, p1, p2}, stepAnimation(J)Z

    move-result v0

    goto :goto_2f
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 2365
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2367
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "DualScreenTransition {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2368
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mNextTransition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mNextTransition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mStarted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mStarted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mAnimRunning="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, mAnimRunning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2372
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_55
    iget-object v2, p0, mTransitTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_8a

    .line 2373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mTransitTargetSurfaceControl["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, mTransitTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;

    iget-object v2, v2, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2372
    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    .line 2377
    :cond_8a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mScreenCoverSurfaceControl="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mScreenCoverSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2378
    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2380
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public transitTypeToString(I)Ljava/lang/String;
    .registers 4
    .param p1, "transitionType"    # I

    .prologue
    .line 2420
    sparse-switch p1, :sswitch_data_20

    .line 2426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mTransitionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_19
    return-object v0

    .line 2422
    :sswitch_1a
    const-string v0, "NEXT_TRANSIT_TYPE_NONE"

    goto :goto_19

    .line 2424
    :sswitch_1d
    const-string v0, "NEXT_TRANSIT_TYPE_TRANSLATE"

    goto :goto_19

    .line 2420
    :sswitch_data_20
    .sparse-switch
        0x0 -> :sswitch_1a
        0x65 -> :sswitch_1d
    .end sparse-switch
.end method

.method updateSurfacesInTransaction()V
    .registers 13

    .prologue
    .line 2051
    iget-boolean v0, p0, mStarted:Z

    if-nez v0, :cond_5

    .line 2079
    :cond_4
    return-void

    .line 2055
    :cond_5
    iget-object v0, p0, mTransitTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_90

    iget-object v0, p0, mScreenCoverSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_90

    .line 2056
    iget-boolean v0, p0, mMoreTransit:Z

    if-nez v0, :cond_90

    .line 2057
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_20

    .line 2058
    const-string v0, "DualScreenTransition"

    const-string v1, "Transit animations done, hiding TransitTarget screenshot surface"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    :cond_20
    iget-object v0, p0, mTransitTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_26
    :goto_26
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;

    .line 2061
    .local v10, "info":Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    :try_start_32
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_57

    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSurfacesInTransaction() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v10, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": HIDE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    :cond_57
    iget-object v0, v10, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->surface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_5c} :catch_5d

    goto :goto_26

    .line 2063
    :catch_5d
    move-exception v8

    .line 2064
    .local v8, "e":Ljava/lang/Exception;
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_26

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26

    .line 2067
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "info":Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    :cond_66
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_8b

    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSurfacesInTransaction() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mScreenCoverSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": HIDE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    :cond_8b
    iget-object v0, p0, mScreenCoverSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    .line 2072
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_90
    sget-boolean v0, DEV_FREEZE_TRANSITION:Z

    if-nez v0, :cond_4

    .line 2073
    iget-object v0, p0, mTransitTargetInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :goto_9a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;

    .line 2074
    .restart local v10    # "info":Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;
    new-instance v11, Landroid/graphics/Matrix;

    iget-object v0, v10, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->finalMatrix:Landroid/graphics/Matrix;

    invoke-direct {v11, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 2075
    .local v11, "transitFinalMatrix":Landroid/graphics/Matrix;
    iget-object v1, v10, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->surface:Landroid/view/SurfaceControl;

    iget-object v2, v10, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->finalMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, mTransitTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v0}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v3

    iget v4, v10, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->width:I

    iget v5, v10, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->height:I

    iget v6, v10, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->layer:I

    iget-object v7, v10, Lcom/android/server/wm/DualScreenTransition$TransitTargetInfo;->win:Lcom/android/server/wm/WindowState;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, setTransitTransformInTransaction(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;FIIILcom/android/server/wm/WindowState;)V

    goto :goto_9a
.end method

.method updateWaitingScreens(I)V
    .registers 4
    .param p1, "transition"    # I

    .prologue
    .line 480
    iget-object v0, p0, mWaitingScreens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 481
    sparse-switch p1, :sswitch_data_5a

    .line 499
    iget-object v0, p0, mWaitingScreens:Ljava/util/ArrayList;

    iget-object v1, p0, mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/dualscreen/DualScreen;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    :goto_17
    return-void

    .line 483
    :sswitch_18
    iget-object v0, p0, mWaitingScreens:Ljava/util/ArrayList;

    iget-object v1, p0, mToDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/dualscreen/DualScreen;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 487
    :sswitch_28
    iget v0, p0, mMoveDirection:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3c

    .line 488
    iget-object v0, p0, mWaitingScreens:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->MAIN:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    iget-object v0, p0, mWaitingScreens:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->SUB:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 491
    :cond_3c
    iget v0, p0, mMoveDirection:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_49

    .line 492
    iget-object v0, p0, mWaitingScreens:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/dualscreen/DualScreen;->FULL:Lcom/samsung/android/dualscreen/DualScreen;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 494
    :cond_49
    iget-object v0, p0, mWaitingScreens:Ljava/util/ArrayList;

    iget-object v1, p0, mFromDisplay:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/dualscreen/DualScreen;->displayIdToScreen(I)Lcom/samsung/android/dualscreen/DualScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 481
    nop

    :sswitch_data_5a
    .sparse-switch
        0x64 -> :sswitch_28
        0xc8 -> :sswitch_18
    .end sparse-switch
.end method

.method waitAppTokenDrawn(Lcom/android/server/wm/AppWindowToken;)V
    .registers 5
    .param p1, "appToken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    .line 465
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_1d

    .line 466
    const-string v0, "DualScreenTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "waitAppTokenDrawn() : appToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_1d
    iput-object p1, p0, mWatingAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 469
    return-void
.end method
