.class public Lcom/android/server/wm/WindowAnimator;
.super Ljava/lang/Object;
.source "WindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    }
.end annotation


# static fields
.field static final KEYGUARD_ANIMATING_OUT:I = 0x2

.field private static final KEYGUARD_ANIM_TIMEOUT_MS:J = 0x3e8L

.field static final KEYGUARD_NOT_SHOWN:I = 0x0

.field static final KEYGUARD_SHOWN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WindowAnimator"


# instance fields
.field private mAnimTransactionSequence:I

.field mAnimating:Z

.field final mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

.field mAppWindowAnimating:Z

.field mBulkUpdateParams:I

.field final mContext:Landroid/content/Context;

.field mCurrentTime:J

.field mDisplayContentsAnimators:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mDualScreenTransition:Lcom/android/server/wm/DualScreenTransition;

.field mForceHiding:I

.field mHideWindowsByOthers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mInitialized:Z

.field mIsExpandedDisplayAnimating:Z

.field mIsVRConnected:Z

.field mKeyguardGoingAway:Z

.field mKeyguardGoingAwayDisableWindowAnimations:Z

.field mKeyguardGoingAwayToNotificationShade:Z

.field mLastWindowFreezeSource:Ljava/lang/Object;

.field private mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

.field final mWindowDetachedWallpapers:Lcom/samsung/android/multidisplay/common/FallbackArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/multidisplay/common/FallbackArrayList",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 6
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object v3, p0, mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 126
    iput v2, p0, mBulkUpdateParams:I

    .line 129
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, mDisplayContentsAnimators:Landroid/util/SparseArray;

    .line 133
    iput-object v3, p0, mDualScreenTransition:Lcom/android/server/wm/DualScreenTransition;

    .line 134
    iput-boolean v2, p0, mIsExpandedDisplayAnimating:Z

    .line 135
    new-instance v0, Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    invoke-direct {v0}, Lcom/samsung/android/multidisplay/common/FallbackArrayList;-><init>()V

    iput-object v0, p0, mWindowDetachedWallpapers:Lcom/samsung/android/multidisplay/common/FallbackArrayList;

    .line 138
    iput-boolean v2, p0, mInitialized:Z

    .line 151
    iput v2, p0, mForceHiding:I

    .line 153
    iput-boolean v2, p0, mIsVRConnected:Z

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mHideWindowsByOthers:Ljava/util/ArrayList;

    .line 167
    iput-object p1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    .line 168
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, mContext:Landroid/content/Context;

    .line 169
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    iput-object v0, p0, mPolicy:Landroid/view/WindowManagerPolicy;

    .line 178
    new-instance v0, Lcom/android/server/wm/WindowAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowAnimator$1;-><init>(Lcom/android/server/wm/WindowAnimator;)V

    iput-object v0, p0, mAnimationFrameCallback:Landroid/view/Choreographer$FrameCallback;

    .line 186
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/WindowAnimator;J)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/wm/WindowAnimator;
    .param p1, "x1"    # J

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, animateLocked(J)V

    return-void
.end method

.method private animateLocked(J)V
    .registers 32
    .param p1, "frameTimeNs"    # J

    .prologue
    .line 1119
    move-object/from16 v0, p0

    iget-boolean v0, v0, mInitialized:Z

    move/from16 v23, v0

    if-nez v23, :cond_9

    .line 1346
    :cond_8
    :goto_8
    return-void

    .line 1123
    :cond_9
    const-wide/32 v24, 0xf4240

    div-long v24, p1, v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, mCurrentTime:J

    .line 1124
    const/16 v23, 0x8

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, mBulkUpdateParams:I

    .line 1125
    move-object/from16 v0, p0

    iget-boolean v0, v0, mAnimating:Z

    move/from16 v21, v0

    .line 1126
    .local v21, "wasAnimating":Z
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, mAnimating:Z

    .line 1127
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, mAppWindowAnimating:Z

    .line 1128
    sget-boolean v23, Lcom/android/server/wm/WindowManagerService;->DEBUG_WINDOW_TRACE:Z

    if-eqz v23, :cond_58

    .line 1129
    const-string v23, "WindowAnimator"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "!!! animate: entry time="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-wide v0, v0, mCurrentTime:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    :cond_58
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 1135
    invoke-static {}, Landroid/view/SurfaceControl;->setAnimationTransaction()V

    .line 1145
    const/high16 v18, 0x3f800000    # 1.0f

    .line 1148
    .local v18, "scale":F
    :try_start_60
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/wm/WindowManagerService;->getEasyOneHandScaleSpecLocked(I)Landroid/view/MagnificationSpec;

    move-result-object v20

    .line 1149
    .local v20, "spec":Landroid/view/MagnificationSpec;
    if-eqz v20, :cond_74

    .line 1150
    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/MagnificationSpec;->scale:F

    move/from16 v18, v0

    .line 1154
    :cond_74
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/am/VirtualScreenManagerService;->updateVirtualScreenPosition(F)V

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v16

    .line 1160
    .local v16, "numDisplays":I
    add-int/lit8 v14, v16, -0x1

    .local v14, "i":I
    :goto_8b
    if-ltz v14, :cond_1b1

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 1162
    .local v8, "displayId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, updateAppWindowsLocked(I)V

    .line 1163
    move-object/from16 v0, p0

    iget-object v0, v0, mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 1165
    .local v6, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v0, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object/from16 v19, v0

    .line 1167
    .local v19, "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v19, :cond_d0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v23

    if-eqz v23, :cond_d0

    .line 1168
    move-object/from16 v0, p0

    iget-wide v0, v0, mCurrentTime:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v19

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ScreenRotationAnimation;->stepAnimationLocked(J)Z

    move-result v23

    if-eqz v23, :cond_103

    .line 1169
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, mAnimating:Z

    .line 1202
    :cond_d0
    :goto_d0
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, updateWindowsLocked(I)V

    .line 1203
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, updateWallpaperLocked(I)V

    .line 1205
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v22

    .line 1206
    .local v22, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    .line 1207
    .local v4, "N":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_eb
    if-ge v15, v4, :cond_1ad

    .line 1208
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    .line 1207
    add-int/lit8 v15, v15, 0x1

    goto :goto_eb

    .line 1171
    .end local v4    # "N":I
    .end local v15    # "j":I
    .end local v22    # "windows":Lcom/android/server/wm/WindowList;
    :cond_103
    move-object/from16 v0, p0

    iget v0, v0, mBulkUpdateParams:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, mBulkUpdateParams:I

    .line 1172
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 1173
    const/16 v23, 0x0

    move-object/from16 v0, v23

    iput-object v0, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v23, v0

    if-eqz v23, :cond_d0

    if-nez v8, :cond_d0

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mRotation:I

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lcom/android/server/wm/AccessibilityController;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;I)V
    :try_end_14f
    .catch Ljava/lang/RuntimeException; {:try_start_60 .. :try_end_14f} :catch_150
    .catchall {:try_start_60 .. :try_end_14f} :catchall_23f

    goto :goto_d0

    .line 1307
    .end local v6    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v8    # "displayId":I
    .end local v14    # "i":I
    .end local v16    # "numDisplays":I
    .end local v19    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v20    # "spec":Landroid/view/MagnificationSpec;
    :catch_150
    move-exception v12

    .line 1308
    .local v12, "e":Ljava/lang/RuntimeException;
    :try_start_151
    const-string v23, "WindowAnimator"

    const-string v24, "Unhandled exception in Window Manager"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v12}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15c
    .catchall {:try_start_151 .. :try_end_15c} :catchall_23f

    .line 1310
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 1315
    .end local v12    # "e":Ljava/lang/RuntimeException;
    :goto_15f
    const/4 v13, 0x0

    .line 1316
    .local v13, "hasPendingLayoutChanges":Z
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/util/SparseArray;->size()I

    move-result v16

    .line 1317
    .restart local v16    # "numDisplays":I
    const/4 v9, 0x0

    .local v9, "displayNdx":I
    :goto_171
    move/from16 v0, v16

    if-ge v9, v0, :cond_2fa

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayContents:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DisplayContent;

    .line 1319
    .local v7, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v23

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, getPendingLayoutChanges(I)I

    move-result v17

    .line 1320
    .local v17, "pendingChanges":I
    and-int/lit8 v23, v17, 0x4

    if-eqz v23, :cond_1a7

    .line 1321
    move-object/from16 v0, p0

    iget v0, v0, mBulkUpdateParams:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x20

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, mBulkUpdateParams:I

    .line 1323
    :cond_1a7
    if-eqz v17, :cond_1aa

    .line 1324
    const/4 v13, 0x1

    .line 1317
    :cond_1aa
    add-int/lit8 v9, v9, 0x1

    goto :goto_171

    .line 1160
    .end local v7    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v9    # "displayNdx":I
    .end local v13    # "hasPendingLayoutChanges":Z
    .end local v17    # "pendingChanges":I
    .restart local v4    # "N":I
    .restart local v6    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .restart local v8    # "displayId":I
    .restart local v14    # "i":I
    .restart local v15    # "j":I
    .restart local v19    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .restart local v20    # "spec":Landroid/view/MagnificationSpec;
    .restart local v22    # "windows":Lcom/android/server/wm/WindowList;
    :cond_1ad
    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_8b

    .line 1213
    .end local v4    # "N":I
    .end local v6    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v8    # "displayId":I
    .end local v15    # "j":I
    .end local v19    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    .end local v22    # "windows":Lcom/android/server/wm/WindowList;
    :cond_1b1
    const/4 v11, 0x0

    .line 1233
    .local v11, "dualScreenTransition":Lcom/android/server/wm/DualScreenTransition;
    const/4 v14, 0x0

    :goto_1b3
    move/from16 v0, v16

    if-ge v14, v0, :cond_248

    const/16 v23, 0x4

    move/from16 v0, v23

    if-ge v14, v0, :cond_248

    .line 1234
    :try_start_1bd
    move-object/from16 v0, p0

    iget-object v0, v0, mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 1235
    .restart local v8    # "displayId":I
    move-object/from16 v0, p0

    iget-object v0, v0, mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 1236
    .restart local v6    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v5, v6, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mMultiWindowTransition:Lcom/android/server/wm/MultiWindowTransition;

    .line 1237
    .local v5, "anim":Lcom/android/server/wm/MultiWindowTransition;
    if-eqz v5, :cond_1f7

    invoke-virtual {v5}, Lcom/android/server/wm/MultiWindowTransition;->isAnimating()Z

    move-result v23

    if-eqz v23, :cond_1f7

    .line 1238
    move-object/from16 v0, p0

    iget-wide v0, v0, mCurrentTime:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/MultiWindowTransition;->stepAnimationLocked(J)Z

    move-result v23

    if-eqz v23, :cond_233

    .line 1239
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, mAnimating:Z

    .line 1245
    :cond_1f7
    :goto_1f7
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v22

    .line 1246
    .restart local v22    # "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    .line 1247
    .restart local v4    # "N":I
    const/4 v15, 0x0

    .restart local v15    # "j":I
    :goto_208
    if-ge v15, v4, :cond_244

    .line 1248
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v23, v0

    if-eqz v23, :cond_230

    .line 1249
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/wm/WindowState;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowToken;->mHasMoved:Z

    .line 1247
    :cond_230
    add-int/lit8 v15, v15, 0x1

    goto :goto_208

    .line 1241
    .end local v4    # "N":I
    .end local v15    # "j":I
    .end local v22    # "windows":Lcom/android/server/wm/WindowList;
    :cond_233
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowManagerService;->finishMultiWindowTransitionLocked(I)V
    :try_end_23e
    .catch Ljava/lang/RuntimeException; {:try_start_1bd .. :try_end_23e} :catch_150
    .catchall {:try_start_1bd .. :try_end_23e} :catchall_23f

    goto :goto_1f7

    .line 1310
    .end local v5    # "anim":Lcom/android/server/wm/MultiWindowTransition;
    .end local v6    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v8    # "displayId":I
    .end local v11    # "dualScreenTransition":Lcom/android/server/wm/DualScreenTransition;
    .end local v14    # "i":I
    .end local v16    # "numDisplays":I
    .end local v20    # "spec":Landroid/view/MagnificationSpec;
    :catchall_23f
    move-exception v23

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v23

    .line 1233
    .restart local v4    # "N":I
    .restart local v5    # "anim":Lcom/android/server/wm/MultiWindowTransition;
    .restart local v6    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .restart local v8    # "displayId":I
    .restart local v11    # "dualScreenTransition":Lcom/android/server/wm/DualScreenTransition;
    .restart local v14    # "i":I
    .restart local v15    # "j":I
    .restart local v16    # "numDisplays":I
    .restart local v20    # "spec":Landroid/view/MagnificationSpec;
    .restart local v22    # "windows":Lcom/android/server/wm/WindowList;
    :cond_244
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1b3

    .line 1256
    .end local v4    # "N":I
    .end local v5    # "anim":Lcom/android/server/wm/MultiWindowTransition;
    .end local v6    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v8    # "displayId":I
    .end local v15    # "j":I
    .end local v22    # "windows":Lcom/android/server/wm/WindowList;
    :cond_248
    const/4 v14, 0x0

    :goto_249
    move/from16 v0, v16

    if-ge v14, v0, :cond_2b7

    .line 1257
    :try_start_24d
    move-object/from16 v0, p0

    iget-object v0, v0, mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 1259
    .restart local v8    # "displayId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, testTokenMayBeDrawnLocked(I)V

    .line 1261
    move-object/from16 v0, p0

    iget-object v0, v0, mDisplayContentsAnimators:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    move-object/from16 v19, v0

    .line 1263
    .restart local v19    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    if-eqz v19, :cond_277

    .line 1264
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/ScreenRotationAnimation;->updateSurfacesInTransaction()V

    .line 1267
    :cond_277
    move-object/from16 v0, p0

    iget-boolean v0, v0, mAnimating:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/DisplayContent;->animateDimLayers()Z

    move-result v24

    or-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, mAnimating:Z

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2b4

    if-nez v8, :cond_2b4

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/AccessibilityController;->drawMagnifiedRegionBorderIfNeededLocked()V

    .line 1256
    :cond_2b4
    add-int/lit8 v14, v14, 0x1

    goto :goto_249

    .line 1294
    .end local v8    # "displayId":I
    .end local v19    # "screenRotationAnimation":Lcom/android/server/wm/ScreenRotationAnimation;
    :cond_2b7
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/VirtualScreenManagerService;->clearVirtualScreenPosition()V

    .line 1298
    move-object/from16 v0, p0

    iget-boolean v0, v0, mAnimating:Z

    move/from16 v23, v0

    if-eqz v23, :cond_2cf

    .line 1299
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 1302
    :cond_2cf
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowManagerService;->setFocusedStackLayer()V

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2f5

    .line 1305
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/Watermark;->drawIfNeeded()V
    :try_end_2f5
    .catch Ljava/lang/RuntimeException; {:try_start_24d .. :try_end_2f5} :catch_150
    .catchall {:try_start_24d .. :try_end_2f5} :catchall_23f

    .line 1310
    :cond_2f5
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto/16 :goto_15f

    .line 1328
    .end local v11    # "dualScreenTransition":Lcom/android/server/wm/DualScreenTransition;
    .end local v14    # "i":I
    .end local v20    # "spec":Landroid/view/MagnificationSpec;
    .restart local v9    # "displayNdx":I
    .restart local v13    # "hasPendingLayoutChanges":Z
    :cond_2fa
    const/4 v10, 0x0

    .line 1329
    .local v10, "doRequest":Z
    move-object/from16 v0, p0

    iget v0, v0, mBulkUpdateParams:I

    move/from16 v23, v0

    if-eqz v23, :cond_30d

    .line 1330
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowManagerService;->copyAnimToLayoutParamsLocked()Z

    move-result v10

    .line 1333
    :cond_30d
    if-nez v13, :cond_311

    if-eqz v10, :cond_31a

    .line 1334
    :cond_311
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    .line 1337
    :cond_31a
    move-object/from16 v0, p0

    iget-boolean v0, v0, mAnimating:Z

    move/from16 v23, v0

    if-nez v23, :cond_32d

    if-eqz v21, :cond_32d

    .line 1338
    move-object/from16 v0, p0

    iget-object v0, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    .line 1340
    :cond_32d
    sget-boolean v23, Lcom/android/server/wm/WindowManagerService;->DEBUG_WINDOW_TRACE:Z

    if-eqz v23, :cond_8

    .line 1341
    const-string v23, "WindowAnimator"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "!!! animate: exit mAnimating="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-boolean v0, v0, mAnimating:Z

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " mBulkUpdateParams="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, mBulkUpdateParams:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " mPendingLayoutChanges(DEFAULT_DISPLAY)="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, getPendingLayoutChanges(I)I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8
.end method

.method static bulkUpdateParamsToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "bulkUpdateParams"    # I

    .prologue
    .line 1349
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1350
    .local v0, "builder":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_10

    .line 1351
    const-string v1, " UPDATE_ROTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1353
    :cond_10
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_19

    .line 1354
    const-string v1, " WALLPAPER_MAY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1356
    :cond_19
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_22

    .line 1357
    const-string v1, " FORCE_HIDING_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1359
    :cond_22
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_2b

    .line 1360
    const-string v1, " ORIENTATION_CHANGE_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1362
    :cond_2b
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_34

    .line 1363
    const-string v1, " TURN_ON_SCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1365
    :cond_34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private forceHidingToString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 158
    iget v0, p0, mForceHiding:I

    packed-switch v0, :pswitch_data_24

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEYGUARD STATE UNKNOWN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mForceHiding:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1a
    return-object v0

    .line 159
    :pswitch_1b
    const-string v0, "KEYGUARD_NOT_SHOWN"

    goto :goto_1a

    .line 160
    :pswitch_1e
    const-string v0, "KEYGUARD_SHOWN"

    goto :goto_1a

    .line 161
    :pswitch_21
    const-string v0, "KEYGUARD_ANIMATING_OUT"

    goto :goto_1a

    .line 158
    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
    .end packed-switch
.end method

.method private getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .registers 4
    .param p1, "displayId"    # I

    .prologue
    .line 1455
    iget-object v1, p0, mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 1456
    .local v0, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-nez v0, :cond_15

    .line 1457
    new-instance v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .end local v0    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;-><init>(Lcom/android/server/wm/WindowAnimator;Lcom/android/server/wm/WindowAnimator$1;)V

    .line 1458
    .restart local v0    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v1, p0, mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1460
    :cond_15
    return-object v0
.end method

.method private isinWhitelist(Ljava/lang/String;)Z
    .registers 10
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 441
    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/String;

    const-string v7, "MultiWindow"

    aput-object v7, v4, v6

    const-string v7, "MinimizeAnimator"

    aput-object v7, v4, v5

    .line 442
    .local v4, "whitelist":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_10
    if-ge v1, v2, :cond_1e

    aget-object v3, v0, v1

    .line 443
    .local v3, "white":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 447
    .end local v3    # "white":Ljava/lang/String;
    :goto_1a
    return v5

    .line 442
    .restart local v3    # "white":Ljava/lang/String;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .end local v3    # "white":Ljava/lang/String;
    :cond_1e
    move v5, v6

    .line 447
    goto :goto_1a
.end method

.method private shouldForceHide(Lcom/android/server/wm/WindowState;)Z
    .registers 18
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .prologue
    .line 294
    move-object/from16 v0, p0

    iget-object v12, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v12, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 295
    .local v5, "imeTarget":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v12, v0, mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy;->getWinShowWhenLockedLw()Landroid/view/WindowManagerPolicy$WindowState;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowState;

    .line 296
    .local v11, "winShowWhenLocked":Lcom/android/server/wm/WindowState;
    if-nez v11, :cond_145

    const/4 v2, 0x0

    .line 298
    .local v2, "appShowWhenLocked":Lcom/android/server/wm/AppWindowToken;
    :goto_13
    if-eqz v5, :cond_149

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v12

    if-eqz v12, :cond_149

    invoke-virtual {v5}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v13, 0x80000

    and-int/2addr v12, v13

    if-nez v12, :cond_3a

    iget-object v12, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v12, :cond_2e

    iget-object v12, v5, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v12, v2, :cond_3a

    :cond_2e
    move-object/from16 v0, p0

    iget-object v12, v0, mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v13, v5, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v12, v5, v13}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v12

    if-nez v12, :cond_149

    :cond_3a
    const/4 v9, 0x1

    .line 303
    .local v9, "showImeOverKeyguard":Z
    :goto_3b
    const/4 v1, 0x0

    .line 305
    .local v1, "allowWhenLocked":Z
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 308
    .local v4, "atoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v12, :cond_4a

    move-object/from16 v0, p1

    if-ne v5, v0, :cond_14c

    :cond_4a
    if-eqz v9, :cond_14c

    const/4 v12, 0x1

    :goto_4d
    or-int/2addr v1, v12

    .line 310
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v13, 0x80000

    and-int/2addr v12, v13

    if-eqz v12, :cond_14f

    move-object/from16 v0, p1

    iget-boolean v12, v0, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v12, :cond_14f

    const/4 v12, 0x1

    :goto_60
    or-int/2addr v1, v12

    .line 313
    move-object/from16 v0, p0

    iget-object v12, v0, mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy;->getAppsShowWhenLockedLw()Ljava/util/ArrayList;

    move-result-object v3

    .line 314
    .local v3, "appsShowWhenLocked":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IApplicationToken;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    or-int/2addr v1, v12

    .line 317
    if-eqz v2, :cond_97

    .line 318
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eq v2, v12, :cond_95

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v13, 0x80000

    and-int/2addr v12, v13

    if-eqz v12, :cond_8b

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v12

    if-nez v12, :cond_95

    :cond_8b
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v12, v12, 0x100

    if-eqz v12, :cond_152

    :cond_95
    const/4 v12, 0x1

    :goto_96
    or-int/2addr v1, v12

    .line 326
    :cond_97
    const/4 v8, 0x0

    .line 327
    .local v8, "keyguardState":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getBaseType()I

    move-result v12

    sparse-switch v12, :sswitch_data_178

    .line 334
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v13, 0x80000

    and-int/2addr v12, v13

    if-eqz v12, :cond_164

    .line 335
    move-object/from16 v0, p0

    iget v12, v0, mForceHiding:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_161

    const/4 v8, 0x1

    .line 344
    :goto_b2
    move-object/from16 v0, p0

    iget-object v12, v0, mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v12}, Landroid/view/WindowManagerPolicy;->isKeyguardShowingOrOccluded()Z

    move-result v12

    if-eqz v12, :cond_170

    if-eqz v8, :cond_170

    const/4 v7, 0x1

    .line 348
    .local v7, "keyguardOn":Z
    :goto_bf
    if-nez v7, :cond_139

    if-eqz v4, :cond_139

    iget v12, v4, Lcom/android/server/wm/AppWindowToken;->userId:I

    const/16 v13, 0x64

    if-lt v12, v13, :cond_139

    .line 349
    iget v10, v4, Lcom/android/server/wm/AppWindowToken;->userId:I

    .line 350
    .local v10, "userId":I
    invoke-virtual/range {p0 .. p0}, getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v12

    if-eqz v12, :cond_173

    invoke-virtual/range {p0 .. p0}, getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v12

    sget-object v13, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v12, v13, v10}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v12

    if-eqz v12, :cond_173

    invoke-virtual/range {p0 .. p0}, getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/android/server/pm/PersonaManagerService;->isKnoxKeyguardShown(I)Z

    move-result v12

    if-nez v12, :cond_173

    const/4 v6, 0x1

    .line 353
    .local v6, "isKnoxContainerLocked":Z
    :goto_e8
    if-eqz v6, :cond_139

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, isinWhitelist(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_139

    .line 354
    const/4 v7, 0x1

    .line 355
    const-string v12, "WindowAnimator"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "KNOX("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ") state : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v14

    sget-object v15, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v14, v15, v10}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " isKnoxKeyguardShown : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v14

    invoke-virtual {v14, v10}, Lcom/android/server/pm/PersonaManagerService;->isKnoxKeyguardShown(I)Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    .end local v6    # "isKnoxContainerLocked":Z
    .end local v10    # "userId":I
    :cond_139
    if-eqz v7, :cond_176

    if-nez v1, :cond_176

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v12

    if-nez v12, :cond_176

    const/4 v12, 0x1

    :goto_144
    return v12

    .line 296
    .end local v1    # "allowWhenLocked":Z
    .end local v2    # "appShowWhenLocked":Lcom/android/server/wm/AppWindowToken;
    .end local v3    # "appsShowWhenLocked":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IApplicationToken;>;"
    .end local v4    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v7    # "keyguardOn":Z
    .end local v8    # "keyguardState":Z
    .end local v9    # "showImeOverKeyguard":Z
    :cond_145
    iget-object v2, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    goto/16 :goto_13

    .line 298
    .restart local v2    # "appShowWhenLocked":Lcom/android/server/wm/AppWindowToken;
    :cond_149
    const/4 v9, 0x0

    goto/16 :goto_3b

    .line 308
    .restart local v1    # "allowWhenLocked":Z
    .restart local v4    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .restart local v9    # "showImeOverKeyguard":Z
    :cond_14c
    const/4 v12, 0x0

    goto/16 :goto_4d

    .line 310
    :cond_14f
    const/4 v12, 0x0

    goto/16 :goto_60

    .line 318
    .restart local v3    # "appsShowWhenLocked":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/IApplicationToken;>;"
    :cond_152
    const/4 v12, 0x0

    goto/16 :goto_96

    .line 330
    .restart local v8    # "keyguardState":Z
    :sswitch_155
    move-object/from16 v0, p0

    iget v12, v0, mForceHiding:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_15f

    const/4 v8, 0x1

    .line 331
    :goto_15d
    goto/16 :goto_b2

    .line 330
    :cond_15f
    const/4 v8, 0x0

    goto :goto_15d

    .line 335
    :cond_161
    const/4 v8, 0x0

    goto/16 :goto_b2

    .line 337
    :cond_164
    move-object/from16 v0, p0

    iget v12, v0, mForceHiding:I

    const/4 v13, 0x2

    if-eq v12, v13, :cond_16e

    const/4 v8, 0x1

    :goto_16c
    goto/16 :goto_b2

    :cond_16e
    const/4 v8, 0x0

    goto :goto_16c

    .line 344
    :cond_170
    const/4 v7, 0x0

    goto/16 :goto_bf

    .line 350
    .restart local v7    # "keyguardOn":Z
    .restart local v10    # "userId":I
    :cond_173
    const/4 v6, 0x0

    goto/16 :goto_e8

    .line 361
    .end local v10    # "userId":I
    :cond_176
    const/4 v12, 0x0

    goto :goto_144

    .line 327
    :sswitch_data_178
    .sparse-switch
        0x7d9 -> :sswitch_155
        0x8b2 -> :sswitch_155
    .end sparse-switch
.end method

.method private shouldForceHideByOthers(Lcom/android/server/wm/WindowState;I)Z
    .registers 13
    .param p1, "win"    # Lcom/android/server/wm/WindowState;
    .param p2, "displayId"    # I

    .prologue
    const/high16 v9, 0x100000

    const/4 v8, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 365
    iget-object v6, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->isHMTconnected()Z

    move-result v2

    .line 367
    .local v2, "isHMTconnecting":Z
    if-nez v2, :cond_11

    iget-boolean v6, p0, mIsVRConnected:Z

    if-eqz v6, :cond_a1

    .line 368
    :cond_11
    if-eqz v2, :cond_4c

    .line 369
    iput-boolean v4, p0, mIsVRConnected:Z

    .line 370
    iget-object v6, p0, mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v6, p1, v7}, Landroid/view/WindowManagerPolicy;->canBeForceHiddenByVR(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v6

    if-eqz v6, :cond_16c

    .line 371
    invoke-virtual {p1, v5, v5}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v0

    .line 372
    .local v0, "hideByVR":Z
    if-eqz v0, :cond_4b

    .line 373
    iget-object v5, p0, mHideWindowsByOthers:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 374
    iget-object v5, p0, mHideWindowsByOthers:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    :cond_32
    const-string v5, "WindowAnimator"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "hide by VR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    .end local v0    # "hideByVR":Z
    :cond_4b
    :goto_4b
    return v4

    .line 382
    :cond_4c
    iget-object v4, p0, mHideWindowsByOthers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9d

    .line 383
    iget-object v4, p0, mHideWindowsByOthers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_5a
    :goto_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_98

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 384
    .local v3, "tempWin":Lcom/android/server/wm/WindowState;
    iget-object v4, p0, mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v4, v3, v6}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v4

    if-nez v4, :cond_5a

    .line 385
    invoke-virtual {v3, v5, v5}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    .line 386
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v4, v9

    if-eqz v4, :cond_5a

    .line 387
    iget v4, p0, mBulkUpdateParams:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, mBulkUpdateParams:I

    .line 388
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v4

    invoke-virtual {p0, v4, v8}, setPendingLayoutChanges(II)V

    .line 390
    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v6, "updateWindowsAndWallpaperLocked 4"

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v7

    invoke-virtual {p0, v7}, getPendingLayoutChanges(I)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto :goto_5a

    .line 395
    .end local v3    # "tempWin":Lcom/android/server/wm/WindowState;
    :cond_98
    iget-object v4, p0, mHideWindowsByOthers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 397
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_9d
    iput-boolean v5, p0, mIsVRConnected:Z

    move v4, v5

    .line 398
    goto :goto_4b

    .line 400
    :cond_a1
    if-nez p2, :cond_16c

    .line 401
    iget-object v6, p0, mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy;->isForceHideByNightClock()Z

    move-result v6

    if-eqz v6, :cond_118

    .line 402
    iget-object v6, p0, mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v6, p1, v7}, Landroid/view/WindowManagerPolicy;->canBeForceHiddenByNightClock(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 403
    invoke-virtual {p1, v5, v5}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 404
    const-string v6, "WindowAnimator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "hide by NightClock "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-boolean v6, p1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v6, :cond_109

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x80000

    and-int/2addr v6, v7

    if-eqz v6, :cond_109

    .line 406
    const-string v6, "WindowAnimator"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NightClock : turning screen on: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iput-boolean v5, p1, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    .line 408
    iget-object v5, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreenPackage:Ljava/lang/String;

    .line 409
    iget v5, p0, mBulkUpdateParams:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, mBulkUpdateParams:I

    .line 411
    :cond_109
    iget-object v5, p0, mHideWindowsByOthers:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4b

    .line 412
    iget-object v5, p0, mHideWindowsByOthers:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4b

    .line 418
    :cond_118
    iget-object v4, p0, mHideWindowsByOthers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_169

    .line 419
    iget-object v4, p0, mHideWindowsByOthers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_126
    :goto_126
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_164

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 420
    .restart local v3    # "tempWin":Lcom/android/server/wm/WindowState;
    iget-object v4, p0, mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v4, v3, v6}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v4

    if-nez v4, :cond_126

    .line 421
    invoke-virtual {v3, v5, v5}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    .line 422
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v4, v9

    if-eqz v4, :cond_126

    .line 423
    iget v4, p0, mBulkUpdateParams:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, mBulkUpdateParams:I

    .line 424
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v4

    invoke-virtual {p0, v4, v8}, setPendingLayoutChanges(II)V

    .line 426
    iget-object v4, p0, mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v6, "updateWindowsAndWallpaperLocked 4"

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v7

    invoke-virtual {p0, v7}, getPendingLayoutChanges(I)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto :goto_126

    .line 431
    .end local v3    # "tempWin":Lcom/android/server/wm/WindowState;
    :cond_164
    iget-object v4, p0, mHideWindowsByOthers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_169
    move v4, v5

    .line 433
    goto/16 :goto_4b

    :cond_16c
    move v4, v5

    .line 437
    goto/16 :goto_4b
.end method

.method private testTokenMayBeDrawnLocked(I)V
    .registers 14
    .param p1, "displayId"    # I

    .prologue
    .line 1065
    iget-object v9, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getTasks()Ljava/util/ArrayList;

    move-result-object v5

    .line 1066
    .local v5, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1067
    .local v2, "numTasks":I
    const/4 v4, 0x0

    .local v4, "taskNdx":I
    :goto_f
    if-ge v4, v2, :cond_9e

    .line 1068
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Task;

    iget-object v7, v9, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 1069
    .local v7, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v7}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v3

    .line 1070
    .local v3, "numTokens":I
    const/4 v6, 0x0

    .local v6, "tokenNdx":I
    :goto_1e
    if-ge v6, v3, :cond_9a

    .line 1071
    invoke-virtual {v7, v6}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    .line 1072
    .local v8, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v1, v8, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 1073
    .local v1, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v0, v8, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    .line 1074
    .local v0, "allDrawn":Z
    iget-boolean v9, v1, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    if-eq v0, v9, :cond_7b

    .line 1075
    iput-boolean v0, v1, Lcom/android/server/wm/AppWindowAnimator;->allDrawn:Z

    .line 1076
    if-eqz v0, :cond_7b

    .line 1079
    iget-boolean v9, v1, Lcom/android/server/wm/AppWindowAnimator;->freezingScreen:Z

    if-eqz v9, :cond_7e

    .line 1080
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    .line 1081
    iget-object v9, p0, mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v8, v10, v11}, Lcom/android/server/wm/WindowManagerService;->unsetAppFreezingScreenLocked(Lcom/android/server/wm/AppWindowToken;ZZ)V

    .line 1082
    sget-boolean v9, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v9, :cond_74

    const-string v9, "WindowAnimator"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Setting mOrientationChangeComplete=true because wtoken "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " numInteresting="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Lcom/android/server/wm/AppWindowToken;->numInterestingWindows:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " numDrawn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v8, Lcom/android/server/wm/AppWindowToken;->numDrawnWindows:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :cond_74
    const/4 v9, 0x4

    const-string/jumbo v10, "testTokenMayBeDrawnLocked: freezingScreen"

    invoke-virtual {p0, v1, v9, v10, p1}, setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    .line 1070
    :cond_7b
    :goto_7b
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e

    .line 1091
    :cond_7e
    const/16 v9, 0x8

    const-string/jumbo v10, "testTokenMayBeDrawnLocked"

    invoke-virtual {p0, v1, v9, v10, p1}, setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    .line 1103
    iget-object v9, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7b

    .line 1104
    iget-boolean v9, p0, mAnimating:Z

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowAnimator;->showAllWindowsLocked()Z

    move-result v10

    or-int/2addr v9, v10

    iput-boolean v9, p0, mAnimating:Z

    goto :goto_7b

    .line 1067
    .end local v0    # "allDrawn":Z
    .end local v1    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_9a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_f

    .line 1114
    .end local v3    # "numTokens":I
    .end local v6    # "tokenNdx":I
    .end local v7    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_9e
    return-void
.end method

.method private updateAppWindowsLocked(I)V
    .registers 16
    .param p1, "displayId"    # I

    .prologue
    .line 229
    iget-object v11, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v11, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->getStacks()Ljava/util/ArrayList;

    move-result-object v6

    .line 230
    .local v6, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/TaskStack;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v5, v11, -0x1

    .local v5, "stackNdx":I
    :goto_10
    if-ltz v5, :cond_106

    .line 231
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/TaskStack;

    .line 232
    .local v4, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v8

    .line 233
    .local v8, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v7, v11, -0x1

    .local v7, "taskNdx":I
    :goto_22
    if-ltz v7, :cond_99

    .line 234
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/Task;

    iget-object v10, v11, Lcom/android/server/wm/Task;->mAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 235
    .local v10, "tokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v10}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v11

    add-int/lit8 v9, v11, -0x1

    .local v9, "tokenNdx":I
    :goto_32
    if-ltz v9, :cond_96

    .line 236
    invoke-virtual {v10, v9}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v11, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 244
    .local v0, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    iput-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    .line 245
    iget-wide v12, p0, mCurrentTime:J

    invoke-virtual {v0, v12, v13, p1}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JI)Z

    move-result v11

    if-eqz v11, :cond_53

    .line 246
    const/4 v11, 0x1

    iput-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    .line 247
    const/4 v11, 0x1

    iput-boolean v11, p0, mAppWindowAnimating:Z

    iput-boolean v11, p0, mAnimating:Z

    .line 235
    :cond_50
    :goto_50
    add-int/lit8 v9, v9, -0x1

    goto :goto_32

    .line 248
    :cond_53
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    if-eqz v11, :cond_50

    .line 250
    const/4 v11, 0x4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "appToken "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " done"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v0, v11, v12, p1}, setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    .line 253
    sget-boolean v11, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v11, :cond_50

    const-string v11, "WindowAnimator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateWindowsApps...: done animating "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_50

    .line 233
    .end local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_96
    add-int/lit8 v7, v7, -0x1

    goto :goto_22

    .line 259
    .end local v9    # "tokenNdx":I
    .end local v10    # "tokens":Lcom/android/server/wm/AppTokenList;
    :cond_99
    iget-object v1, v4, Lcom/android/server/wm/TaskStack;->mExitingAppTokens:Lcom/android/server/wm/AppTokenList;

    .line 260
    .local v1, "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    invoke-virtual {v1}, Lcom/android/server/wm/AppTokenList;->size()I

    move-result v2

    .line 261
    .local v2, "exitingCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a0
    if-ge v3, v2, :cond_102

    .line 262
    invoke-virtual {v1, v3}, Lcom/android/server/wm/AppTokenList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v11, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 263
    .restart local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    iput-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    .line 264
    iget-wide v12, p0, mCurrentTime:J

    invoke-virtual {v0, v12, v13, p1}, Lcom/android/server/wm/AppWindowAnimator;->stepAnimationLocked(JI)Z

    move-result v11

    if-eqz v11, :cond_be

    .line 265
    const/4 v11, 0x1

    iput-boolean v11, p0, mAppWindowAnimating:Z

    iput-boolean v11, p0, mAnimating:Z

    .line 261
    :cond_bb
    :goto_bb
    add-int/lit8 v3, v3, 0x1

    goto :goto_a0

    .line 266
    :cond_be
    iget-boolean v11, v0, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    if-eqz v11, :cond_bb

    .line 268
    const/4 v11, 0x4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "exiting appToken "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " done"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v0, v11, v12, p1}, setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V

    .line 270
    sget-boolean v11, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v11, :cond_bb

    const-string v11, "WindowAnimator"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateWindowsApps...: done animating exiting "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bb

    .line 230
    .end local v0    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    :cond_102
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_10

    .line 275
    .end local v1    # "exitingAppTokens":Lcom/android/server/wm/AppTokenList;
    .end local v2    # "exitingCount":I
    .end local v3    # "i":I
    .end local v4    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v7    # "taskNdx":I
    .end local v8    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/Task;>;"
    :cond_106
    return-void
.end method

.method private updateWallpaperLocked(I)V
    .registers 19
    .param p1, "displayId"    # I

    .prologue
    .line 911
    move-object/from16 v0, p0

    iget-object v14, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wm/DisplayContent;->resetAnimationBackgroundAnimator()V

    .line 913
    move-object/from16 v0, p0

    iget-object v14, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v13

    .line 914
    .local v13, "windows":Lcom/android/server/wm/WindowList;
    const/4 v3, 0x0

    .line 920
    .local v3, "detachedWallpaper":Lcom/android/server/wm/WindowState;
    const/4 v7, 0x0

    .line 921
    .local v7, "lastAnimationBackgroundStack":Lcom/android/server/wm/TaskStack;
    const/4 v6, 0x0

    .line 922
    .local v6, "lastAnimationBackgroundColor":I
    const/4 v8, 0x0

    .line 923
    .local v8, "lastWinAnimator":Lcom/android/server/wm/WindowStateAnimator;
    const/4 v9, 0x0

    .line 926
    .local v9, "lastWinAnimatorCount":I
    invoke-virtual {v13}, Lcom/android/server/wm/WindowList;->size()I

    move-result v14

    add-int/lit8 v5, v14, -0x1

    .local v5, "i":I
    :goto_22
    if-ltz v5, :cond_d1

    .line 927
    invoke-virtual {v13, v5}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/WindowState;

    .line 928
    .local v11, "win":Lcom/android/server/wm/WindowState;
    iget-object v12, v11, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 929
    .local v12, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v14, v12, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v14, :cond_33

    .line 926
    :cond_30
    :goto_30
    add-int/lit8 v5, v5, -0x1

    goto :goto_22

    .line 933
    :cond_33
    iget-object v14, v11, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v14, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 938
    .local v4, "flags":I
    iget-boolean v14, v12, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v14, :cond_80

    .line 939
    iget-object v14, v12, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v14, :cond_7b

    .line 940
    const/high16 v14, 0x100000

    and-int/2addr v14, v4

    if-eqz v14, :cond_4d

    iget-object v14, v12, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v14}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v14

    if-eqz v14, :cond_4d

    .line 942
    move-object v3, v11

    .line 944
    :cond_4d
    const/4 v2, 0x0

    .line 956
    .local v2, "color":I
    iget-object v14, v12, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v14}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v2

    .line 959
    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v10

    .line 960
    .local v10, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v10, :cond_7b

    .line 962
    if-eqz v2, :cond_7b

    invoke-virtual {v10}, Lcom/android/server/wm/TaskStack;->isFloatingStack()Z

    move-result v14

    if-nez v14, :cond_7b

    iget-object v14, v11, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v14, v14, Landroid/view/WindowManager$LayoutParams;->width:I

    if-nez v14, :cond_6e

    iget-object v14, v11, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v14, v14, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eqz v14, :cond_7b

    .line 963
    :cond_6e
    if-eqz v8, :cond_76

    iget v14, v12, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v15, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v14, v15, :cond_7b

    .line 964
    :cond_76
    move-object v7, v10

    .line 965
    move v6, v2

    .line 966
    move-object v8, v12

    .line 967
    add-int/lit8 v9, v9, 0x1

    .line 974
    .end local v2    # "color":I
    .end local v10    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_7b
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, mAnimating:Z

    .line 980
    :cond_80
    iget-object v1, v12, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 981
    .local v1, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v1, :cond_30

    iget-object v14, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v14, :cond_30

    iget-boolean v14, v1, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-eqz v14, :cond_30

    .line 983
    const/high16 v14, 0x100000

    and-int/2addr v14, v4

    if-eqz v14, :cond_9a

    iget-object v14, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v14}, Landroid/view/animation/Animation;->getDetachWallpaper()Z

    move-result v14

    if-eqz v14, :cond_9a

    .line 985
    move-object v3, v11

    .line 988
    :cond_9a
    const/4 v2, 0x0

    .line 1000
    .restart local v2    # "color":I
    iget-object v14, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v14}, Landroid/view/animation/Animation;->getBackgroundColor()I

    move-result v2

    .line 1002
    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v10

    .line 1003
    .restart local v10    # "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v10, :cond_30

    .line 1005
    if-eqz v2, :cond_c4

    .line 1006
    invoke-virtual {v10}, Lcom/android/server/wm/TaskStack;->isFloatingStack()Z

    move-result v14

    if-nez v14, :cond_30

    iget-object v14, v11, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v14, v14, Lcom/android/server/wm/AppWindowToken;->appFullscreen:Z

    if-eqz v14, :cond_30

    .line 1007
    if-eqz v8, :cond_bd

    iget v14, v12, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v15, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v14, v15, :cond_30

    .line 1008
    :cond_bd
    move-object v7, v10

    .line 1009
    move v6, v2

    .line 1010
    move-object v8, v12

    .line 1011
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_30

    .line 1018
    :cond_c4
    if-eqz v6, :cond_30

    if-eqz v8, :cond_30

    iget v14, v12, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v15, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v14, v15, :cond_30

    .line 1020
    move-object v8, v12

    goto/16 :goto_30

    .line 1029
    .end local v1    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v2    # "color":I
    .end local v4    # "flags":I
    .end local v10    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v11    # "win":Lcom/android/server/wm/WindowState;
    .end local v12    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_d1
    if-eqz v7, :cond_e5

    .line 1030
    const/4 v14, 0x1

    if-ne v9, v14, :cond_126

    if-eqz v8, :cond_126

    iget-object v14, v8, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v14, v14, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-eqz v14, :cond_126

    .line 1031
    const-string v14, "WindowAnimator"

    const-string v15, "Skip setting animation background if there is an exiting window only."

    invoke-static {v14, v15}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    :cond_e5
    :goto_e5
    move-object/from16 v0, p0

    iget-object v14, v0, mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eq v14, v3, :cond_125

    .line 1051
    sget-boolean v14, Lcom/android/server/wm/WindowManagerService;->DEBUG_WALLPAPER:Z

    if-eqz v14, :cond_117

    const-string v14, "WindowAnimator"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Detached wallpaper changed from "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " to "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_117
    move-object/from16 v0, p0

    iput-object v3, v0, mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    .line 1055
    move-object/from16 v0, p0

    iget v14, v0, mBulkUpdateParams:I

    or-int/lit8 v14, v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, mBulkUpdateParams:I

    .line 1058
    :cond_125
    return-void

    .line 1033
    :cond_126
    invoke-virtual {v7, v8, v6}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    goto :goto_e5
.end method

.method private updateWindowsLocked(I)V
    .registers 42
    .param p1, "displayId"    # I

    .prologue
    .line 451
    move-object/from16 v0, p0

    iget v2, v0, mAnimTransactionSequence:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, mAnimTransactionSequence:I

    .line 463
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperTokens:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    .line 464
    .local v27, "mWallpaperTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowToken;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v26, v0

    .line 468
    .local v26, "mWallpaperTarget":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v39

    .line 469
    .local v39, "windows":Lcom/android/server/wm/WindowList;
    const/16 v25, 0x0

    .line 471
    .local v25, "keyguardShow":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, mKeyguardGoingAway:Z

    if-eqz v2, :cond_91

    .line 472
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v23, v2, -0x1

    .local v23, "i":I
    :goto_32
    if-ltz v23, :cond_91

    .line 473
    move-object/from16 v0, v39

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 474
    .local v3, "win":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, p0

    iget-object v2, v0, mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v4}, Landroid/view/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_4d

    .line 472
    add-int/lit8 v23, v23, -0x1

    goto :goto_32

    .line 477
    :cond_4d
    iget-object v0, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v38, v0

    .line 478
    .local v38, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_2df

    .line 479
    move-object/from16 v0, v38

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-nez v2, :cond_91

    .line 480
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-eqz v2, :cond_6b

    const-string v2, "WindowAnimator"

    const-string/jumbo v4, "updateWindowsLocked: creating delay animation"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_6b
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object/from16 v0, v38

    iput-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    .line 485
    move-object/from16 v0, v38

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 486
    const/4 v2, 0x0

    move-object/from16 v0, v38

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    .line 487
    const-wide/16 v4, -0x1

    move-object/from16 v0, v38

    iput-wide v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationStartTime:J

    .line 488
    const/4 v2, 0x1

    move-object/from16 v0, v38

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    .line 500
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    .end local v23    # "i":I
    .end local v38    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_91
    :goto_91
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mForceHiding:I

    .line 502
    const/16 v35, 0x0

    .line 503
    .local v35, "wallpaperInUnForceHiding":Z
    const/16 v31, 0x0

    .line 504
    .local v31, "startingInUnForceHiding":Z
    const/16 v32, 0x0

    .line 505
    .local v32, "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    const/16 v34, 0x0

    .line 507
    .local v34, "wallpaper":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v39 .. v39}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v23, v2, -0x1

    .restart local v23    # "i":I
    :goto_a4
    if-ltz v23, :cond_77a

    .line 508
    move-object/from16 v0, v39

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 509
    .restart local v3    # "win":Lcom/android/server/wm/WindowState;
    iget-object v0, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v38, v0

    .line 510
    .restart local v38    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v22, v0

    .line 511
    .local v22, "flags":I
    move-object/from16 v0, p0

    iget-object v2, v0, mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManagerPolicy;->canBeForceHidden(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_2f5

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_d4

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x832

    if-eq v2, v4, :cond_2f5

    :cond_d4
    const/16 v16, 0x1

    .line 515
    .local v16, "canBeForceHidden":Z
    :goto_d6
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, shouldForceHide(Lcom/android/server/wm/WindowState;)Z

    move-result v29

    .line 516
    .local v29, "shouldBeForceHidden":Z
    move-object/from16 v0, v38

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_6fb

    .line 517
    move-object/from16 v0, v38

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    move/from16 v36, v0

    .line 518
    .local v36, "wasAnimating":Z
    move-object/from16 v0, p0

    iget-wide v4, v0, mCurrentTime:J

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Lcom/android/server/wm/WindowStateAnimator;->stepAnimationLocked(J)Z

    move-result v28

    .line 519
    .local v28, "nowAnimating":Z
    move/from16 v0, v28

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/server/wm/WindowStateAnimator;->mWasAnimating:Z

    .line 520
    move-object/from16 v0, p0

    iget-boolean v2, v0, mAnimating:Z

    or-int v2, v2, v28

    move-object/from16 v0, p0

    iput-boolean v2, v0, mAnimating:Z

    .line 522
    move-object/from16 v0, v38

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v2, :cond_2f9

    move-object/from16 v0, v38

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-eqz v2, :cond_2f9

    const/4 v13, 0x1

    .line 524
    .local v13, "appWindowAnimating":Z
    :goto_111
    move-object/from16 v0, v38

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    if-eqz v2, :cond_2fc

    move-object/from16 v0, v38

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowAnimator;->wasAnimating:Z

    if-eqz v2, :cond_2fc

    const/16 v37, 0x1

    .line 526
    .local v37, "wasAppWindowAnimating":Z
    :goto_121
    if-nez v13, :cond_125

    if-eqz v28, :cond_300

    :cond_125
    const/4 v10, 0x1

    .line 527
    .local v10, "anyAnimating":Z
    :goto_126
    if-nez v37, :cond_12a

    if-eqz v36, :cond_303

    :cond_12a
    const/4 v11, 0x1

    .line 530
    .local v11, "anyWasAnimating":Z
    :goto_12b
    if-eqz v10, :cond_312

    if-nez v11, :cond_312

    .line 531
    :try_start_12f
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    move-object/from16 v0, v38

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimatingMove:Z

    if-eqz v2, :cond_306

    const/4 v2, -0x1

    :goto_138
    invoke-interface {v4, v2}, Landroid/view/IWindow;->onAnimationStarted(I)V
    :try_end_13b
    .catch Landroid/os/RemoteException; {:try_start_12f .. :try_end_13b} :catch_31d

    .line 541
    :cond_13b
    :goto_13b
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_WALLPAPER:Z

    if-eqz v2, :cond_169

    .line 542
    const-string v2, "WindowAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": wasAnimating="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", nowAnimating="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_169
    if-eqz v36, :cond_1b4

    move-object/from16 v0, v38

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-nez v2, :cond_1b4

    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v2, v3, :cond_1b4

    .line 547
    move-object/from16 v0, p0

    iget v2, v0, mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, mBulkUpdateParams:I

    .line 548
    const/4 v2, 0x0

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, setPendingLayoutChanges(II)V

    .line 551
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "d["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] updateWindowsAndWallpaperLocked 2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getPendingLayoutChanges(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 557
    :cond_1b4
    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/android/server/wm/WindowState;->mHideBySViewCover:Z

    .line 558
    move-object/from16 v0, p0

    iget-object v2, v0, mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->isForceHideBySViewCover()Z

    move-result v2

    if-eqz v2, :cond_361

    .line 559
    if-nez p1, :cond_280

    .line 561
    move-object/from16 v0, p0

    iget-object v2, v0, mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManagerPolicy;->canBeForceHiddenBySViewCover(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_32d

    .line 562
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v17

    .line 563
    .local v17, "changedByCover":Z
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/android/server/wm/WindowState;->mHideBySViewCover:Z

    .line 564
    if-eqz v17, :cond_21e

    .line 565
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x80000

    and-int/2addr v2, v4

    if-eqz v2, :cond_329

    const/16 v30, 0x1

    .line 566
    .local v30, "showWhenLock":Z
    :goto_1e5
    if-eqz v30, :cond_21e

    iget-boolean v2, v3, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v2, :cond_21e

    .line 567
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v2, :cond_207

    const-string v2, "WindowAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Show surface turning screen on: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :cond_207
    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    .line 570
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreenPackage:Ljava/lang/String;

    .line 571
    move-object/from16 v0, p0

    iget v2, v0, mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x10

    move-object/from16 v0, p0

    iput v2, v0, mBulkUpdateParams:I

    .line 574
    .end local v30    # "showWhenLock":Z
    :cond_21e
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v2, :cond_23d

    if-eqz v17, :cond_23d

    .line 575
    const-string v2, "WindowAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mForceHidingByCover Now policy hidden: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_23d
    :goto_23d
    if-eqz v17, :cond_280

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v18, v0

    .line 589
    .local v18, "currentFocus":Lcom/android/server/wm/WindowState;
    if-eqz v18, :cond_251

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v4, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ge v2, v4, :cond_258

    .line 593
    :cond_251
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 595
    :cond_258
    const/high16 v2, 0x100000

    and-int v2, v2, v22

    if-eqz v2, :cond_280

    .line 596
    move-object/from16 v0, p0

    iget v2, v0, mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, mBulkUpdateParams:I

    .line 597
    const/4 v2, 0x0

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, setPendingLayoutChanges(II)V

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v4, "updateWindowsAndWallpaperLocked 5"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getPendingLayoutChanges(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 793
    .end local v10    # "anyAnimating":Z
    .end local v11    # "anyWasAnimating":Z
    .end local v13    # "appWindowAnimating":Z
    .end local v17    # "changedByCover":Z
    .end local v18    # "currentFocus":Lcom/android/server/wm/WindowState;
    .end local v28    # "nowAnimating":Z
    .end local v36    # "wasAnimating":Z
    .end local v37    # "wasAppWindowAnimating":Z
    :cond_280
    :goto_280
    iget-object v15, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 794
    .local v15, "atoken":Lcom/android/server/wm/AppWindowToken;
    move-object/from16 v0, v38

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2ac

    .line 795
    if-eqz v15, :cond_28f

    iget-boolean v2, v15, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v2, :cond_2ac

    .line 796
    :cond_28f
    invoke-virtual/range {v38 .. v38}, Lcom/android/server/wm/WindowStateAnimator;->performShowLocked()Z

    move-result v2

    if-eqz v2, :cond_2ac

    .line 797
    const/16 v2, 0x8

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, setPendingLayoutChanges(II)V

    .line 800
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v4, "updateWindowsAndWallpaperLocked 5"

    invoke-virtual/range {p0 .. p1}, getPendingLayoutChanges(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 806
    :cond_2ac
    move-object/from16 v0, v38

    iget-object v12, v0, Lcom/android/server/wm/WindowStateAnimator;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    .line 807
    .local v12, "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    if-eqz v12, :cond_2d5

    iget-object v2, v12, Lcom/android/server/wm/AppWindowAnimator;->thumbnail:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_2d5

    .line 808
    iget v2, v12, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    move-object/from16 v0, p0

    iget v4, v0, mAnimTransactionSequence:I

    if-eq v2, v4, :cond_2c7

    .line 809
    move-object/from16 v0, p0

    iget v2, v0, mAnimTransactionSequence:I

    iput v2, v12, Lcom/android/server/wm/AppWindowAnimator;->thumbnailTransactionSeq:I

    .line 810
    const/4 v2, 0x0

    iput v2, v12, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 812
    :cond_2c7
    iget v2, v12, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-ge v2, v4, :cond_2d5

    .line 813
    move-object/from16 v0, v38

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iput v2, v12, Lcom/android/server/wm/AppWindowAnimator;->thumbnailLayer:I

    .line 816
    :cond_2d5
    iget-boolean v2, v3, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v2, :cond_70d

    .line 817
    move-object/from16 v34, v3

    .line 507
    .end local v12    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v15    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_2db
    :goto_2db
    add-int/lit8 v23, v23, -0x1

    goto/16 :goto_a4

    .line 491
    .end local v16    # "canBeForceHidden":Z
    .end local v22    # "flags":I
    .end local v29    # "shouldBeForceHidden":Z
    .end local v31    # "startingInUnForceHiding":Z
    .end local v32    # "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    .end local v34    # "wallpaper":Lcom/android/server/wm/WindowState;
    .end local v35    # "wallpaperInUnForceHiding":Z
    :cond_2df
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-eqz v2, :cond_2eb

    const-string v2, "WindowAnimator"

    const-string/jumbo v4, "updateWindowsLocked: StatusBar is no longer keyguard"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_2eb
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mKeyguardGoingAway:Z

    .line 494
    invoke-virtual/range {v38 .. v38}, Lcom/android/server/wm/WindowStateAnimator;->clearAnimation()V

    goto/16 :goto_91

    .line 511
    .restart local v22    # "flags":I
    .restart local v31    # "startingInUnForceHiding":Z
    .restart local v32    # "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    .restart local v34    # "wallpaper":Lcom/android/server/wm/WindowState;
    .restart local v35    # "wallpaperInUnForceHiding":Z
    :cond_2f5
    const/16 v16, 0x0

    goto/16 :goto_d6

    .line 522
    .restart local v16    # "canBeForceHidden":Z
    .restart local v28    # "nowAnimating":Z
    .restart local v29    # "shouldBeForceHidden":Z
    .restart local v36    # "wasAnimating":Z
    :cond_2f9
    const/4 v13, 0x0

    goto/16 :goto_111

    .line 524
    .restart local v13    # "appWindowAnimating":Z
    :cond_2fc
    const/16 v37, 0x0

    goto/16 :goto_121

    .line 526
    .restart local v37    # "wasAppWindowAnimating":Z
    :cond_300
    const/4 v10, 0x0

    goto/16 :goto_126

    .line 527
    .restart local v10    # "anyAnimating":Z
    :cond_303
    const/4 v11, 0x0

    goto/16 :goto_12b

    .line 531
    .restart local v11    # "anyWasAnimating":Z
    :cond_306
    :try_start_306
    move-object/from16 v0, v38

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    if-eqz v2, :cond_30f

    const/4 v2, 0x1

    goto/16 :goto_138

    :cond_30f
    const/4 v2, 0x0

    goto/16 :goto_138

    .line 534
    :cond_312
    if-nez v10, :cond_13b

    if-eqz v11, :cond_13b

    .line 535
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->onAnimationStopped()V
    :try_end_31b
    .catch Landroid/os/RemoteException; {:try_start_306 .. :try_end_31b} :catch_31d

    goto/16 :goto_13b

    .line 537
    :catch_31d
    move-exception v20

    .line 538
    .local v20, "e":Landroid/os/RemoteException;
    const-string v2, "WindowAnimator"

    const-string v4, "Failed to dispatch window animation state change."

    move-object/from16 v0, v20

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_13b

    .line 565
    .end local v20    # "e":Landroid/os/RemoteException;
    .restart local v17    # "changedByCover":Z
    :cond_329
    const/16 v30, 0x0

    goto/16 :goto_1e5

    .line 578
    .end local v17    # "changedByCover":Z
    :cond_32d
    move-object/from16 v0, p0

    iget-object v2, v0, mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy;->isNeedLayoutCoverApplication(Landroid/view/WindowManagerPolicy$WindowState;)Z

    move-result v2

    if-eqz v2, :cond_35d

    .line 579
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v17

    .line 580
    .restart local v17    # "changedByCover":Z
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v2, :cond_23d

    if-eqz v17, :cond_23d

    .line 581
    const-string v2, "WindowAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Now policy shown: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_23d

    .line 584
    .end local v17    # "changedByCover":Z
    :cond_35d
    const/16 v17, 0x0

    .restart local v17    # "changedByCover":Z
    goto/16 :goto_23d

    .line 610
    .end local v17    # "changedByCover":Z
    :cond_361
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v3, v1}, shouldForceHideByOthers(Lcom/android/server/wm/WindowState;I)Z

    move-result v2

    if-nez v2, :cond_280

    .line 615
    move-object/from16 v0, p0

    iget-object v2, v0, mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v4}, Landroid/view/WindowManagerPolicy;->isForceHiding(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_493

    .line 616
    if-nez v36, :cond_457

    if-eqz v28, :cond_457

    .line 617
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-nez v2, :cond_387

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-nez v2, :cond_387

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v2, :cond_39f

    .line 618
    :cond_387
    const-string v2, "WindowAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Animation started that could impact force hide: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    :cond_39f
    move-object/from16 v0, p0

    iget v2, v0, mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, mBulkUpdateParams:I

    .line 621
    const/4 v2, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, setPendingLayoutChanges(II)V

    .line 624
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v4, "updateWindowsAndWallpaperLocked 3"

    invoke-virtual/range {p0 .. p1}, getPendingLayoutChanges(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 627
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 634
    :cond_3c6
    :goto_3c6
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v2

    if-eqz v2, :cond_3d9

    .line 635
    if-eqz v28, :cond_478

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    if-eqz v2, :cond_478

    .line 636
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, mForceHiding:I

    .line 641
    :cond_3d9
    :goto_3d9
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-nez v2, :cond_3e1

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v2, :cond_280

    :cond_3e1
    const-string v2, "WindowAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Force hide "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, forceHidingToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hasSurface="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v3, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " policyVis="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v3, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " destroying="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v3, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " attHidden="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v3, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vis="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v3, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hidden="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowToken;->hidden:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " anim="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_280

    .line 628
    :cond_457
    move-object/from16 v0, p0

    iget-boolean v2, v0, mKeyguardGoingAway:Z

    if-eqz v2, :cond_3c6

    if-nez v28, :cond_3c6

    .line 630
    const-string v2, "WindowAnimator"

    const-string v4, "Timeout waiting for animation to startup"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    move-object/from16 v0, p0

    iget-object v2, v0, mPolicy:Landroid/view/WindowManagerPolicy;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-interface {v2, v4, v5, v6, v7}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    .line 632
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mKeyguardGoingAway:Z

    goto/16 :goto_3c6

    .line 638
    :cond_478
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v2

    if-nez v2, :cond_48a

    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_491

    :cond_48a
    const/4 v2, 0x1

    :goto_48b
    move-object/from16 v0, p0

    iput v2, v0, mForceHiding:I

    goto/16 :goto_3d9

    :cond_491
    const/4 v2, 0x0

    goto :goto_48b

    .line 650
    :cond_493
    if-eqz v16, :cond_280

    .line 651
    if-eqz v29, :cond_53b

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4e5

    .line 655
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x80000

    and-int/2addr v2, v4

    if-eqz v2, :cond_537

    const/16 v30, 0x1

    .line 656
    .restart local v30    # "showWhenLock":Z
    :goto_4ac
    if-eqz v30, :cond_4e5

    iget-boolean v2, v3, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-eqz v2, :cond_4e5

    .line 657
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v2, :cond_4ce

    const-string v2, "WindowAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cover : Show surface turning screen on: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_4ce
    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    .line 660
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/server/wm/WindowManagerService;->mTurnOnScreenPackage:Ljava/lang/String;

    .line 661
    move-object/from16 v0, p0

    iget v2, v0, mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x10

    move-object/from16 v0, p0

    iput v2, v0, mBulkUpdateParams:I

    .line 666
    .end local v30    # "showWhenLock":Z
    :cond_4e5
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v2

    if-eqz v2, :cond_2db

    .line 670
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-nez v2, :cond_4f5

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v2, :cond_50d

    :cond_4f5
    const-string v2, "WindowAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Now policy hidden: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_50d
    :goto_50d
    const/high16 v2, 0x100000

    and-int v2, v2, v22

    if-eqz v2, :cond_280

    .line 769
    move-object/from16 v0, p0

    iget v2, v0, mBulkUpdateParams:I

    or-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, mBulkUpdateParams:I

    .line 770
    const/4 v2, 0x0

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, setPendingLayoutChanges(II)V

    .line 773
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v4, "updateWindowsAndWallpaperLocked 4"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, getPendingLayoutChanges(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    goto/16 :goto_280

    .line 655
    :cond_537
    const/16 v30, 0x0

    goto/16 :goto_4ac

    .line 673
    :cond_53b
    move-object/from16 v0, p0

    iget-object v2, v0, mPolicy:Landroid/view/WindowManagerPolicy;

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_5b6

    iget-object v7, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    :goto_54f
    iget-object v8, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_5b8

    iget-object v8, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getMultiWindowStyleLw()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v8

    :goto_559
    invoke-interface/range {v2 .. v8}, Landroid/view/WindowManagerPolicy;->needForceHide(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/samsung/android/multiwindow/MultiWindowStyle;Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/samsung/android/multiwindow/MultiWindowStyle;)Z

    move-result v2

    if-eqz v2, :cond_5ba

    .line 678
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v2

    if-eqz v2, :cond_2db

    .line 683
    const-string v2, "WindowAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Now policy needForceHide hidden: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->isForceHideCascade()Z

    move-result v2

    if-eqz v2, :cond_5aa

    .line 686
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_5aa

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v2

    if-eqz v2, :cond_5aa

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/AppWindowToken;->mHiddenByPolicyVisiblity:Z

    if-nez v2, :cond_5aa

    .line 689
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/AppWindowToken;->mHiddenByPolicyVisiblity:Z

    .line 690
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->notifyMultiWindowStateChanged(Lcom/android/server/wm/WindowState;I)V

    .line 694
    :cond_5aa
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    goto/16 :goto_50d

    .line 673
    :cond_5b6
    const/4 v7, 0x0

    goto :goto_54f

    :cond_5b8
    const/4 v8, 0x0

    goto :goto_559

    .line 697
    :cond_5ba
    move-object/from16 v0, p0

    iget-object v2, v0, mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_628

    move-object/from16 v0, p0

    iget-object v2, v0, mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_628

    move-object/from16 v0, v38

    iget-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    if-nez v2, :cond_628

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v2

    if-eqz v2, :cond_628

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_628

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x8b2

    if-eq v2, v4, :cond_628

    const/4 v14, 0x1

    .line 706
    .local v14, "applyExistingExitAnimation":Z
    :goto_5e3
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/am/VirtualScreenManagerService;->isVirtualScreen(I)Z

    move-result v2

    if-eqz v2, :cond_62a

    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/am/VirtualScreenManagerService;->isVisibleVirtualScreen(I)Z

    move-result v2

    if-nez v2, :cond_62a

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/wm/WindowStateAnimator;->isAnimating()Z

    move-result v2

    if-nez v2, :cond_62a

    .line 709
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    .line 710
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v2, :cond_2db

    const-string v2, "WindowAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Hide VirtualScreen is not visible "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2db

    .line 697
    .end local v14    # "applyExistingExitAnimation":Z
    :cond_628
    const/4 v14, 0x0

    goto :goto_5e3

    .line 719
    .restart local v14    # "applyExistingExitAnimation":Z
    :cond_62a
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v2

    if-nez v2, :cond_63e

    if-nez v14, :cond_63e

    .line 721
    const/high16 v2, 0x100000

    and-int v2, v2, v22

    if-eqz v2, :cond_2db

    .line 722
    const/16 v35, 0x1

    goto/16 :goto_2db

    .line 727
    :cond_63e
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v33

    .line 728
    .local v33, "visibleNow":Z
    if-nez v33, :cond_64b

    .line 730
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    goto/16 :goto_2db

    .line 733
    :cond_64b
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-nez v2, :cond_653

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v2, :cond_66b

    :cond_653
    const-string v2, "WindowAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Now policy shown: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_66b
    move-object/from16 v0, p0

    iget v2, v0, mBulkUpdateParams:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_6bd

    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_6bd

    .line 737
    if-nez v32, :cond_67e

    .line 738
    new-instance v32, Ljava/util/ArrayList;

    .end local v32    # "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 740
    .restart local v32    # "unForceHiding":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    :cond_67e
    move-object/from16 v0, v32

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    const/high16 v2, 0x100000

    and-int v2, v2, v22

    if-eqz v2, :cond_68d

    .line 742
    const/16 v35, 0x1

    .line 744
    :cond_68d
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_696

    .line 745
    const/16 v31, 0x1

    .line 758
    :cond_696
    :goto_696
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v18, v0

    .line 759
    .restart local v18    # "currentFocus":Lcom/android/server/wm/WindowState;
    if-eqz v18, :cond_6a8

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v4, v3, Lcom/android/server/wm/WindowState;->mLayer:I

    if-ge v2, v4, :cond_50d

    .line 763
    :cond_6a8
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v2, :cond_6b4

    const-string v2, "WindowAnimator"

    const-string/jumbo v4, "updateWindowsLocked: setting mFocusMayChange true"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_6b4
    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    goto/16 :goto_50d

    .line 747
    .end local v18    # "currentFocus":Lcom/android/server/wm/WindowState;
    :cond_6bd
    if-eqz v14, :cond_696

    .line 750
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-eqz v2, :cond_6db

    const-string v2, "WindowAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Applying existing Keyguard exit animation to new window: win="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_6db
    move-object/from16 v0, p0

    iget-object v2, v0, mPolicy:Landroid/view/WindowManagerPolicy;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-boolean v5, v0, mKeyguardGoingAwayToNotificationShade:Z

    invoke-interface {v2, v4, v5}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;

    move-result-object v9

    .line 755
    .local v9, "a":Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v2, v0, mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v4

    move-object/from16 v0, v38

    invoke-virtual {v0, v9, v4, v5}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;J)V

    .line 756
    const/4 v2, 0x1

    move-object/from16 v0, v38

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    goto :goto_696

    .line 785
    .end local v9    # "a":Landroid/view/animation/Animation;
    .end local v10    # "anyAnimating":Z
    .end local v11    # "anyWasAnimating":Z
    .end local v13    # "appWindowAnimating":Z
    .end local v14    # "applyExistingExitAnimation":Z
    .end local v28    # "nowAnimating":Z
    .end local v33    # "visibleNow":Z
    .end local v36    # "wasAnimating":Z
    .end local v37    # "wasAppWindowAnimating":Z
    :cond_6fb
    if-eqz v16, :cond_280

    .line 786
    if-eqz v29, :cond_706

    .line 787
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    goto/16 :goto_280

    .line 789
    :cond_706
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    goto/16 :goto_280

    .line 820
    .restart local v12    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .restart local v15    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_70d
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d0

    if-ne v2, v4, :cond_732

    .line 821
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_72f

    const/16 v25, 0x1

    .line 822
    :goto_71f
    if-nez p1, :cond_2db

    move-object/from16 v0, p0

    iget-object v2, v0, mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy;->isForceHideByNightClock()Z

    move-result v2

    if-eqz v2, :cond_2db

    .line 823
    const/16 v25, 0x0

    goto/16 :goto_2db

    .line 821
    :cond_72f
    const/16 v25, 0x0

    goto :goto_71f

    .line 825
    :cond_732
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x832

    if-ne v2, v4, :cond_2db

    iget-boolean v2, v3, Lcom/android/server/wm/WindowState;->mHideBySViewCover:Z

    if-nez v2, :cond_2db

    .line 826
    if-eqz v25, :cond_75d

    .line 827
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowState;->showLw(Z)Z

    .line 828
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "i$":Ljava/util/Iterator;
    :goto_74a
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2db

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/WindowState;

    .line 829
    .local v19, "cw":Lcom/android/server/wm/WindowState;
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowState;->showLw(Z)Z

    goto :goto_74a

    .line 832
    .end local v19    # "cw":Lcom/android/server/wm/WindowState;
    .end local v24    # "i$":Ljava/util/Iterator;
    :cond_75d
    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    .line 833
    iget-object v2, v3, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .restart local v24    # "i$":Ljava/util/Iterator;
    :goto_767
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2db

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/wm/WindowState;

    .line 834
    .restart local v19    # "cw":Lcom/android/server/wm/WindowState;
    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    goto :goto_767

    .line 844
    .end local v3    # "win":Lcom/android/server/wm/WindowState;
    .end local v12    # "appAnimator":Lcom/android/server/wm/AppWindowAnimator;
    .end local v15    # "atoken":Lcom/android/server/wm/AppWindowToken;
    .end local v16    # "canBeForceHidden":Z
    .end local v19    # "cw":Lcom/android/server/wm/WindowState;
    .end local v22    # "flags":I
    .end local v24    # "i$":Ljava/util/Iterator;
    .end local v29    # "shouldBeForceHidden":Z
    .end local v38    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_77a
    if-eqz v32, :cond_863

    .line 845
    move-object/from16 v0, p0

    iget-boolean v2, v0, mKeyguardGoingAwayDisableWindowAnimations:Z

    if-nez v2, :cond_818

    move-object/from16 v0, p0

    iget-object v2, v0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mKeyguardWaitingForActivityDrawn:Z

    if-nez v2, :cond_818

    .line 846
    const/16 v21, 0x1

    .line 847
    .local v21, "first":Z
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v23, v2, -0x1

    :goto_792
    if-ltz v23, :cond_830

    .line 848
    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/wm/WindowStateAnimator;

    .line 849
    .restart local v38    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    move-object/from16 v0, p0

    iget-object v4, v0, mPolicy:Landroid/view/WindowManagerPolicy;

    if-eqz v35, :cond_7fb

    if-nez v31, :cond_7fb

    const/4 v2, 0x1

    :goto_7a7
    move-object/from16 v0, p0

    iget-boolean v5, v0, mKeyguardGoingAwayToNotificationShade:Z

    invoke-interface {v4, v2, v5}, Landroid/view/WindowManagerPolicy;->createForceHideEnterAnimation(ZZ)Landroid/view/animation/Animation;

    move-result-object v9

    .line 852
    .restart local v9    # "a":Landroid/view/animation/Animation;
    if-eqz v9, :cond_7fd

    invoke-virtual {v9}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_7fd

    .line 853
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-eqz v2, :cond_7db

    const-string v2, "WindowAnimator"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Starting keyguard exit animation on window "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v38

    iget-object v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_7db
    move-object/from16 v0, v38

    invoke-virtual {v0, v9}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    .line 856
    const/4 v2, 0x1

    move-object/from16 v0, v38

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mKeyguardGoingAwayAnimation:Z

    .line 857
    if-eqz v21, :cond_7f8

    .line 858
    move-object/from16 v0, p0

    iput-object v9, v0, mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    .line 859
    move-object/from16 v0, p0

    iget-object v2, v0, mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    move-object/from16 v0, p0

    iget-wide v4, v0, mCurrentTime:J

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 860
    const/16 v21, 0x0

    .line 847
    :cond_7f8
    :goto_7f8
    add-int/lit8 v23, v23, -0x1

    goto :goto_792

    .line 849
    .end local v9    # "a":Landroid/view/animation/Animation;
    :cond_7fb
    const/4 v2, 0x0

    goto :goto_7a7

    .line 863
    .restart local v9    # "a":Landroid/view/animation/Animation;
    :cond_7fd
    if-eqz v21, :cond_7f8

    move-object/from16 v0, p0

    iget-boolean v2, v0, mKeyguardGoingAway:Z

    if-eqz v2, :cond_7f8

    .line 864
    move-object/from16 v0, p0

    iget-object v2, v0, mPolicy:Landroid/view/WindowManagerPolicy;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-interface {v2, v4, v5, v6, v7}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    .line 865
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mKeyguardGoingAway:Z

    .line 866
    const/16 v21, 0x0

    goto :goto_7f8

    .line 870
    .end local v9    # "a":Landroid/view/animation/Animation;
    .end local v21    # "first":Z
    .end local v38    # "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    :cond_818
    move-object/from16 v0, p0

    iget-boolean v2, v0, mKeyguardGoingAway:Z

    if-eqz v2, :cond_830

    .line 871
    move-object/from16 v0, p0

    iget-object v2, v0, mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget-wide v4, v0, mCurrentTime:J

    const-wide/16 v6, 0x0

    invoke-interface {v2, v4, v5, v6, v7}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    .line 872
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mKeyguardGoingAway:Z

    .line 877
    :cond_830
    if-nez v35, :cond_863

    if-eqz v34, :cond_863

    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceShown:Z

    if-eqz v2, :cond_863

    move-object/from16 v0, p0

    iget-boolean v2, v0, mKeyguardGoingAwayDisableWindowAnimations:Z

    if-nez v2, :cond_863

    .line 880
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-eqz v2, :cond_84e

    const-string v2, "WindowAnimator"

    const-string/jumbo v4, "updateWindowsLocked: wallpaper animating away"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_84e
    move-object/from16 v0, p0

    iget-object v2, v0, mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget-boolean v4, v0, mKeyguardGoingAwayToNotificationShade:Z

    invoke-interface {v2, v4}, Landroid/view/WindowManagerPolicy;->createForceHideWallpaperExitAnimation(Z)Landroid/view/animation/Animation;

    move-result-object v9

    .line 883
    .restart local v9    # "a":Landroid/view/animation/Animation;
    if-eqz v9, :cond_863

    .line 884
    move-object/from16 v0, v34

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2, v9}, Lcom/android/server/wm/WindowStateAnimator;->setAnimation(Landroid/view/animation/Animation;)V

    .line 889
    .end local v9    # "a":Landroid/view/animation/Animation;
    :cond_863
    move-object/from16 v0, p0

    iget-object v2, v0, mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_890

    .line 891
    move-object/from16 v0, p0

    iget-boolean v2, v0, mKeyguardGoingAway:Z

    if-eqz v2, :cond_891

    .line 892
    move-object/from16 v0, p0

    iget-object v2, v0, mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iget-wide v4, v0, mCurrentTime:J

    move-object/from16 v0, p0

    iget-object v6, v0, mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6}, Landroid/view/animation/Animation;->getStartOffset()J

    move-result-wide v6

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v6

    invoke-interface {v2, v4, v5, v6, v7}, Landroid/view/WindowManagerPolicy;->startKeyguardExitAnimation(JJ)V

    .line 895
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mKeyguardGoingAway:Z

    .line 908
    :cond_890
    :goto_890
    return-void

    .line 900
    :cond_891
    move-object/from16 v0, p0

    iget-object v2, v0, mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_8b4

    move-object/from16 v0, p0

    iget-wide v4, v0, mCurrentTime:J

    move-object/from16 v0, p0

    iget-object v2, v0, mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getStartTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v2, v0, mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-lez v2, :cond_890

    .line 904
    :cond_8b4
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_KEYGUARD:Z

    if-eqz v2, :cond_8bf

    const-string v2, "WindowAnimator"

    const-string v4, "Done with Keyguard exit animations."

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_8bf
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mPostKeyguardExitAnimation:Landroid/view/animation/Animation;

    goto :goto_890
.end method


# virtual methods
.method addDisplayLocked(I)V
    .registers 3
    .param p1, "displayId"    # I

    .prologue
    .line 190
    invoke-direct {p0, p1}, getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 191
    if-nez p1, :cond_8

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, mInitialized:Z

    .line 194
    :cond_8
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .prologue
    .line 1369
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1370
    .local v4, "subPrefix":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1372
    .local v5, "subSubPrefix":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_27
    iget-object v8, p0, mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v2, v8, :cond_a2

    .line 1373
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "DisplayContentsAnimator #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1374
    iget-object v8, p0, mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 1375
    const-string v8, ":"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1376
    iget-object v8, p0, mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 1377
    .local v1, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    iget-object v8, p0, mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, p0, mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->getWindowListLocked(I)Lcom/android/server/wm/WindowList;

    move-result-object v7

    .line 1379
    .local v7, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1380
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_5e
    if-ge v3, v0, :cond_7e

    .line 1381
    invoke-virtual {v7, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowState;

    iget-object v6, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1382
    .local v6, "wanim":Lcom/android/server/wm/WindowStateAnimator;
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "Window #"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1383
    const-string v8, ": "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1380
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    .line 1385
    .end local v6    # "wanim":Lcom/android/server/wm/WindowStateAnimator;
    :cond_7e
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v8, :cond_96

    .line 1386
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "mScreenRotationAnimation:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1387
    iget-object v8, v1, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v8, v5, p1}, Lcom/android/server/wm/ScreenRotationAnimation;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1391
    :cond_90
    :goto_90
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1372
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 1388
    :cond_96
    if-eqz p3, :cond_90

    .line 1389
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "no ScreenRotationAnimation "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_90

    .line 1394
    .end local v0    # "N":I
    .end local v1    # "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    .end local v3    # "j":I
    .end local v7    # "windows":Lcom/android/server/wm/WindowList;
    :cond_a2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1396
    if-eqz p3, :cond_d3

    .line 1397
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "mAnimTransactionSequence="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1398
    iget v8, p0, mAnimTransactionSequence:I

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 1399
    const-string v8, " mForceHiding="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, forceHidingToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1400
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "mCurrentTime="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1401
    iget-wide v8, p0, mCurrentTime:J

    invoke-static {v8, v9}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1403
    :cond_d3
    iget v8, p0, mBulkUpdateParams:I

    if-eqz v8, :cond_f2

    .line 1404
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "mBulkUpdateParams=0x"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1405
    iget v8, p0, mBulkUpdateParams:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1406
    iget v8, p0, mBulkUpdateParams:I

    invoke-static {v8}, bulkUpdateParamsToString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1408
    :cond_f2
    iget-object v8, p0, mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v8, :cond_104

    .line 1409
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v8, "mWindowDetachedWallpaper="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1410
    iget-object v8, p0, mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1420
    :cond_104
    return-void
.end method

.method getDualScreenTransitionLocked()Lcom/android/server/wm/DualScreenTransition;
    .registers 2

    .prologue
    .line 1507
    iget-object v0, p0, mDualScreenTransition:Lcom/android/server/wm/DualScreenTransition;

    return-object v0
.end method

.method getMultiWindowTransitionLocked(I)Lcom/android/server/wm/MultiWindowTransition;
    .registers 3
    .param p1, "displayId"    # I

    .prologue
    .line 1483
    invoke-direct {p0, p1}, getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mMultiWindowTransition:Lcom/android/server/wm/MultiWindowTransition;

    return-object v0
.end method

.method getPendingLayoutChanges(I)I
    .registers 5
    .param p1, "displayId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1423
    if-gez p1, :cond_4

    .line 1427
    :cond_3
    :goto_3
    return v1

    .line 1426
    :cond_4
    iget-object v2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1427
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_3

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    goto :goto_3
.end method

.method getPersonaManagerLocked()Lcom/android/server/pm/PersonaManagerService;
    .registers 3

    .prologue
    .line 285
    iget-object v1, p0, mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    if-nez v1, :cond_13

    .line 286
    const-string/jumbo v1, "persona"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 287
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IPersonaManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPersonaManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PersonaManagerService;

    iput-object v1, p0, mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    .line 289
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_13
    iget-object v1, p0, mPersonaManager:Lcom/android/server/pm/PersonaManagerService;

    return-object v1
.end method

.method getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;
    .registers 3
    .param p1, "displayId"    # I

    .prologue
    .line 1470
    if-gez p1, :cond_4

    .line 1471
    const/4 v0, 0x0

    .line 1473
    :goto_3
    return-object v0

    :cond_4
    invoke-direct {p0, p1}, getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    goto :goto_3
.end method

.method removeDisplayLocked(I)V
    .registers 4
    .param p1, "displayId"    # I

    .prologue
    .line 206
    iget-object v1, p0, mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    .line 207
    .local v0, "displayAnimator":Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;
    if-eqz v0, :cond_19

    .line 208
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    if-eqz v1, :cond_19

    .line 209
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenRotationAnimation;->kill()V

    .line 210
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 213
    invoke-virtual {p0, p1}, removeMultiWindowTransitionLocked(I)V

    .line 219
    :cond_19
    iget-object v1, p0, mDisplayContentsAnimators:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 223
    invoke-static {}, Lcom/android/server/am/VirtualScreenManagerService;->self()Lcom/android/server/am/VirtualScreenManagerService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/am/VirtualScreenManagerService;->cleanupVirtualScreen(I)V

    .line 226
    return-void
.end method

.method removeMultiWindowTransitionLocked(I)V
    .registers 4
    .param p1, "displayId"    # I

    .prologue
    .line 1487
    invoke-direct {p0, p1}, getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mMultiWindowTransition:Lcom/android/server/wm/MultiWindowTransition;

    if-eqz v0, :cond_18

    .line 1488
    invoke-direct {p0, p1}, getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mMultiWindowTransition:Lcom/android/server/wm/MultiWindowTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowTransition;->clearMultiWindowTransitionAnimation()V

    .line 1489
    invoke-direct {p0, p1}, getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mMultiWindowTransition:Lcom/android/server/wm/MultiWindowTransition;

    .line 1491
    :cond_18
    return-void
.end method

.method setAppLayoutChanges(Lcom/android/server/wm/AppWindowAnimator;ILjava/lang/String;I)V
    .registers 10
    .param p1, "appAnimator"    # Lcom/android/server/wm/AppWindowAnimator;
    .param p2, "changes"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "displayId"    # I

    .prologue
    .line 1442
    iget-object v2, p1, Lcom/android/server/wm/AppWindowAnimator;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v2, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    .line 1443
    .local v1, "windows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_42

    .line 1444
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    if-ne p4, v2, :cond_43

    .line 1445
    invoke-virtual {p0, p4, p2}, setPendingLayoutChanges(II)V

    .line 1447
    iget-object v2, p0, mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "d["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p4}, getPendingLayoutChanges(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 1452
    :cond_42
    return-void

    .line 1443
    :cond_43
    add-int/lit8 v0, v0, -0x1

    goto :goto_a
.end method

.method setDualScreenTransitionLocked(Lcom/android/server/wm/DualScreenTransition;)V
    .registers 2
    .param p1, "transit"    # Lcom/android/server/wm/DualScreenTransition;

    .prologue
    .line 1503
    iput-object p1, p0, mDualScreenTransition:Lcom/android/server/wm/DualScreenTransition;

    .line 1504
    return-void
.end method

.method setMultiWindowTransitionLocked(ILcom/android/server/wm/MultiWindowTransition;)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "animation"    # Lcom/android/server/wm/MultiWindowTransition;

    .prologue
    .line 1479
    invoke-direct {p0, p1}, getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iput-object p2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mMultiWindowTransition:Lcom/android/server/wm/MultiWindowTransition;

    .line 1480
    return-void
.end method

.method setPendingLayoutChanges(II)V
    .registers 5
    .param p1, "displayId"    # I
    .param p2, "changes"    # I

    .prologue
    .line 1431
    if-gez p1, :cond_3

    .line 1438
    :cond_2
    :goto_2
    return-void

    .line 1434
    :cond_3
    iget-object v1, p0, mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->getDisplayContentLocked(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1435
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_2

    .line 1436
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, p2

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    goto :goto_2
.end method

.method setScreenRotationAnimationLocked(ILcom/android/server/wm/ScreenRotationAnimation;)V
    .registers 4
    .param p1, "displayId"    # I
    .param p2, "animation"    # Lcom/android/server/wm/ScreenRotationAnimation;

    .prologue
    .line 1464
    if-ltz p1, :cond_8

    .line 1465
    invoke-direct {p0, p1}, getDisplayContentsAnimatorLocked(I)Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;

    move-result-object v0

    iput-object p2, v0, Lcom/android/server/wm/WindowAnimator$DisplayContentsAnimator;->mScreenRotationAnimation:Lcom/android/server/wm/ScreenRotationAnimation;

    .line 1467
    :cond_8
    return-void
.end method
