.class public Lcom/android/server/smartclip/SmartClipView;
.super Landroid/widget/FrameLayout;
.source "SmartClipView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;,
        Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;,
        Lcom/android/server/smartclip/SmartClipView$PointerState;
    }
.end annotation


# static fields
.field private static final CONTROL_SPEN_GESTURE_VIEW:Ljava/lang/String; = "android.intent.action.CONTROL_SPEN_GESTURE_VIEW"

.field public static final CROPPING_MODE_EXCLUSIVE:I = 0x1

.field public static final CROPPING_MODE_NORMAL:I = 0x0

.field private static final ESTIMATE_INVALID_VALUE:I = -0x1

.field private static final EXTRA_ENABLE_SPEN_GESTURE_VIEW:Ljava/lang/String; = "android.intent.extra.enable_spengestureview"

.field private static final KEY_IS_LOCKSCREEN_SHOWING:Ljava/lang/String; = "is_lockscreen_showing"

.field private static final KEY_IS_SECURE_ENABLED:Ljava/lang/String; = "is_secure_enabled"

.field private static final MAX_DATA_EXTRACTION_DELAY:I = 0x7d0

.field private static final MAX_EXTRACTION_REQUEST_ID:I = 0x186a0

.field private static final MEDIA_SCANNER_FINISHED_ACTION:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_FINISHED"

.field private static final MIN_DATA_EXTRACTION_DELAY:I = 0x64

.field private static final MIN_EXTRACTION_REQUEST_ID:I = 0x0

.field private static final MSG_BOOT_COMPLETED:I = 0x12d

.field private static final PEN_GESTURE_LINE_LIMIT:I = 0x96

.field private static final PEN_GESTURE_SPLIT_SCREEN_RATIO:I = 0x5

.field public static final SINGLE_SCREEN_CAPTURE_OFF:Ljava/lang/String; = "android.intent.action.SINGLE_SCREEN_CAPTURE_OFF"

.field public static final SINGLE_SCREEN_CAPTURE_ON:Ljava/lang/String; = "android.intent.action.SINGLE_SCREEN_CAPTURE_ON"


# instance fields
.field private final BROADCAST_NONE:I

.field private final BROADCAST_VIDEOPLAYER_PAUSE:I

.field private final BROADCAST_VIDEOPLAYER_PLAY:I

.field private final DEBUG:Z

.field private final ESTIMATE_CROPIMAGE_MARGIN:I

.field private final ESTIMATE_END_CIRCLE_RADIUS:I

.field private final ESTIMATE_MARGIN_CLOSED_CURVE:I

.field private final ESTIMATE_START_CIRCLE_RADIUS:I

.field private final ESTIMATE_STROKE_WIDTH:I

.field private final MSG_CROPPING_IMG_SAVE:S

.field private final MSG_FINISH_LOADING_ANIMATION:S

.field private final MSG_START_LOADING_ANIMATION:S

.field private final MSG_SUGGESTION_SERVICE_START:S

.field private final SMART_CLIP_NON_CLOSED_CURVE_AREA:I

.field private final SMART_CLIP_POINT_DISTANCE_MIN:I

.field private final TAG:Ljava/lang/String;

.field private mActivePointerId:I

.field private mBootCompleted:Z

.field private mBrType:I

.field private mCameraSound:Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

.field mCaptureReceiver:Landroid/content/BroadcastReceiver;

.field private mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

.field private mCirclePaintWhite:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mCropBitmap:Landroid/graphics/Bitmap;

.field private mCropBitmapForAnimation:Landroid/graphics/Bitmap;

.field private mCropHandler:Landroid/os/Handler;

.field private mCropImageHeight:I

.field private mCropImageWidth:I

.field private mCropPointList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mCropStartingTime:J

.field private mCropTempBitmap:Landroid/graphics/Bitmap;

.field private mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

.field private mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

.field private mCroppingMode:I

.field private mCurDown:Z

.field private mCurNumPointers:I

.field private mCurrentDisplayHeight:I

.field private mCurrentDisplayWidth:I

.field private mDataExtractionRequestId:I

.field private mDirectionHandler:Landroid/os/Handler;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayHeightForMatrix:I

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDisplayRoateChanged:Z

.field private mDisplayRoateDegress:I

.field private mDisplayWidthForMatrix:I

.field private mDoubleTapIntentDiotek:Landroid/content/Intent;

.field private mDoubleTapIntentSnote:Landroid/content/Intent;

.field private mEnableCheckClosedCurve:Z

.field private mEndPointX:F

.field private mEndPointY:F

.field private mExistOldCoords:Z

.field private mFinishSaveImg:Z

.field private mFirstIntersectionPointLast:I

.field private mFirstIntersectionPointPrev:I

.field private mFirstIntersectionPointX:I

.field private mFirstIntersectionPointY:I

.field private mFirstStartPointX:I

.field private mFirstStartPointY:I

.field mFocusedWindow:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

.field mGesturePad:Ljava/lang/Runnable;

.field private mGesturePadBlockTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGesturePadIntent:Landroid/content/Intent;

.field mHandler:Landroid/os/Handler;

.field private mHeaderBottom:I

.field private mImageFilePath:Ljava/lang/String;

.field private mImageUri:Landroid/net/Uri;

.field private mImageUriForAnimation:Landroid/net/Uri;

.field private mIsClosedCurve:Z

.field private mIsDisplayMetaArea:Z

.field private mIsEnableDoubleTapOnLockscreen:Z

.field mIsEnableGestureEffect:Z

.field private mIsEnabledHapticFeedback:Z

.field private mIsExtractingDataFromView:Z

.field private mIsFirstMediaScan:Z

.field private mIsFirstPointer:Z

.field private mIsKeyguardOn:Z

.field private mIsLastPointer:Z

.field private mIsLiveCropThread:Z

.field private mIsLiveGlanceView:Z

.field private mIsLiveScreencapture:Z

.field private mIsPhone:Z

.field private mIsSendingBootMsg:Z

.field private mIsStartingSuggestionService:Z

.field private mIsUsablePath:Z

.field private mIsUsableSecondPath:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastDataExtractionRequestTime:J

.field private mLoadingAniImgView:Landroid/widget/ImageView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLongPressIntent:Landroid/content/Intent;

.field private mMaxCoordX:I

.field private mMaxCoordXForIntent:I

.field private mMaxCoordY:I

.field private mMaxCoordYForIntent:I

.field private mMaxNumPointers:I

.field mMediaScanningReceiver:Landroid/content/BroadcastReceiver;

.field private mMedianValueForGesturePosX:I

.field private mMedianValueForGesturePosY:I

.field private mMinCoordX:I

.field private mMinCoordXForIntent:I

.field private mMinCoordY:I

.field private mMinCoordYForIntent:I

.field private final mMinCroppingTime:J

.field private mNewCoordsX:F

.field private mNewCoordsY:F

.field private mNumColsedCurves:I

.field private mNumberOfAddTrace:I

.field private mOldCoordsX:F

.field private mOldCoordsY:F

.field private mOutofVerticalThresholdToUp:Z

.field private mPathOfCurve:Landroid/graphics/Path;

.field private mPathOfCurveForDrawing:Landroid/graphics/Path;

.field private mPathPaintBlack:Landroid/graphics/Paint;

.field private mPathPaintOrange:Landroid/graphics/Paint;

.field private mPathPaintWhite:Landroid/graphics/Paint;

.field mPenDoubleTap:Ljava/lang/Runnable;

.field mPenLongPress:Ljava/lang/Runnable;

.field private mPenMemoActionIntent:Landroid/content/Intent;

.field private mPointers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/smartclip/SmartClipView$PointerState;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevCoordY:I

.field private mSPenGestureCropDispatchThread:Ljava/lang/Thread;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field mScreenCaptureOn:Z

.field private mSecondIntersectionPointLast:I

.field private mSecondIntersectionPointPrev:I

.field private mSecondIntersectionPointX:I

.field private mSecondIntersectionPointY:I

.field private mSecondPathOfCurve:Landroid/graphics/Path;

.field public mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

.field private mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

.field private mSpenUspLevel:I

.field private mStartPointX:F

.field private mStartPointXForCircle:F

.field private mStartPointY:F

.field private mStartPointYForCircle:F

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManager2:Landroid/telephony/TelephonyManager;

.field private mTempCoords:Landroid/view/MotionEvent$PointerCoords;

.field private mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private mVC:Landroid/view/ViewConfiguration;

.field private mVerticalMovingSlop:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 633
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 132
    const-string v0, "SmartClipView"

    iput-object v0, p0, TAG:Ljava/lang/String;

    .line 133
    iput-boolean v5, p0, DEBUG:Z

    .line 134
    iput-object v4, p0, mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    .line 143
    iput-boolean v5, p0, mOutofVerticalThresholdToUp:Z

    .line 144
    iput-boolean v3, p0, mBootCompleted:Z

    .line 157
    iput-boolean v5, p0, mIsPhone:Z

    .line 159
    iput-boolean v3, p0, mIsDisplayMetaArea:Z

    .line 162
    iput-object v4, p0, mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

    .line 163
    iput-boolean v3, p0, mIsEnableGestureEffect:Z

    .line 166
    iput-boolean v3, p0, mIsLiveCropThread:Z

    .line 167
    iput-object v4, p0, mLoadingAniImgView:Landroid/widget/ImageView;

    .line 170
    iput-boolean v5, p0, mScreenCaptureOn:Z

    .line 173
    iput v3, p0, mFocusedWindow:I

    .line 181
    iput-boolean v5, p0, mIsFirstMediaScan:Z

    .line 182
    iput-boolean v3, p0, mIsSendingBootMsg:Z

    .line 185
    iput-boolean v3, p0, mIsKeyguardOn:Z

    .line 187
    iput-boolean v5, p0, mIsEnableDoubleTapOnLockscreen:Z

    .line 188
    iput-boolean v3, p0, mIsLiveGlanceView:Z

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "com.sec.android.gesturepad"

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, mGesturePadBlockTaskList:Ljava/util/ArrayList;

    .line 195
    iput v6, p0, ESTIMATE_STROKE_WIDTH:I

    .line 196
    const/16 v0, 0x8

    iput v0, p0, ESTIMATE_START_CIRCLE_RADIUS:I

    .line 197
    const/4 v0, 0x4

    iput v0, p0, ESTIMATE_END_CIRCLE_RADIUS:I

    .line 198
    const/16 v0, 0x14

    iput v0, p0, ESTIMATE_MARGIN_CLOSED_CURVE:I

    .line 200
    iput v7, p0, ESTIMATE_CROPIMAGE_MARGIN:I

    .line 201
    iput-short v5, p0, MSG_START_LOADING_ANIMATION:S

    .line 202
    iput-short v6, p0, MSG_FINISH_LOADING_ANIMATION:S

    .line 205
    iput v3, p0, BROADCAST_NONE:I

    .line 206
    iput v5, p0, BROADCAST_VIDEOPLAYER_PAUSE:I

    .line 207
    iput v6, p0, BROADCAST_VIDEOPLAYER_PLAY:I

    .line 209
    iput v7, p0, SMART_CLIP_POINT_DISTANCE_MIN:I

    .line 210
    const/16 v0, 0x14

    iput v0, p0, SMART_CLIP_NON_CLOSED_CURVE_AREA:I

    .line 269
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mPointers:Ljava/util/ArrayList;

    .line 271
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 307
    iput-object v4, p0, mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    .line 309
    iput v3, p0, mMedianValueForGesturePosX:I

    .line 310
    iput v3, p0, mMedianValueForGesturePosY:I

    .line 336
    iput-object v4, p0, mPathOfCurve:Landroid/graphics/Path;

    .line 337
    iput-object v4, p0, mSecondPathOfCurve:Landroid/graphics/Path;

    .line 338
    iput-object v4, p0, mPathOfCurveForDrawing:Landroid/graphics/Path;

    .line 339
    iput-object v4, p0, mScreenBitmap:Landroid/graphics/Bitmap;

    .line 340
    iput-object v4, p0, mCropTempBitmap:Landroid/graphics/Bitmap;

    .line 341
    iput-object v4, p0, mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

    .line 342
    iput-object v4, p0, mCropBitmap:Landroid/graphics/Bitmap;

    .line 343
    iput-object v4, p0, mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    .line 348
    iput-object v4, p0, mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    .line 349
    iput-object v4, p0, mImageUri:Landroid/net/Uri;

    .line 350
    iput-object v4, p0, mImageUriForAnimation:Landroid/net/Uri;

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mCropPointList:Ljava/util/ArrayList;

    .line 354
    iput-boolean v3, p0, mFinishSaveImg:Z

    .line 355
    iput-short v3, p0, MSG_SUGGESTION_SERVICE_START:S

    .line 356
    iput-short v5, p0, MSG_CROPPING_IMG_SAVE:S

    .line 358
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mCropStartingTime:J

    .line 359
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, mMinCroppingTime:J

    .line 364
    iput-object v4, p0, mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 368
    iput v3, p0, mCroppingMode:I

    .line 371
    iput v3, p0, mBrType:I

    .line 378
    iput-boolean v3, p0, mIsExtractingDataFromView:Z

    .line 379
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mLastDataExtractionRequestTime:J

    .line 380
    iput v3, p0, mDataExtractionRequestId:I

    .line 382
    const/4 v0, -0x1

    iput v0, p0, mSpenUspLevel:I

    .line 497
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$1;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$1;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, mCaptureReceiver:Landroid/content/BroadcastReceiver;

    .line 525
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$2;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$2;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, mMediaScanningReceiver:Landroid/content/BroadcastReceiver;

    .line 542
    iput-boolean v5, p0, mIsEnabledHapticFeedback:Z

    .line 551
    iput-object v4, p0, mCameraSound:Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

    .line 935
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$5;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$5;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, mPenLongPress:Ljava/lang/Runnable;

    .line 1023
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$6;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$6;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, mPenDoubleTap:Ljava/lang/Runnable;

    .line 1062
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$7;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$7;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, mGesturePad:Ljava/lang/Runnable;

    .line 634
    invoke-virtual {p0, v3}, setWillNotDraw(Z)V

    .line 635
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 637
    invoke-direct {p0}, init()V

    .line 639
    iget-object v0, p0, mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    if-nez v0, :cond_f6

    .line 640
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "spengestureservice"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartclip/SpenGestureManager;

    iput-object v0, p0, mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    .line 642
    :cond_f6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/smartclip/SpenGestureManager;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mgr"    # Lcom/samsung/android/smartclip/SpenGestureManager;

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 645
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 132
    const-string v0, "SmartClipView"

    iput-object v0, p0, TAG:Ljava/lang/String;

    .line 133
    iput-boolean v5, p0, DEBUG:Z

    .line 134
    iput-object v4, p0, mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    .line 143
    iput-boolean v5, p0, mOutofVerticalThresholdToUp:Z

    .line 144
    iput-boolean v3, p0, mBootCompleted:Z

    .line 157
    iput-boolean v5, p0, mIsPhone:Z

    .line 159
    iput-boolean v3, p0, mIsDisplayMetaArea:Z

    .line 162
    iput-object v4, p0, mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

    .line 163
    iput-boolean v3, p0, mIsEnableGestureEffect:Z

    .line 166
    iput-boolean v3, p0, mIsLiveCropThread:Z

    .line 167
    iput-object v4, p0, mLoadingAniImgView:Landroid/widget/ImageView;

    .line 170
    iput-boolean v5, p0, mScreenCaptureOn:Z

    .line 173
    iput v3, p0, mFocusedWindow:I

    .line 181
    iput-boolean v5, p0, mIsFirstMediaScan:Z

    .line 182
    iput-boolean v3, p0, mIsSendingBootMsg:Z

    .line 185
    iput-boolean v3, p0, mIsKeyguardOn:Z

    .line 187
    iput-boolean v5, p0, mIsEnableDoubleTapOnLockscreen:Z

    .line 188
    iput-boolean v3, p0, mIsLiveGlanceView:Z

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "com.sec.android.gesturepad"

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, mGesturePadBlockTaskList:Ljava/util/ArrayList;

    .line 195
    iput v6, p0, ESTIMATE_STROKE_WIDTH:I

    .line 196
    const/16 v0, 0x8

    iput v0, p0, ESTIMATE_START_CIRCLE_RADIUS:I

    .line 197
    const/4 v0, 0x4

    iput v0, p0, ESTIMATE_END_CIRCLE_RADIUS:I

    .line 198
    const/16 v0, 0x14

    iput v0, p0, ESTIMATE_MARGIN_CLOSED_CURVE:I

    .line 200
    iput v7, p0, ESTIMATE_CROPIMAGE_MARGIN:I

    .line 201
    iput-short v5, p0, MSG_START_LOADING_ANIMATION:S

    .line 202
    iput-short v6, p0, MSG_FINISH_LOADING_ANIMATION:S

    .line 205
    iput v3, p0, BROADCAST_NONE:I

    .line 206
    iput v5, p0, BROADCAST_VIDEOPLAYER_PAUSE:I

    .line 207
    iput v6, p0, BROADCAST_VIDEOPLAYER_PLAY:I

    .line 209
    iput v7, p0, SMART_CLIP_POINT_DISTANCE_MIN:I

    .line 210
    const/16 v0, 0x14

    iput v0, p0, SMART_CLIP_NON_CLOSED_CURVE_AREA:I

    .line 269
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mPointers:Ljava/util/ArrayList;

    .line 271
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 307
    iput-object v4, p0, mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    .line 309
    iput v3, p0, mMedianValueForGesturePosX:I

    .line 310
    iput v3, p0, mMedianValueForGesturePosY:I

    .line 336
    iput-object v4, p0, mPathOfCurve:Landroid/graphics/Path;

    .line 337
    iput-object v4, p0, mSecondPathOfCurve:Landroid/graphics/Path;

    .line 338
    iput-object v4, p0, mPathOfCurveForDrawing:Landroid/graphics/Path;

    .line 339
    iput-object v4, p0, mScreenBitmap:Landroid/graphics/Bitmap;

    .line 340
    iput-object v4, p0, mCropTempBitmap:Landroid/graphics/Bitmap;

    .line 341
    iput-object v4, p0, mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

    .line 342
    iput-object v4, p0, mCropBitmap:Landroid/graphics/Bitmap;

    .line 343
    iput-object v4, p0, mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    .line 348
    iput-object v4, p0, mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    .line 349
    iput-object v4, p0, mImageUri:Landroid/net/Uri;

    .line 350
    iput-object v4, p0, mImageUriForAnimation:Landroid/net/Uri;

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mCropPointList:Ljava/util/ArrayList;

    .line 354
    iput-boolean v3, p0, mFinishSaveImg:Z

    .line 355
    iput-short v3, p0, MSG_SUGGESTION_SERVICE_START:S

    .line 356
    iput-short v5, p0, MSG_CROPPING_IMG_SAVE:S

    .line 358
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mCropStartingTime:J

    .line 359
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, mMinCroppingTime:J

    .line 364
    iput-object v4, p0, mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 368
    iput v3, p0, mCroppingMode:I

    .line 371
    iput v3, p0, mBrType:I

    .line 378
    iput-boolean v3, p0, mIsExtractingDataFromView:Z

    .line 379
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mLastDataExtractionRequestTime:J

    .line 380
    iput v3, p0, mDataExtractionRequestId:I

    .line 382
    const/4 v0, -0x1

    iput v0, p0, mSpenUspLevel:I

    .line 497
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$1;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$1;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, mCaptureReceiver:Landroid/content/BroadcastReceiver;

    .line 525
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$2;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$2;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, mMediaScanningReceiver:Landroid/content/BroadcastReceiver;

    .line 542
    iput-boolean v5, p0, mIsEnabledHapticFeedback:Z

    .line 551
    iput-object v4, p0, mCameraSound:Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

    .line 935
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$5;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$5;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, mPenLongPress:Ljava/lang/Runnable;

    .line 1023
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$6;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$6;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, mPenDoubleTap:Ljava/lang/Runnable;

    .line 1062
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$7;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$7;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, mGesturePad:Ljava/lang/Runnable;

    .line 646
    invoke-virtual {p0, v3}, setWillNotDraw(Z)V

    .line 647
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 648
    iput-object p2, p0, mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    .line 650
    invoke-direct {p0}, init()V

    .line 652
    iget-object v0, p0, mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    if-nez v0, :cond_f8

    .line 653
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "spengestureservice"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/smartclip/SpenGestureManager;

    iput-object v0, p0, mSpenGestureManager:Lcom/samsung/android/smartclip/SpenGestureManager;

    .line 655
    :cond_f8
    return-void
.end method

.method private GetDefaultDisplayBimap()Landroid/graphics/Bitmap;
    .registers 13

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2257
    const-string v7, "SmartClipView"

    const-string v8, "GetDefaultDisplayBimap"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v7, p0, mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 2260
    iget-object v7, p0, mDisplay:Landroid/view/Display;

    iget-object v8, p0, mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v7, v8}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 2262
    const/4 v7, 0x2

    new-array v2, v7, [F

    iget-object v7, p0, mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    aput v7, v2, v6

    iget-object v7, p0, mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    aput v7, v2, v5

    .line 2263
    .local v2, "dims":[F
    iget-object v7, p0, mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v7

    invoke-direct {p0, v7}, getDegreesForRotation(I)F

    move-result v1

    .line 2264
    .local v1, "degrees":F
    cmpl-float v7, v1, v11

    if-lez v7, :cond_be

    move v3, v5

    .line 2266
    .local v3, "requiresRotation":Z
    :goto_3a
    if-eqz v3, :cond_5c

    .line 2267
    iget-object v7, p0, mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 2268
    iget-object v7, p0, mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v8, v1

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 2269
    iget-object v7, p0, mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2270
    aget v7, v2, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    aput v7, v2, v6

    .line 2271
    aget v7, v2, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    aput v7, v2, v5

    .line 2274
    :cond_5c
    aget v7, v2, v6

    float-to-int v7, v7

    aget v8, v2, v5

    float-to-int v8, v8

    invoke-static {v7, v8}, Landroid/view/SurfaceControl;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, mScreenBitmap:Landroid/graphics/Bitmap;

    .line 2277
    iget-object v7, p0, mCameraSound:Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

    if-eqz v7, :cond_6f

    .line 2278
    invoke-direct {p0}, playCaptureSound()V

    .line 2283
    :cond_6f
    iget-object v7, p0, mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_81

    .line 2284
    aget v7, v2, v6

    float-to-int v7, v7

    aget v8, v2, v5

    float-to-int v8, v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, mScreenBitmap:Landroid/graphics/Bitmap;

    .line 2288
    :cond_81
    if-eqz v3, :cond_bb

    .line 2289
    iget-object v7, p0, mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2291
    .local v4, "ss":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2292
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v10

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v10

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2293
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2294
    aget v6, v2, v6

    neg-float v6, v6

    div-float/2addr v6, v10

    aget v5, v2, v5

    neg-float v5, v5

    div-float/2addr v5, v10

    invoke-virtual {v0, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2295
    iget-object v5, p0, mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v11, v11, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2297
    iput-object v4, p0, mScreenBitmap:Landroid/graphics/Bitmap;

    .line 2299
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v4    # "ss":Landroid/graphics/Bitmap;
    :cond_bb
    iget-object v5, p0, mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v5

    .end local v3    # "requiresRotation":Z
    :cond_be
    move v3, v6

    .line 2264
    goto/16 :goto_3a
.end method

.method static synthetic access$000(Lcom/android/server/smartclip/SmartClipView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget-boolean v0, p0, mIsFirstMediaScan:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, mIsFirstMediaScan:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/smartclip/SmartClipView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget-boolean v0, p0, mIsSendingBootMsg:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/smartclip/SmartClipView;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-direct {p0, p1}, isTopActivity(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, mIsSendingBootMsg:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, mDisplayRoateChanged:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, mIsLiveScreencapture:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget-object v0, p0, mLongPressIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/smartclip/SmartClipView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget-boolean v0, p0, mIsEnableDoubleTapOnLockscreen:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, mIsEnableDoubleTapOnLockscreen:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/smartclip/SmartClipView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget-boolean v0, p0, mIsKeyguardOn:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/smartclip/SmartClipView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget-boolean v0, p0, mIsLiveGlanceView:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget-object v0, p0, mPenMemoActionIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/smartclip/SmartClipView;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 130
    iput-object p1, p0, mPenMemoActionIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/smartclip/SmartClipView;)Landroid/telephony/TelephonyManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget-object v0, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget-object v0, p0, mPointers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/smartclip/SmartClipView;)Landroid/telephony/TelephonyManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget-object v0, p0, mTelephonyManager2:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget-object v0, p0, mDoubleTapIntentSnote:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget-object v0, p0, mDoubleTapIntentDiotek:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget-object v0, p0, mGesturePadBlockTaskList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/smartclip/SmartClipView;Ljava/util/ArrayList;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 130
    invoke-direct {p0, p1}, isTopActivity(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/smartclip/SmartClipView;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget-object v0, p0, mGesturePadIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/smartclip/SmartClipView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget v0, p0, mMedianValueForGesturePosX:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/smartclip/SmartClipView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget v0, p0, mMedianValueForGesturePosY:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/smartclip/SmartClipView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget-boolean v0, p0, mOutofVerticalThresholdToUp:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, mOutofVerticalThresholdToUp:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/server/smartclip/SmartClipView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget-boolean v0, p0, mIsUsablePath:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, mIsUsablePath:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Path;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget-object v0, p0, mPathOfCurve:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/smartclip/SmartClipView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget v0, p0, mMaxCoordX:I

    return v0
.end method

.method static synthetic access$3602(Lcom/android/server/smartclip/SmartClipView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # I

    .prologue
    .line 130
    iput p1, p0, mMaxCoordX:I

    return p1
.end method

.method static synthetic access$3700(Lcom/android/server/smartclip/SmartClipView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget v0, p0, mMinCoordX:I

    return v0
.end method

.method static synthetic access$3702(Lcom/android/server/smartclip/SmartClipView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # I

    .prologue
    .line 130
    iput p1, p0, mMinCoordX:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/server/smartclip/SmartClipView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget v0, p0, mMaxCoordY:I

    return v0
.end method

.method static synthetic access$3802(Lcom/android/server/smartclip/SmartClipView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # I

    .prologue
    .line 130
    iput p1, p0, mMaxCoordY:I

    return p1
.end method

.method static synthetic access$3900(Lcom/android/server/smartclip/SmartClipView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget v0, p0, mMinCoordY:I

    return v0
.end method

.method static synthetic access$3902(Lcom/android/server/smartclip/SmartClipView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # I

    .prologue
    .line 130
    iput p1, p0, mMinCoordY:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/smartclip/SmartClipView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    invoke-direct {p0}, startAniForLoadingService()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/smartclip/SmartClipView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget-boolean v0, p0, mIsUsableSecondPath:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, mIsUsableSecondPath:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Path;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget-object v0, p0, mSecondPathOfCurve:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/smartclip/SmartClipView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget v0, p0, mCropImageWidth:I

    return v0
.end method

.method static synthetic access$4202(Lcom/android/server/smartclip/SmartClipView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # I

    .prologue
    .line 130
    iput p1, p0, mCropImageWidth:I

    return p1
.end method

.method static synthetic access$4300(Lcom/android/server/smartclip/SmartClipView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget v0, p0, mCropImageHeight:I

    return v0
.end method

.method static synthetic access$4302(Lcom/android/server/smartclip/SmartClipView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # I

    .prologue
    .line 130
    iput p1, p0, mCropImageHeight:I

    return p1
.end method

.method static synthetic access$4400(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    invoke-direct {p0}, GetDefaultDisplayBimap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget-object v0, p0, mCropTempBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/server/smartclip/SmartClipView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 130
    iput-object p1, p0, mCropTempBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/android/server/smartclip/SmartClipView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget v0, p0, mCurrentDisplayWidth:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/smartclip/SmartClipView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget v0, p0, mCurrentDisplayHeight:I

    return v0
.end method

.method static synthetic access$4802(Lcom/android/server/smartclip/SmartClipView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 130
    iput-object p1, p0, mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget-object v0, p0, mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/smartclip/SmartClipView;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget-object v0, p0, mLoadingAniImgView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget-object v0, p0, mCropBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/android/server/smartclip/SmartClipView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 130
    iput-object p1, p0, mCropBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$5100(Lcom/android/server/smartclip/SmartClipView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget v0, p0, mMaxCoordXForIntent:I

    return v0
.end method

.method static synthetic access$5102(Lcom/android/server/smartclip/SmartClipView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # I

    .prologue
    .line 130
    iput p1, p0, mMaxCoordXForIntent:I

    return p1
.end method

.method static synthetic access$5200(Lcom/android/server/smartclip/SmartClipView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget v0, p0, mMinCoordXForIntent:I

    return v0
.end method

.method static synthetic access$5202(Lcom/android/server/smartclip/SmartClipView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # I

    .prologue
    .line 130
    iput p1, p0, mMinCoordXForIntent:I

    return p1
.end method

.method static synthetic access$5300(Lcom/android/server/smartclip/SmartClipView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget v0, p0, mMaxCoordYForIntent:I

    return v0
.end method

.method static synthetic access$5302(Lcom/android/server/smartclip/SmartClipView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # I

    .prologue
    .line 130
    iput p1, p0, mMaxCoordYForIntent:I

    return p1
.end method

.method static synthetic access$5400(Lcom/android/server/smartclip/SmartClipView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget v0, p0, mMinCoordYForIntent:I

    return v0
.end method

.method static synthetic access$5402(Lcom/android/server/smartclip/SmartClipView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # I

    .prologue
    .line 130
    iput p1, p0, mMinCoordYForIntent:I

    return p1
.end method

.method static synthetic access$5500(Lcom/android/server/smartclip/SmartClipView;)Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget-object v0, p0, mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/smartclip/SmartClipView;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    invoke-direct {p0}, setPointGroupClear()V

    return-void
.end method

.method static synthetic access$5702(Lcom/android/server/smartclip/SmartClipView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # I

    .prologue
    .line 130
    iput p1, p0, mNumColsedCurves:I

    return p1
.end method

.method static synthetic access$5800(Lcom/android/server/smartclip/SmartClipView;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget-object v0, p0, mCropPointList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/server/smartclip/SmartClipView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget-boolean v0, p0, mIsStartingSuggestionService:Z

    return v0
.end method

.method static synthetic access$5902(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, mIsStartingSuggestionService:Z

    return p1
.end method

.method static synthetic access$6000(Lcom/android/server/smartclip/SmartClipView;)Landroid/graphics/Path;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget-object v0, p0, mPathOfCurveForDrawing:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, mIsLiveCropThread:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/android/server/smartclip/SmartClipView;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget-object v0, p0, mCropHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/android/server/smartclip/SmartClipView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    iget-boolean v0, p0, mFinishSaveImg:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/smartclip/SmartClipView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, mIsClosedCurve:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/smartclip/SmartClipView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    invoke-direct {p0}, isPossibleCapture()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/smartclip/SmartClipView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SmartClipView;

    .prologue
    .line 130
    invoke-direct {p0}, isVzwSetupRunning()Z

    move-result v0

    return v0
.end method

.method private checkClosedCurve(III)V
    .registers 11
    .param p1, "resultCoordsX"    # I
    .param p2, "resultCoordsY"    # I
    .param p3, "markNumber"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 1379
    const/4 v2, -0x1

    .line 1380
    .local v2, "markNumberFromMatrix":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_4
    const/4 v3, 0x6

    if-ge v1, v3, :cond_43

    .line 1381
    add-int v3, p2, v1

    if-ltz v3, :cond_1f

    if-ltz p1, :cond_1f

    add-int v3, p2, v1

    iget v4, p0, mCurrentDisplayHeight:I

    if-ge v3, v4, :cond_1f

    iget v3, p0, mCurrentDisplayWidth:I

    if-ge p1, v3, :cond_1f

    .line 1383
    iget-object v3, p0, mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    add-int v4, p2, v1

    invoke-virtual {v3, v4, p1}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->getMarked(II)I

    move-result v2

    .line 1386
    :cond_1f
    if-eq v2, v5, :cond_65

    add-int/lit8 v3, p3, -0x14

    if-ge v2, v3, :cond_65

    .line 1388
    iget v3, p0, mSecondIntersectionPointLast:I

    add-int/lit8 v3, v3, 0x14

    if-ge v3, p3, :cond_43

    .line 1389
    iput-boolean v6, p0, mIsClosedCurve:Z

    .line 1390
    iget v3, p0, mFirstIntersectionPointPrev:I

    if-eq v3, v5, :cond_35

    iget v3, p0, mFirstIntersectionPointLast:I

    if-ne v3, v5, :cond_60

    .line 1392
    :cond_35
    iput v2, p0, mFirstIntersectionPointPrev:I

    .line 1393
    iput p3, p0, mFirstIntersectionPointLast:I

    .line 1394
    iput v2, p0, mSecondIntersectionPointPrev:I

    .line 1395
    iput p3, p0, mSecondIntersectionPointLast:I

    .line 1400
    :goto_3d
    iget v3, p0, mNumColsedCurves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, mNumColsedCurves:I

    .line 1430
    :cond_43
    :goto_43
    const/16 v0, 0xc

    .line 1431
    .local v0, "circleRadius":I
    iget v3, p0, mFirstStartPointX:I

    add-int/lit8 v3, v3, -0x48

    if-gt v3, p1, :cond_5d

    iget v3, p0, mFirstStartPointX:I

    add-int/lit8 v3, v3, 0x48

    if-lt v3, p1, :cond_5d

    iget v3, p0, mFirstStartPointY:I

    add-int/lit8 v3, v3, -0x48

    if-gt v3, p2, :cond_5d

    iget v3, p0, mFirstStartPointY:I

    add-int/lit8 v3, v3, 0x48

    if-ge v3, p2, :cond_5f

    .line 1433
    :cond_5d
    iput-boolean v6, p0, mEnableCheckClosedCurve:Z

    .line 1435
    :cond_5f
    return-void

    .line 1397
    .end local v0    # "circleRadius":I
    :cond_60
    iput v2, p0, mSecondIntersectionPointPrev:I

    .line 1398
    iput p3, p0, mSecondIntersectionPointLast:I

    goto :goto_3d

    .line 1405
    :cond_65
    sub-int v3, p2, v1

    if-ltz v3, :cond_7d

    if-ltz p1, :cond_7d

    sub-int v3, p2, v1

    iget v4, p0, mCurrentDisplayHeight:I

    if-ge v3, v4, :cond_7d

    iget v3, p0, mCurrentDisplayWidth:I

    if-ge p1, v3, :cond_7d

    .line 1407
    iget-object v3, p0, mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    sub-int v4, p2, v1

    invoke-virtual {v3, v4, p1}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->getMarked(II)I

    move-result v2

    .line 1410
    :cond_7d
    if-eq v2, v5, :cond_a7

    add-int/lit8 v3, p3, -0x14

    if-ge v2, v3, :cond_a7

    .line 1412
    iget v3, p0, mSecondIntersectionPointLast:I

    add-int/lit8 v3, v3, 0x14

    if-ge v3, p3, :cond_43

    .line 1413
    iput-boolean v6, p0, mIsClosedCurve:Z

    .line 1414
    iget v3, p0, mFirstIntersectionPointPrev:I

    if-eq v3, v5, :cond_93

    iget v3, p0, mFirstIntersectionPointLast:I

    if-ne v3, v5, :cond_a2

    .line 1416
    :cond_93
    iput v2, p0, mFirstIntersectionPointPrev:I

    .line 1417
    iput p3, p0, mFirstIntersectionPointLast:I

    .line 1418
    iput v2, p0, mSecondIntersectionPointPrev:I

    .line 1419
    iput p3, p0, mSecondIntersectionPointLast:I

    .line 1424
    :goto_9b
    iget v3, p0, mNumColsedCurves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, mNumColsedCurves:I

    goto :goto_43

    .line 1421
    :cond_a2
    iput v2, p0, mSecondIntersectionPointPrev:I

    .line 1422
    iput p3, p0, mSecondIntersectionPointLast:I

    goto :goto_9b

    .line 1380
    :cond_a7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4
.end method

.method private checkClosedCurveForActionUp(III)V
    .registers 8
    .param p1, "resultCoordsX"    # I
    .param p2, "resultCoordsY"    # I
    .param p3, "markNumber"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 1438
    const/16 v0, 0xc

    .line 1440
    .local v0, "circleRadius":I
    iget-boolean v1, p0, mEnableCheckClosedCurve:Z

    if-ne v1, v3, :cond_32

    .line 1441
    iget v1, p0, mFirstStartPointX:I

    add-int/lit16 v1, v1, -0xf0

    if-gt v1, p1, :cond_32

    iget v1, p0, mFirstStartPointX:I

    add-int/lit16 v1, v1, 0xf0

    if-lt v1, p1, :cond_32

    iget v1, p0, mFirstStartPointY:I

    add-int/lit16 v1, v1, -0xf0

    if-gt v1, p2, :cond_32

    iget v1, p0, mFirstStartPointY:I

    add-int/lit16 v1, v1, 0xf0

    if-lt v1, p2, :cond_32

    .line 1445
    iput-boolean v3, p0, mIsClosedCurve:Z

    .line 1446
    iget v1, p0, mFirstIntersectionPointPrev:I

    if-eq v1, v2, :cond_2a

    iget v1, p0, mFirstIntersectionPointLast:I

    if-ne v1, v2, :cond_33

    .line 1448
    :cond_2a
    iput p3, p0, mFirstIntersectionPointLast:I

    .line 1452
    :goto_2c
    iget v1, p0, mNumColsedCurves:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mNumColsedCurves:I

    .line 1455
    :cond_32
    return-void

    .line 1450
    :cond_33
    iput p3, p0, mSecondIntersectionPointLast:I

    goto :goto_2c
.end method

.method private getDegreesForRotation(I)F
    .registers 3
    .param p1, "value"    # I

    .prologue
    .line 2303
    packed-switch p1, :pswitch_data_e

    .line 2311
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 2305
    :pswitch_5
    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_4

    .line 2307
    :pswitch_8
    const/high16 v0, 0x43340000    # 180.0f

    goto :goto_4

    .line 2309
    :pswitch_b
    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_4

    .line 2303
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_5
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method private getTopActivityComponentName()Landroid/content/ComponentName;
    .registers 6

    .prologue
    .line 1138
    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1139
    .local v1, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 1140
    .local v0, "Info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1142
    .local v2, "topActivity":Landroid/content/ComponentName;
    return-object v2
.end method

.method private init()V
    .registers 16

    .prologue
    .line 658
    iget-object v0, p0, mContext:Landroid/content/Context;

    if-nez v0, :cond_d

    .line 659
    const-string v0, "SmartClipView"

    const-string/jumbo v1, "init : mContext is null return."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_c
    :goto_c
    return-void

    .line 662
    :cond_d
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 663
    .local v11, "pm":Landroid/content/pm/PackageManager;
    if-eqz v11, :cond_1d

    .line 664
    const-string v0, "com.sec.feature.spen_usp"

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getSystemFeatureLevel(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mSpenUspLevel:I

    .line 667
    :cond_1d
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 668
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    .line 669
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 674
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 676
    new-instance v13, Landroid/graphics/Point;

    invoke-direct {v13}, Landroid/graphics/Point;-><init>()V

    .line 677
    .local v13, "size":Landroid/graphics/Point;
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, mDisplay:Landroid/view/Display;

    .line 678
    iget-object v0, p0, mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v13}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 680
    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v14

    .line 682
    .local v14, "wm":Landroid/view/IWindowManager;
    :try_start_6d
    invoke-interface {v14}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v0

    if-nez v0, :cond_33a

    const/4 v0, 0x1

    :goto_74
    iput-boolean v0, p0, mIsPhone:Z
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_76} :catch_33d

    .line 688
    :goto_76
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, mLongPressIntent:Landroid/content/Intent;

    .line 689
    iget-object v0, p0, mLongPressIntent:Landroid/content/Intent;

    const-string v1, "com.sec.spen.flashannotatesvc"

    const-string v2, "com.sec.spen.flashannotatesvc.flashannotateservice"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mDoubleTapIntentDiotek:Landroid/content/Intent;

    .line 693
    iget-object v0, p0, mDoubleTapIntentDiotek:Landroid/content/Intent;

    const-string v1, "com.diotek.mini_penmemo"

    const-string v2, "com.diotek.mini_penmemo.Mini_PenMemo_Service"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mDoubleTapIntentSnote:Landroid/content/Intent;

    .line 697
    iget-object v0, p0, mDoubleTapIntentSnote:Landroid/content/Intent;

    const-string v1, "com.samsung.android.snote"

    const-string v2, "com.samsung.android.snote.control.ui.quickmemo.service.QuickMemo_Service"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 700
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mGesturePadIntent:Landroid/content/Intent;

    .line 701
    iget-object v0, p0, mGesturePadIntent:Landroid/content/Intent;

    const-string v1, "com.sec.android.gesturepad"

    const-string v2, "com.sec.android.gesturepad.GesturePadActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 702
    iget-object v0, p0, mGesturePadIntent:Landroid/content/Intent;

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 705
    const-string v0, "SmartClipView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMedianValueForGesturePosX : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mMedianValueForGesturePosX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Y : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mMedianValueForGesturePosY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const/4 v0, 0x0

    iput v0, p0, mMedianValueForGesturePosX:I

    .line 708
    const/4 v0, 0x0

    iput v0, p0, mMedianValueForGesturePosY:I

    .line 710
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableMobileOfficeMdm"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_112

    .line 711
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 712
    .local v6, "captureFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.SINGLE_SCREEN_CAPTURE_ON"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 713
    const-string v0, "android.intent.action.SINGLE_SCREEN_CAPTURE_OFF"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 714
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mCaptureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 718
    .end local v6    # "captureFilter":Landroid/content/IntentFilter;
    :cond_112
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 719
    .local v10, "mediaFilter":Landroid/content/IntentFilter;
    if-eqz v10, :cond_12b

    .line 720
    const-string v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 721
    const-string/jumbo v0, "file"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mMediaScanningReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 726
    :cond_12b
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/smartclip/SmartClipView$3;

    invoke-direct {v2, p0}, Lcom/android/server/smartclip/SmartClipView$3;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, mGestureDetector:Landroid/view/GestureDetector;

    .line 782
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$4;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$4;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, mCropHandler:Landroid/os/Handler;

    .line 802
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, mDirectionHandler:Landroid/os/Handler;

    .line 803
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, setFocusableInTouchMode(Z)V

    .line 804
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, mVC:Landroid/view/ViewConfiguration;

    .line 806
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, mDisplayMatrix:Landroid/graphics/Matrix;

    .line 807
    invoke-direct {p0}, setDisplayDegrees()Z

    .line 809
    iget v0, p0, mDisplayRoateDegress:I

    if-nez v0, :cond_34a

    .line 810
    iget-object v0, p0, mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, mCurrentDisplayWidth:I

    .line 811
    iget-object v0, p0, mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, mCurrentDisplayHeight:I

    .line 817
    :goto_171
    iget v0, p0, mCurrentDisplayWidth:I

    iput v0, p0, mDisplayWidthForMatrix:I

    .line 818
    iget v0, p0, mCurrentDisplayHeight:I

    iput v0, p0, mDisplayHeightForMatrix:I

    .line 820
    new-instance v1, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    iget v2, p0, mDisplayHeightForMatrix:I

    iget v3, p0, mDisplayWidthForMatrix:I

    iget v0, p0, mDisplayRoateDegress:I

    if-nez v0, :cond_35c

    const/4 v0, 0x1

    :goto_184
    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;-><init>(IIZ)V

    iput-object v1, p0, mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    .line 822
    const/4 v0, 0x0

    iput v0, p0, mNumberOfAddTrace:I

    .line 823
    const/4 v0, 0x0

    iput-boolean v0, p0, mExistOldCoords:Z

    .line 824
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsLastPointer:Z

    .line 825
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsFirstPointer:Z

    .line 826
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsClosedCurve:Z

    .line 827
    const/4 v0, 0x0

    iput-boolean v0, p0, mEnableCheckClosedCurve:Z

    .line 828
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsStartingSuggestionService:Z

    .line 829
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsUsablePath:Z

    .line 830
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsUsableSecondPath:Z

    .line 831
    const/4 v0, 0x0

    iput v0, p0, mOldCoordsX:F

    .line 832
    const/4 v0, 0x0

    iput v0, p0, mOldCoordsY:F

    .line 833
    const/4 v0, 0x0

    iput v0, p0, mNewCoordsX:F

    .line 834
    const/4 v0, 0x0

    iput v0, p0, mNewCoordsY:F

    .line 835
    const/4 v0, -0x1

    iput v0, p0, mFirstStartPointX:I

    .line 836
    const/4 v0, -0x1

    iput v0, p0, mFirstStartPointY:I

    .line 837
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, mStartPointX:F

    .line 838
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, mStartPointY:F

    .line 839
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, mEndPointX:F

    .line 840
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, mEndPointY:F

    .line 841
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, mStartPointXForCircle:F

    .line 842
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, mStartPointYForCircle:F

    .line 843
    const/4 v0, 0x0

    iput v0, p0, mMaxCoordX:I

    .line 844
    const/4 v0, 0x0

    iput v0, p0, mMinCoordX:I

    .line 845
    const/4 v0, 0x0

    iput v0, p0, mMaxCoordY:I

    .line 846
    const/4 v0, 0x0

    iput v0, p0, mMinCoordY:I

    .line 847
    const/4 v0, 0x0

    iput v0, p0, mMaxCoordXForIntent:I

    .line 848
    const/4 v0, 0x0

    iput v0, p0, mMinCoordXForIntent:I

    .line 849
    const/4 v0, 0x0

    iput v0, p0, mMaxCoordYForIntent:I

    .line 850
    const/4 v0, 0x0

    iput v0, p0, mMinCoordYForIntent:I

    .line 851
    const/4 v0, -0x1

    iput v0, p0, mPrevCoordY:I

    .line 852
    const/4 v0, -0x1

    iput v0, p0, mFirstIntersectionPointPrev:I

    .line 853
    const/4 v0, -0x1

    iput v0, p0, mFirstIntersectionPointLast:I

    .line 854
    const/4 v0, -0x1

    iput v0, p0, mSecondIntersectionPointPrev:I

    .line 855
    const/4 v0, -0x1

    iput v0, p0, mSecondIntersectionPointLast:I

    .line 856
    const/4 v0, -0x1

    iput v0, p0, mFirstIntersectionPointX:I

    .line 857
    const/4 v0, -0x1

    iput v0, p0, mFirstIntersectionPointY:I

    .line 858
    const/4 v0, -0x1

    iput v0, p0, mSecondIntersectionPointX:I

    .line 859
    const/4 v0, -0x1

    iput v0, p0, mSecondIntersectionPointY:I

    .line 860
    const/4 v0, 0x0

    iput v0, p0, mNumColsedCurves:I

    .line 861
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, mPathOfCurve:Landroid/graphics/Path;

    .line 862
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, mSecondPathOfCurve:Landroid/graphics/Path;

    .line 863
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, mPathOfCurveForDrawing:Landroid/graphics/Path;

    .line 865
    new-instance v8, Landroid/graphics/DashPathEffect;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_360

    const/4 v1, 0x0

    invoke-direct {v8, v0, v1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 867
    .local v8, "dashPath":Landroid/graphics/DashPathEffect;
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, mPathPaintWhite:Landroid/graphics/Paint;

    .line 868
    iget-object v0, p0, mPathPaintWhite:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 869
    iget-object v0, p0, mPathPaintWhite:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 870
    iget-object v0, p0, mPathPaintWhite:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 871
    iget-object v0, p0, mPathPaintWhite:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 872
    iget-object v0, p0, mPathPaintWhite:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 874
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, mPathPaintOrange:Landroid/graphics/Paint;

    .line 875
    iget-object v0, p0, mPathPaintOrange:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 876
    iget-object v0, p0, mPathPaintOrange:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 877
    iget-object v0, p0, mPathPaintOrange:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 878
    iget-object v0, p0, mPathPaintOrange:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 879
    iget-object v0, p0, mPathPaintOrange:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 882
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, mPathPaintBlack:Landroid/graphics/Paint;

    .line 883
    iget-object v0, p0, mPathPaintBlack:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 884
    iget-object v0, p0, mPathPaintBlack:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 885
    iget-object v0, p0, mPathPaintBlack:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 886
    iget-object v0, p0, mPathPaintBlack:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 887
    iget-object v0, p0, mPathPaintBlack:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 889
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, mCirclePaintWhite:Landroid/graphics/Paint;

    .line 890
    iget-object v0, p0, mCirclePaintWhite:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 891
    iget-object v0, p0, mCirclePaintWhite:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    const/16 v4, 0xff

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 892
    iget-object v0, p0, mCirclePaintWhite:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 893
    iget-object v0, p0, mCirclePaintWhite:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 894
    iget-object v0, p0, mCirclePaintWhite:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 902
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    .line 903
    iget-object v0, p0, mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 904
    iget-object v0, p0, mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 906
    new-instance v12, Lcom/android/server/smartclip/SmartClipView$PointerState;

    invoke-direct {v12}, Lcom/android/server/smartclip/SmartClipView$PointerState;-><init>()V

    .line 907
    .local v12, "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    iget-object v0, p0, mPointers:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 908
    const/4 v0, 0x0

    iput v0, p0, mActivePointerId:I

    .line 911
    const/4 v0, 0x0

    iput-boolean v0, p0, mDisplayRoateChanged:Z

    .line 915
    new-instance v0, Lcom/android/server/smartclip/GestureEffectManager;

    invoke-direct {v0}, Lcom/android/server/smartclip/GestureEffectManager;-><init>()V

    iput-object v0, p0, mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

    .line 916
    iget-object v0, p0, mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

    iget-object v2, p0, mHandler:Landroid/os/Handler;

    iget-object v3, p0, mPenLongPress:Ljava/lang/Runnable;

    iget-object v4, p0, mPenDoubleTap:Ljava/lang/Runnable;

    iget-object v5, p0, mGesturePad:Ljava/lang/Runnable;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/smartclip/GestureEffectManager;->init(Lcom/android/server/smartclip/SmartClipView;Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 918
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_EnableScrCaptureSoundOnlyInCamera"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 919
    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 920
    .local v7, "country":Ljava/lang/String;
    const-string v0, "JP"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 922
    new-instance v0, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    iput-object v0, p0, mCameraSound:Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

    .line 923
    iget-object v0, p0, mCameraSound:Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->load(I)V

    goto/16 :goto_c

    .line 682
    .end local v7    # "country":Ljava/lang/String;
    .end local v8    # "dashPath":Landroid/graphics/DashPathEffect;
    .end local v10    # "mediaFilter":Landroid/content/IntentFilter;
    .end local v12    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :cond_33a
    const/4 v0, 0x0

    goto/16 :goto_74

    .line 683
    :catch_33d
    move-exception v9

    .line 684
    .local v9, "ex":Landroid/os/RemoteException;
    const-string v0, "SmartClipView"

    const-string v1, "RemoteException"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsPhone:Z

    goto/16 :goto_76

    .line 813
    .end local v9    # "ex":Landroid/os/RemoteException;
    .restart local v10    # "mediaFilter":Landroid/content/IntentFilter;
    :cond_34a
    iget-object v0, p0, mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, p0, mCurrentDisplayWidth:I

    .line 814
    iget-object v0, p0, mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, mCurrentDisplayHeight:I

    goto/16 :goto_171

    .line 820
    :cond_35c
    const/4 v0, 0x0

    goto/16 :goto_184

    .line 865
    nop

    :array_360
    .array-data 4
        0x40a00000    # 5.0f
        0x40000000    # 2.0f
    .end array-data
.end method

.method private isPossibleCapture()Z
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 1105
    const-string v0, "RestrictionPolicy3"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1106
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isScreenCaptureEnabled"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1107
    .local v6, "cr":Landroid/database/Cursor;
    if-eqz v6, :cond_43

    .line 1109
    :try_start_1a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1110
    const-string/jumbo v0, "isScreenCaptureEnabled"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1111
    const-string v0, "SmartClipView"

    const-string v2, "MDM: Screen Capture Disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3b
    .catchall {:try_start_1a .. :try_end_3b} :catchall_51

    .line 1116
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    .line 1134
    :goto_3f
    return v0

    .line 1116
    :cond_40
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1130
    :cond_43
    iget-boolean v0, p0, mScreenCaptureOn:Z

    if-eq v0, v8, :cond_56

    .line 1131
    const-string v0, "SmartClipView"

    const-string/jumbo v2, "flashannotate couldn\'t by MDM"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 1132
    goto :goto_3f

    .line 1116
    :catchall_51
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_56
    move v0, v8

    .line 1134
    goto :goto_3f
.end method

.method private isSecureUnlockEnabled()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2415
    iget-object v2, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v2, :cond_c

    .line 2417
    :try_start_5
    iget-object v2, p0, mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_d

    move-result v1

    .line 2422
    :cond_c
    :goto_c
    return v1

    .line 2418
    :catch_d
    move-exception v0

    .line 2419
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SmartClipView"

    const-string v3, "Failed check isSecureUnlockEnabled : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c
.end method

.method private isTopActivity(Ljava/lang/String;)Z
    .registers 4
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    .line 1146
    invoke-direct {p0}, getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 1147
    .local v0, "topComponentName":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isTopActivity(Ljava/util/ArrayList;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1151
    .local p1, "findList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 1153
    .local v1, "topComponentName":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1e

    .line 1154
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1155
    const/4 v2, 0x1

    .line 1157
    :goto_1a
    return v2

    .line 1153
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1157
    :cond_1e
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method private isVzwSetupRunning()Z
    .registers 2

    .prologue
    .line 1017
    const/4 v0, 0x0

    return v0
.end method

.method private markMatrixForCropping(FFFFI)V
    .registers 22
    .param p1, "oldCoordsX"    # F
    .param p2, "oldCoordsY"    # F
    .param p3, "newCoordsX"    # F
    .param p4, "newCoordsY"    # F
    .param p5, "markNumber"    # I

    .prologue
    .line 1240
    const/4 v10, 0x0

    .line 1241
    .local v10, "startCoordsX":F
    const/4 v11, 0x0

    .line 1242
    .local v11, "startCoordsY":F
    const/4 v2, 0x0

    .line 1243
    .local v2, "endCoordsX":F
    const/4 v3, 0x0

    .line 1244
    .local v3, "endCoordsY":F
    const/4 v7, 0x0

    .line 1245
    .local v7, "resultCoordsX":F
    const/4 v8, 0x0

    .line 1246
    .local v8, "resultCoordsY":F
    const/4 v9, 0x0

    .line 1247
    .local v9, "slope":F
    const/4 v5, 0x0

    .line 1249
    .local v5, "interceptY":F
    move-object/from16 v0, p0

    iget v12, v0, mFirstStartPointX:I

    const/4 v13, -0x1

    if-eq v12, v13, :cond_16

    move-object/from16 v0, p0

    iget v12, v0, mFirstStartPointY:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_36

    .line 1250
    :cond_16
    move/from16 v0, p1

    float-to-int v12, v0

    move-object/from16 v0, p0

    iput v12, v0, mFirstStartPointX:I

    .line 1251
    move/from16 v0, p2

    float-to-int v12, v0

    move-object/from16 v0, p0

    iput v12, v0, mFirstStartPointY:I

    .line 1257
    move-object/from16 v0, p0

    iget-object v12, v0, mPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v12}, Landroid/graphics/Path;->reset()V

    .line 1258
    move-object/from16 v0, p0

    iget-object v12, v0, mPathOfCurve:Landroid/graphics/Path;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1261
    :cond_36
    move-object/from16 v0, p0

    iget-object v12, v0, mPathOfCurve:Landroid/graphics/Path;

    add-float v13, p3, p1

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    add-float v14, p4, p2

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v12, v0, v1, v13, v14}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1264
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 1265
    .local v6, "point":Landroid/graphics/Point;
    add-float v12, p3, p1

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    float-to-int v12, v12

    add-float v13, p4, p2

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    float-to-int v13, v13

    invoke-virtual {v6, v12, v13}, Landroid/graphics/Point;->set(II)V

    .line 1266
    move-object/from16 v0, p0

    iget-object v12, v0, mCropPointList:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1268
    cmpl-float v12, p1, p3

    if-nez v12, :cond_6e

    cmpl-float v12, p2, p4

    if-eqz v12, :cond_255

    .line 1270
    :cond_6e
    move/from16 v10, p1

    .line 1271
    move/from16 v11, p2

    .line 1272
    move/from16 v2, p3

    .line 1273
    move/from16 v3, p4

    .line 1275
    sub-float v12, v10, v2

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_f7

    .line 1276
    sub-float v12, v3, v11

    sub-float v13, v2, v10

    div-float v9, v12, v13

    .line 1280
    :goto_83
    mul-float v12, v10, v9

    sub-float v5, v11, v12

    .line 1282
    cmpg-float v12, p1, p3

    if-gtz v12, :cond_19c

    .line 1283
    :goto_8b
    cmpg-float v12, v10, v2

    if-gtz v12, :cond_255

    .line 1284
    move v7, v10

    .line 1285
    mul-float v12, v10, v9

    add-float v8, v12, v5

    .line 1287
    float-to-int v12, v7

    float-to-int v13, v8

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v12, v13, v1}, checkClosedCurve(III)V

    .line 1298
    move-object/from16 v0, p0

    iget v12, v0, mPrevCoordY:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_a9

    .line 1299
    float-to-int v12, v8

    move-object/from16 v0, p0

    iput v12, v0, mPrevCoordY:I

    .line 1302
    :cond_a9
    move-object/from16 v0, p0

    iget v12, v0, mPrevCoordY:I

    int-to-float v12, v12

    sub-float v12, v8, v12

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_f9

    .line 1303
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_b7
    int-to-float v12, v4

    move-object/from16 v0, p0

    iget v13, v0, mPrevCoordY:I

    int-to-float v13, v13

    sub-float v13, v8, v13

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_f9

    .line 1304
    move-object/from16 v0, p0

    iget v12, v0, mPrevCoordY:I

    add-int/2addr v12, v4

    if-ltz v12, :cond_f4

    float-to-int v12, v7

    add-int/lit8 v12, v12, -0x1

    if-ltz v12, :cond_f4

    move-object/from16 v0, p0

    iget v12, v0, mPrevCoordY:I

    add-int/2addr v12, v4

    move-object/from16 v0, p0

    iget v13, v0, mCurrentDisplayHeight:I

    if-ge v12, v13, :cond_f4

    float-to-int v12, v7

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iget v13, v0, mCurrentDisplayWidth:I

    if-ge v12, v13, :cond_f4

    .line 1307
    move-object/from16 v0, p0

    iget-object v12, v0, mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    move-object/from16 v0, p0

    iget v13, v0, mPrevCoordY:I

    add-int/2addr v13, v4

    float-to-int v14, v7

    add-int/lit8 v14, v14, -0x1

    move/from16 v0, p5

    invoke-virtual {v12, v13, v14, v0}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mark(III)V

    .line 1303
    :cond_f4
    add-int/lit8 v4, v4, 0x1

    goto :goto_b7

    .line 1278
    .end local v4    # "i":I
    :cond_f7
    const/4 v9, 0x0

    goto :goto_83

    .line 1311
    :cond_f9
    move-object/from16 v0, p0

    iget v12, v0, mPrevCoordY:I

    int-to-float v12, v12

    sub-float v12, v8, v12

    const/high16 v13, -0x40800000    # -1.0f

    cmpg-float v12, v12, v13

    if-gez v12, :cond_146

    .line 1312
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_107
    int-to-float v12, v4

    move-object/from16 v0, p0

    iget v13, v0, mPrevCoordY:I

    int-to-float v13, v13

    sub-float/2addr v13, v8

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_146

    .line 1313
    move-object/from16 v0, p0

    iget v12, v0, mPrevCoordY:I

    sub-int/2addr v12, v4

    if-ltz v12, :cond_143

    float-to-int v12, v7

    add-int/lit8 v12, v12, -0x1

    if-ltz v12, :cond_143

    move-object/from16 v0, p0

    iget v12, v0, mPrevCoordY:I

    sub-int/2addr v12, v4

    move-object/from16 v0, p0

    iget v13, v0, mCurrentDisplayHeight:I

    if-ge v12, v13, :cond_143

    float-to-int v12, v7

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p0

    iget v13, v0, mCurrentDisplayWidth:I

    if-ge v12, v13, :cond_143

    .line 1316
    move-object/from16 v0, p0

    iget-object v12, v0, mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    move-object/from16 v0, p0

    iget v13, v0, mPrevCoordY:I

    sub-int/2addr v13, v4

    float-to-int v14, v7

    add-int/lit8 v14, v14, -0x1

    move/from16 v0, p5

    invoke-virtual {v12, v13, v14, v0}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mark(III)V

    .line 1312
    :cond_143
    add-int/lit8 v4, v4, 0x1

    goto :goto_107

    .line 1321
    .end local v4    # "i":I
    :cond_146
    float-to-int v12, v8

    move-object/from16 v0, p0

    iput v12, v0, mPrevCoordY:I

    .line 1322
    float-to-int v12, v8

    if-ltz v12, :cond_16d

    float-to-int v12, v7

    if-ltz v12, :cond_16d

    float-to-int v12, v8

    move-object/from16 v0, p0

    iget v13, v0, mCurrentDisplayHeight:I

    if-ge v12, v13, :cond_16d

    float-to-int v12, v7

    move-object/from16 v0, p0

    iget v13, v0, mCurrentDisplayWidth:I

    if-ge v12, v13, :cond_16d

    .line 1325
    move-object/from16 v0, p0

    iget-object v12, v0, mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    move-object/from16 v0, p0

    iget v13, v0, mPrevCoordY:I

    float-to-int v14, v7

    move/from16 v0, p5

    invoke-virtual {v12, v13, v14, v0}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mark(III)V

    .line 1283
    :cond_16d
    const/high16 v12, 0x3f800000    # 1.0f

    add-float/2addr v10, v12

    goto/16 :goto_8b

    .line 1367
    :cond_172
    float-to-int v12, v8

    move-object/from16 v0, p0

    iput v12, v0, mPrevCoordY:I

    .line 1368
    float-to-int v12, v8

    if-ltz v12, :cond_199

    float-to-int v12, v7

    if-ltz v12, :cond_199

    float-to-int v12, v8

    move-object/from16 v0, p0

    iget v13, v0, mCurrentDisplayHeight:I

    if-ge v12, v13, :cond_199

    float-to-int v12, v7

    move-object/from16 v0, p0

    iget v13, v0, mCurrentDisplayWidth:I

    if-ge v12, v13, :cond_199

    .line 1371
    move-object/from16 v0, p0

    iget-object v12, v0, mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    move-object/from16 v0, p0

    iget v13, v0, mPrevCoordY:I

    float-to-int v14, v7

    move/from16 v0, p5

    invoke-virtual {v12, v13, v14, v0}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mark(III)V

    .line 1329
    :cond_199
    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v10, v12

    :cond_19c
    cmpl-float v12, v10, v2

    if-ltz v12, :cond_255

    .line 1330
    move v7, v10

    .line 1331
    mul-float v12, v10, v9

    add-float v8, v12, v5

    .line 1333
    float-to-int v12, v7

    float-to-int v13, v8

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v12, v13, v1}, checkClosedCurve(III)V

    .line 1344
    move-object/from16 v0, p0

    iget v12, v0, mPrevCoordY:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_1ba

    .line 1345
    float-to-int v12, v8

    move-object/from16 v0, p0

    iput v12, v0, mPrevCoordY:I

    .line 1348
    :cond_1ba
    move-object/from16 v0, p0

    iget v12, v0, mPrevCoordY:I

    int-to-float v12, v12

    sub-float v12, v8, v12

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v13

    if-lez v12, :cond_208

    .line 1349
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_1c8
    int-to-float v12, v4

    move-object/from16 v0, p0

    iget v13, v0, mPrevCoordY:I

    int-to-float v13, v13

    sub-float v13, v8, v13

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_208

    .line 1350
    move-object/from16 v0, p0

    iget v12, v0, mPrevCoordY:I

    add-int/2addr v12, v4

    if-ltz v12, :cond_205

    float-to-int v12, v7

    add-int/lit8 v12, v12, 0x1

    if-ltz v12, :cond_205

    move-object/from16 v0, p0

    iget v12, v0, mPrevCoordY:I

    add-int/2addr v12, v4

    move-object/from16 v0, p0

    iget v13, v0, mCurrentDisplayHeight:I

    if-ge v12, v13, :cond_205

    float-to-int v12, v7

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, mCurrentDisplayWidth:I

    if-ge v12, v13, :cond_205

    .line 1353
    move-object/from16 v0, p0

    iget-object v12, v0, mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    move-object/from16 v0, p0

    iget v13, v0, mPrevCoordY:I

    add-int/2addr v13, v4

    float-to-int v14, v7

    add-int/lit8 v14, v14, 0x1

    move/from16 v0, p5

    invoke-virtual {v12, v13, v14, v0}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mark(III)V

    .line 1349
    :cond_205
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c8

    .line 1357
    .end local v4    # "i":I
    :cond_208
    move-object/from16 v0, p0

    iget v12, v0, mPrevCoordY:I

    int-to-float v12, v12

    sub-float v12, v8, v12

    const/high16 v13, -0x40800000    # -1.0f

    cmpg-float v12, v12, v13

    if-gez v12, :cond_172

    .line 1358
    const/4 v4, 0x1

    .restart local v4    # "i":I
    :goto_216
    int-to-float v12, v4

    move-object/from16 v0, p0

    iget v13, v0, mPrevCoordY:I

    int-to-float v13, v13

    sub-float/2addr v13, v8

    cmpg-float v12, v12, v13

    if-gtz v12, :cond_172

    .line 1359
    move-object/from16 v0, p0

    iget v12, v0, mPrevCoordY:I

    sub-int/2addr v12, v4

    if-ltz v12, :cond_252

    float-to-int v12, v7

    add-int/lit8 v12, v12, 0x1

    if-ltz v12, :cond_252

    move-object/from16 v0, p0

    iget v12, v0, mPrevCoordY:I

    sub-int/2addr v12, v4

    move-object/from16 v0, p0

    iget v13, v0, mCurrentDisplayHeight:I

    if-ge v12, v13, :cond_252

    float-to-int v12, v7

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iget v13, v0, mCurrentDisplayWidth:I

    if-ge v12, v13, :cond_252

    .line 1362
    move-object/from16 v0, p0

    iget-object v12, v0, mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    move-object/from16 v0, p0

    iget v13, v0, mPrevCoordY:I

    sub-int/2addr v13, v4

    float-to-int v14, v7

    add-int/lit8 v14, v14, 0x1

    move/from16 v0, p5

    invoke-virtual {v12, v13, v14, v0}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->mark(III)V

    .line 1358
    :cond_252
    add-int/lit8 v4, v4, 0x1

    goto :goto_216

    .line 1376
    .end local v4    # "i":I
    :cond_255
    return-void
.end method

.method private playCaptureSound()V
    .registers 3

    .prologue
    .line 2246
    const-string/jumbo v0, "service.camera.running"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2247
    const-string v0, "SmartClipView"

    const-string v1, "Camera is running!!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    iget-object v0, p0, mCameraSound:Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

    if-eqz v0, :cond_22

    .line 2250
    iget-object v0, p0, mCameraSound:Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SmartClipView$ScreenshotCaptureSound;->play(I)V

    .line 2252
    :cond_22
    return-void
.end method

.method private setAboutStartingSuggestionService()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 2388
    iget-boolean v4, p0, mIsStartingSuggestionService:Z

    if-ne v4, v6, :cond_3f

    .line 2389
    iget-object v4, p0, mContext:Landroid/content/Context;

    iget-object v5, p0, mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2392
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const v4, 0x7fffffff

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    .line 2394
    .local v1, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iterator":Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 2395
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 2397
    .local v3, "runningServiceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.app.SmartClipService.SmartClipAppService"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 2400
    const-string v4, "SmartClipView"

    const-string v5, "addSPenEvent : SuggestionService is running!."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    iput-boolean v6, p0, mIsStartingSuggestionService:Z

    .line 2410
    .end local v0    # "activityManager":Landroid/app/ActivityManager;
    .end local v1    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v2    # "iterator":Ljava/util/Iterator;
    .end local v3    # "runningServiceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_3f
    return-void

    .line 2405
    .restart local v0    # "activityManager":Landroid/app/ActivityManager;
    .restart local v1    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .restart local v2    # "iterator":Ljava/util/Iterator;
    .restart local v3    # "runningServiceInfo":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_40
    const-string v4, "SmartClipView"

    const-string v5, "addSPenEvent : SuggestionService is not running!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2406
    const/4 v4, 0x0

    iput-boolean v4, p0, mIsStartingSuggestionService:Z

    goto :goto_1c
.end method

.method private setDisplayDegrees()Z
    .registers 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 2342
    iget-object v2, p0, mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    iput v2, p0, mCurrentDisplayWidth:I

    .line 2343
    iget-object v2, p0, mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v2

    iput v2, p0, mCurrentDisplayHeight:I

    .line 2345
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 2346
    iget v2, p0, mCurrentDisplayWidth:I

    iget v5, p0, mCurrentDisplayHeight:I

    if-le v2, v5, :cond_97

    iget v2, p0, mCurrentDisplayHeight:I

    :goto_20
    div-int/lit8 v2, v2, 0x5

    iput v2, p0, mVerticalMovingSlop:I

    .line 2352
    :goto_24
    iget-object v2, p0, mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    invoke-direct {p0, v2}, getDegreesForRotation(I)F

    move-result v1

    .line 2354
    .local v1, "degress":F
    const-string v2, "SmartClipView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mCurrentDisplayWidth: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, mCurrentDisplayWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mCurrentDisplayHeight: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, mCurrentDisplayHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Rot: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, mDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", deg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    const/4 v0, 0x0

    .line 2359
    .local v0, "changed":Z
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_7b

    const/high16 v2, 0x43340000    # 180.0f

    cmpl-float v2, v1, v2

    if-nez v2, :cond_a4

    .line 2361
    :cond_7b
    const-string v2, "SmartClipView"

    const-string/jumbo v5, "setDisplayDegrees : mDisplayRoateDegress is 0"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    iget v2, p0, mDisplayRoateDegress:I

    if-ne v2, v3, :cond_a1

    .line 2363
    iput v4, p0, mDisplayRoateDegress:I

    .line 2364
    const/4 v0, 0x1

    .line 2380
    :goto_8a
    if-eqz v0, :cond_96

    .line 2381
    iget-object v5, p0, mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    iget v2, p0, mDisplayRoateDegress:I

    if-nez v2, :cond_b7

    move v2, v3

    :goto_93
    invoke-virtual {v5, v2}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->setPortrait(Z)V

    .line 2384
    :cond_96
    return v0

    .line 2346
    .end local v0    # "changed":Z
    .end local v1    # "degress":F
    :cond_97
    iget v2, p0, mCurrentDisplayWidth:I

    goto :goto_20

    .line 2349
    :cond_9a
    iget v2, p0, mCurrentDisplayHeight:I

    div-int/lit8 v2, v2, 0x5

    iput v2, p0, mVerticalMovingSlop:I

    goto :goto_24

    .line 2366
    .restart local v0    # "changed":Z
    .restart local v1    # "degress":F
    :cond_a1
    iput v4, p0, mDisplayRoateDegress:I

    goto :goto_8a

    .line 2370
    :cond_a4
    const-string v2, "SmartClipView"

    const-string/jumbo v5, "setDisplayDegrees : mDisplayRoateDegress is 1"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    iget v2, p0, mDisplayRoateDegress:I

    if-nez v2, :cond_b4

    .line 2373
    iput v3, p0, mDisplayRoateDegress:I

    .line 2374
    const/4 v0, 0x1

    goto :goto_8a

    .line 2376
    :cond_b4
    iput v3, p0, mDisplayRoateDegress:I

    goto :goto_8a

    :cond_b7
    move v2, v4

    .line 2381
    goto :goto_93
.end method

.method private setPointGroupClear()V
    .registers 5

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    const/4 v2, -0x1

    .line 2055
    const-string v0, "SmartClipView"

    const-string/jumbo v1, "setPointGroupClear"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    iput v2, p0, mFirstIntersectionPointPrev:I

    .line 2057
    iput v2, p0, mFirstIntersectionPointLast:I

    .line 2058
    iput v2, p0, mSecondIntersectionPointPrev:I

    .line 2059
    iput v2, p0, mSecondIntersectionPointLast:I

    .line 2060
    iput v2, p0, mFirstIntersectionPointX:I

    .line 2061
    iput v2, p0, mFirstIntersectionPointY:I

    .line 2062
    iput v2, p0, mSecondIntersectionPointX:I

    .line 2063
    iput v2, p0, mSecondIntersectionPointY:I

    .line 2064
    iput v3, p0, mStartPointXForCircle:F

    .line 2065
    iput v3, p0, mStartPointYForCircle:F

    .line 2066
    return-void
.end method

.method private showToast(I)V
    .registers 4
    .param p1, "id"    # I

    .prologue
    .line 2241
    iget-object v0, p0, mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2242
    return-void
.end method

.method private startAniForLoadingService()V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    .line 2070
    invoke-virtual {p0, v2}, setVisibility(I)V

    .line 2071
    iget-object v1, p0, mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2086
    iput-boolean v2, p0, mFinishSaveImg:Z

    .line 2088
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 2090
    .local v0, "ani":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2091
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2092
    new-instance v1, Lcom/android/server/smartclip/SmartClipView$9;

    invoke-direct {v1, p0}, Lcom/android/server/smartclip/SmartClipView$9;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2111
    iget-object v1, p0, mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2113
    return-void
.end method


# virtual methods
.method public addSPenEvent(Landroid/view/MotionEvent;ZZ)V
    .registers 33
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "isKeyguardOn"    # Z
    .param p3, "isLiveGlanceView"    # Z

    .prologue
    .line 1461
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsKeyguardOn:Z

    .line 1463
    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsKeyguardOn:Z

    if-nez v2, :cond_6b9

    invoke-direct/range {p0 .. p0}, isVzwSetupRunning()Z

    move-result v2

    if-nez v2, :cond_6b9

    .line 1464
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mBrType:I

    .line 1465
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mIsLiveGlanceView:Z

    .line 1468
    move-object/from16 v0, p0

    iget-object v0, v0, mPointers:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 1469
    :try_start_23
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 1470
    .local v8, "action":I
    move-object/from16 v0, p0

    iget-object v2, v0, mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 1472
    .local v24, "totalPointerSize":I
    move-object/from16 v0, p0

    iget v2, v0, mCroppingMode:I

    if-nez v2, :cond_3f

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_46

    :cond_3f
    move-object/from16 v0, p0

    iget v2, v0, mCroppingMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_358

    :cond_46
    const/16 v2, 0x9

    if-eq v8, v2, :cond_358

    const/4 v2, 0x7

    if-eq v8, v2, :cond_358

    const/16 v2, 0xa

    if-eq v8, v2, :cond_358

    .line 1476
    move-object/from16 v0, p0

    iget v2, v0, mCroppingMode:I

    if-nez v2, :cond_75

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_75

    .line 1477
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mIsClosedCurve:Z

    .line 1478
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mDisplayRoateChanged:Z

    .line 1479
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, resetVariable(I)V

    .line 1480
    invoke-virtual/range {p0 .. p0}, postInvalidate()V

    .line 1481
    monitor-exit v28

    .line 2051
    .end local v8    # "action":I
    .end local v24    # "totalPointerSize":I
    :cond_74
    :goto_74
    return-void

    .line 1484
    .restart local v8    # "action":I
    .restart local v24    # "totalPointerSize":I
    :cond_75
    if-eqz v8, :cond_7c

    and-int/lit16 v2, v8, 0xff

    const/4 v3, 0x5

    if-ne v2, v3, :cond_178

    .line 1488
    :cond_7c
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : addSPenEvent event down start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    invoke-virtual/range {p0 .. p0}, updateRotation()V

    .line 1491
    invoke-direct/range {p0 .. p0}, setAboutStartingSuggestionService()V

    .line 1493
    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsStartingSuggestionService:Z

    if-eqz v2, :cond_9b

    .line 1495
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : can not cropping because SuggestionService is running"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    monitor-exit v28

    goto :goto_74

    .line 2006
    .end local v8    # "action":I
    .end local v24    # "totalPointerSize":I
    :catchall_98
    move-exception v2

    monitor-exit v28
    :try_end_9a
    .catchall {:try_start_23 .. :try_end_9a} :catchall_98

    throw v2

    .line 1499
    .restart local v8    # "action":I
    .restart local v24    # "totalPointerSize":I
    :cond_9b
    :try_start_9b
    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsLiveCropThread:Z

    if-eqz v2, :cond_af

    .line 1500
    const-string v2, "SmartClipView"

    const-string v3, "CropThread is live!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mIsClosedCurve:Z

    .line 1502
    monitor-exit v28

    goto :goto_74

    .line 1505
    :cond_af
    const v2, 0xff00

    and-int/2addr v2, v8

    shr-int/lit8 v18, v2, 0x8

    .line 1507
    .local v18, "index":I
    if-nez v8, :cond_f9

    .line 1508
    const/16 v21, 0x0

    .local v21, "p":I
    :goto_b9
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_d7

    .line 1509
    move-object/from16 v0, p0

    iget-object v2, v0, mPointers:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/smartclip/SmartClipView$PointerState;

    .line 1510
    .local v22, "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/smartclip/SmartClipView$PointerState;->clearTrace()V

    .line 1511
    const/4 v2, 0x0

    move-object/from16 v0, v22

    # setter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mCurDown:Z
    invoke-static {v0, v2}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$2802(Lcom/android/server/smartclip/SmartClipView$PointerState;Z)Z

    .line 1508
    add-int/lit8 v21, v21, 0x1

    goto :goto_b9

    .line 1513
    .end local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :cond_d7
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mCurDown:Z

    .line 1514
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mCurNumPointers:I

    .line 1515
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mMaxNumPointers:I

    .line 1518
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 1519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, mCropStartingTime:J

    .line 1520
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, mLastDataExtractionRequestTime:J

    .line 1523
    .end local v21    # "p":I
    :cond_f9
    move-object/from16 v0, p0

    iget v2, v0, mCurNumPointers:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, mCurNumPointers:I

    .line 1524
    move-object/from16 v0, p0

    iget v2, v0, mMaxNumPointers:I

    move-object/from16 v0, p0

    iget v3, v0, mCurNumPointers:I

    if-ge v2, v3, :cond_115

    .line 1525
    move-object/from16 v0, p0

    iget v2, v0, mCurNumPointers:I

    move-object/from16 v0, p0

    iput v2, v0, mMaxNumPointers:I

    .line 1528
    :cond_115
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .line 1529
    .local v17, "id":I
    :goto_11d
    move/from16 v0, v24

    move/from16 v1, v17

    if-gt v0, v1, :cond_134

    .line 1530
    new-instance v22, Lcom/android/server/smartclip/SmartClipView$PointerState;

    invoke-direct/range {v22 .. v22}, Lcom/android/server/smartclip/SmartClipView$PointerState;-><init>()V

    .line 1531
    .restart local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    move-object/from16 v0, p0

    iget-object v2, v0, mPointers:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1532
    add-int/lit8 v24, v24, 0x1

    .line 1533
    goto :goto_11d

    .line 1535
    .end local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :cond_134
    move-object/from16 v0, p0

    iget v2, v0, mActivePointerId:I

    if-ltz v2, :cond_14e

    move-object/from16 v0, p0

    iget-object v2, v0, mPointers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, mActivePointerId:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/smartclip/SmartClipView$PointerState;

    # getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mCurDown:Z
    invoke-static {v2}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$2800(Lcom/android/server/smartclip/SmartClipView$PointerState;)Z

    move-result v2

    if-nez v2, :cond_154

    .line 1536
    :cond_14e
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, mActivePointerId:I

    .line 1539
    :cond_154
    move-object/from16 v0, p0

    iget-object v2, v0, mPointers:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/smartclip/SmartClipView$PointerState;

    .line 1540
    .restart local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    const/4 v2, 0x1

    move-object/from16 v0, v22

    # setter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mCurDown:Z
    invoke-static {v0, v2}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$2802(Lcom/android/server/smartclip/SmartClipView$PointerState;Z)Z

    .line 1541
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mIsLastPointer:Z

    .line 1546
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, mBrType:I

    .line 1548
    const-string v2, "SmartClipView"

    const-string/jumbo v3, "mBrType : BROADCAST_VIDEOPLAYER_PAUSE SET"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    .end local v17    # "id":I
    .end local v18    # "index":I
    .end local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :cond_178
    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsStartingSuggestionService:Z

    if-eqz v2, :cond_188

    .line 1553
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : can not cropping because SuggestionService is running"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    monitor-exit v28

    goto/16 :goto_74

    .line 1557
    :cond_188
    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsLiveCropThread:Z

    if-eqz v2, :cond_1a4

    .line 1558
    const-string v2, "SmartClipView"

    const-string v3, "CropThread is live!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mIsClosedCurve:Z

    .line 1560
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, resetVariable(I)V

    .line 1561
    monitor-exit v28

    goto/16 :goto_74

    .line 1564
    :cond_1a4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v11

    .line 1569
    .local v11, "eventPointerCount":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v15

    .line 1571
    .local v15, "historySize":I
    const/4 v14, 0x0

    .local v14, "historyPos":I
    :goto_1ad
    if-ge v14, v15, :cond_27f

    .line 1572
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1b1
    move/from16 v0, v16

    if-ge v0, v11, :cond_27b

    .line 1573
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .line 1574
    .restart local v17    # "id":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, mCurDown:Z

    if-eqz v2, :cond_271

    move-object/from16 v0, p0

    iget-object v2, v0, mPointers:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/smartclip/SmartClipView$PointerState;

    move-object/from16 v22, v2

    .line 1575
    .restart local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :goto_1d1
    if-eqz v22, :cond_275

    # getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v22 .. v22}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$2900(Lcom/android/server/smartclip/SmartClipView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v10

    .line 1576
    .local v10, "coords":Landroid/view/MotionEvent$PointerCoords;
    :goto_1d7
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14, v10}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 1578
    if-eqz v22, :cond_26d

    .line 1579
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v3, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Lcom/android/server/smartclip/SmartClipView$PointerState;->addTrace(FF)V

    .line 1580
    move-object/from16 v0, p0

    iget v2, v0, mStartPointX:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1fd

    move-object/from16 v0, p0

    iget v2, v0, mStartPointY:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_23e

    .line 1581
    :cond_1fd
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, mStartPointX:F

    .line 1582
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, mStartPointY:F

    .line 1583
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, mStartPointXForCircle:F

    .line 1584
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, mStartPointYForCircle:F

    .line 1585
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, mEndPointX:F

    .line 1586
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, mEndPointY:F

    .line 1587
    move-object/from16 v0, p0

    iget-object v2, v0, mPathOfCurveForDrawing:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1589
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : mPathOfCurveForDrawing reset 1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    move-object/from16 v0, p0

    iget-object v2, v0, mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, mStartPointX:F

    move-object/from16 v0, p0

    iget v4, v0, mStartPointY:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1592
    :cond_23e
    move-object/from16 v0, p0

    iget-object v2, v0, mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, mEndPointX:F

    move-object/from16 v0, p0

    iget v4, v0, mEndPointY:F

    move-object/from16 v0, p0

    iget v5, v0, mEndPointX:F

    iget v6, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, mEndPointY:F

    iget v7, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1596
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, mEndPointX:F

    .line 1597
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, mEndPointY:F

    .line 1572
    :cond_26d
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1b1

    .line 1574
    .end local v10    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .end local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :cond_271
    const/16 v22, 0x0

    goto/16 :goto_1d1

    .line 1575
    .restart local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :cond_275
    move-object/from16 v0, p0

    iget-object v10, v0, mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    goto/16 :goto_1d7

    .line 1571
    .end local v17    # "id":I
    .end local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :cond_27b
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1ad

    .line 1603
    .end local v16    # "i":I
    :cond_27f
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_281
    move/from16 v0, v16

    if-ge v0, v11, :cond_358

    .line 1604
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .line 1605
    .restart local v17    # "id":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, mCurDown:Z

    if-eqz v2, :cond_34e

    move-object/from16 v0, p0

    iget-object v2, v0, mPointers:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/smartclip/SmartClipView$PointerState;

    move-object/from16 v22, v2

    .line 1606
    .restart local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :goto_2a1
    if-eqz v22, :cond_352

    # getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v22 .. v22}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$2900(Lcom/android/server/smartclip/SmartClipView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v10

    .line 1607
    .restart local v10    # "coords":Landroid/view/MotionEvent$PointerCoords;
    :goto_2a7
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v10}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1609
    if-eqz v22, :cond_34a

    .line 1610
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v3, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Lcom/android/server/smartclip/SmartClipView$PointerState;->addTrace(FF)V

    .line 1611
    move-object/from16 v0, p0

    iget v2, v0, mStartPointX:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2cd

    move-object/from16 v0, p0

    iget v2, v0, mStartPointY:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_30e

    .line 1612
    :cond_2cd
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, mStartPointX:F

    .line 1613
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, mStartPointY:F

    .line 1614
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, mStartPointXForCircle:F

    .line 1615
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, mStartPointYForCircle:F

    .line 1616
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, mEndPointX:F

    .line 1617
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, mEndPointY:F

    .line 1618
    move-object/from16 v0, p0

    iget-object v2, v0, mPathOfCurveForDrawing:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1620
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : mPathOfCurveForDrawing reset 2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    move-object/from16 v0, p0

    iget-object v2, v0, mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, mStartPointX:F

    move-object/from16 v0, p0

    iget v4, v0, mStartPointY:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1623
    :cond_30e
    move-object/from16 v0, p0

    iget-object v2, v0, mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, mEndPointX:F

    move-object/from16 v0, p0

    iget v4, v0, mEndPointY:F

    move-object/from16 v0, p0

    iget v5, v0, mEndPointX:F

    iget v6, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, mEndPointY:F

    iget v7, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1626
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, mEndPointX:F

    .line 1627
    iget v2, v10, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, mEndPointY:F

    .line 1628
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    move-object/from16 v0, v22

    # setter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mToolType:I
    invoke-static {v0, v2}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$3002(Lcom/android/server/smartclip/SmartClipView$PointerState;I)I

    .line 1603
    :cond_34a
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_281

    .line 1605
    .end local v10    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .end local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :cond_34e
    const/16 v22, 0x0

    goto/16 :goto_2a1

    .line 1606
    .restart local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :cond_352
    move-object/from16 v0, p0

    iget-object v10, v0, mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    goto/16 :goto_2a7

    .line 1633
    .end local v11    # "eventPointerCount":I
    .end local v14    # "historyPos":I
    .end local v15    # "historySize":I
    .end local v16    # "i":I
    .end local v17    # "id":I
    .end local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :cond_358
    move-object/from16 v0, p0

    iget-boolean v2, v0, mDisplayRoateChanged:Z

    if-eqz v2, :cond_376

    .line 1636
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : mDisplayRoateChanged is true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mIsClosedCurve:Z

    .line 1638
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mDisplayRoateChanged:Z

    .line 1639
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, resetVariable(I)V

    .line 1643
    :cond_376
    invoke-virtual/range {p0 .. p0}, getBoundRectOfPath()Landroid/graphics/Rect;

    move-result-object v9

    .line 1644
    .local v9, "boundRectOfPath":Landroid/graphics/Rect;
    if-eqz v9, :cond_385

    .line 1645
    const/4 v2, 0x2

    if-ne v8, v2, :cond_4af

    .line 1646
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2}, requestDataExtractionFromView(Landroid/graphics/Rect;Z)Z

    .line 1652
    :cond_385
    :goto_385
    const-string v2, "SmartClipView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MotionEvent, action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    const/4 v2, 0x1

    if-eq v8, v2, :cond_3a5

    and-int/lit16 v2, v8, 0xff

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3f9

    .line 1657
    :cond_3a5
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : release"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    move-object/from16 v0, p0

    iget-object v2, v0, mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 1664
    .local v23, "totalPointerCount":I
    move-object/from16 v0, p0

    iget v2, v0, mStartPointX:F

    move-object/from16 v0, p0

    iget v3, v0, mEndPointX:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, mMedianValueForGesturePosX:I

    .line 1665
    move-object/from16 v0, p0

    iget v2, v0, mStartPointY:F

    move-object/from16 v0, p0

    iget v3, v0, mEndPointY:F

    add-float/2addr v2, v3

    float-to-int v2, v2

    div-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, mMedianValueForGesturePosY:I

    .line 1668
    move-object/from16 v0, p0

    iget-object v2, v0, mCropPointList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1672
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, mCropStartingTime:J

    sub-long v12, v2, v4

    .line 1674
    .local v12, "croppingTime":J
    const-wide/16 v2, 0x12c

    cmp-long v2, v12, v2

    if-gez v2, :cond_4ba

    .line 1675
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, resetVariable(I)V

    .line 1769
    :cond_3f2
    :goto_3f2
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, resetVariable(I)V

    .line 1772
    .end local v12    # "croppingTime":J
    .end local v23    # "totalPointerCount":I
    :cond_3f9
    const/4 v2, 0x3

    if-ne v8, v2, :cond_40a

    .line 1773
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : action_calcel"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, resetVariable(I)V

    .line 1777
    :cond_40a
    const/16 v2, 0xa

    if-ne v8, v2, :cond_41c

    .line 1778
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : action is MotionEvent.ACTION_HOVER_EXIT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, resetVariable(I)V

    .line 1782
    :cond_41c
    invoke-virtual/range {p0 .. p0}, postInvalidate()V

    .line 1784
    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsClosedCurve:Z

    if-eqz v2, :cond_477

    .line 1785
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : mIsClosedCurve is true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    move-object/from16 v0, p0

    iget-object v2, v0, mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    if-eqz v2, :cond_663

    move-object/from16 v0, p0

    iget-object v2, v0, mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_663

    .line 1788
    const-string v2, "SmartClipView"

    const-string/jumbo v3, "duplicated!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1789
    move-object/from16 v0, p0

    iget-object v2, v0, mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 1790
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, resetVariable(I)V

    .line 1791
    invoke-direct/range {p0 .. p0}, setPointGroupClear()V

    .line 1792
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mIsUsablePath:Z

    .line 1793
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mIsUsableSecondPath:Z

    .line 1794
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mNumColsedCurves:I

    .line 1795
    move-object/from16 v0, p0

    iget-object v2, v0, mPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1796
    move-object/from16 v0, p0

    iget-object v2, v0, mSecondPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 2004
    :goto_472
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mIsClosedCurve:Z

    .line 2006
    :cond_477
    monitor-exit v28
    :try_end_478
    .catchall {:try_start_9b .. :try_end_478} :catchall_98

    .line 2009
    move-object/from16 v0, p0

    iget v2, v0, mBrType:I

    packed-switch v2, :pswitch_data_6fa

    .line 2032
    .end local v8    # "action":I
    .end local v9    # "boundRectOfPath":Landroid/graphics/Rect;
    .end local v24    # "totalPointerSize":I
    :goto_47f
    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsStartingSuggestionService:Z

    if-nez v2, :cond_6f0

    .line 2033
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_494

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_74

    .line 2035
    :cond_494
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_702

    :pswitch_49b
    goto/16 :goto_74

    .line 2042
    :pswitch_49d
    move-object/from16 v0, p0

    iget v2, v0, mSpenUspLevel:I

    const/4 v3, 0x2

    if-gt v2, v3, :cond_74

    .line 2043
    move-object/from16 v0, p0

    iget-object v2, v0, mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_74

    .line 1647
    .restart local v8    # "action":I
    .restart local v9    # "boundRectOfPath":Landroid/graphics/Rect;
    .restart local v24    # "totalPointerSize":I
    :cond_4af
    const/4 v2, 0x1

    if-ne v8, v2, :cond_385

    .line 1648
    const/4 v2, 0x0

    :try_start_4b3
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2}, requestDataExtractionFromView(Landroid/graphics/Rect;Z)Z

    goto/16 :goto_385

    .line 1676
    .restart local v12    # "croppingTime":J
    .restart local v23    # "totalPointerCount":I
    :cond_4ba
    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsLiveScreencapture:Z

    if-nez v2, :cond_65c

    .line 1677
    const/16 v21, 0x0

    .restart local v21    # "p":I
    :goto_4c2
    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_559

    .line 1678
    move-object/from16 v0, p0

    iget-object v2, v0, mPointers:Ljava/util/ArrayList;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/smartclip/SmartClipView$PointerState;

    .line 1679
    .restart local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    # getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceCount:I
    invoke-static/range {v22 .. v22}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$3100(Lcom/android/server/smartclip/SmartClipView$PointerState;)I

    move-result v25

    .line 1680
    .local v25, "traceCount":I
    const/16 v16, 0x0

    .restart local v16    # "i":I
    :goto_4da
    move/from16 v0, v16

    move/from16 v1, v25

    if-ge v0, v1, :cond_542

    .line 1681
    # getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceX:[F
    invoke-static/range {v22 .. v22}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$3200(Lcom/android/server/smartclip/SmartClipView$PointerState;)[F

    move-result-object v2

    aget v26, v2, v16

    .line 1682
    .local v26, "x":F
    # getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceY:[F
    invoke-static/range {v22 .. v22}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$3300(Lcom/android/server/smartclip/SmartClipView$PointerState;)[F

    move-result-object v2

    aget v27, v2, v16

    .line 1684
    .local v27, "y":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, mExistOldCoords:Z

    if-nez v2, :cond_506

    .line 1685
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, mOldCoordsX:F

    .line 1686
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, mOldCoordsY:F

    .line 1687
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mExistOldCoords:Z

    .line 1680
    :goto_503
    add-int/lit8 v16, v16, 0x1

    goto :goto_4da

    .line 1689
    :cond_506
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, mNewCoordsX:F

    .line 1690
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, mNewCoordsY:F

    .line 1691
    move-object/from16 v0, p0

    iget v3, v0, mOldCoordsX:F

    move-object/from16 v0, p0

    iget v4, v0, mOldCoordsY:F

    move-object/from16 v0, p0

    iget v5, v0, mNewCoordsX:F

    move-object/from16 v0, p0

    iget v6, v0, mNewCoordsY:F

    move-object/from16 v0, p0

    iget v7, v0, mNumberOfAddTrace:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, markMatrixForCropping(FFFFI)V

    .line 1693
    move-object/from16 v0, p0

    iget v2, v0, mNumberOfAddTrace:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, mNumberOfAddTrace:I

    .line 1694
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, mOldCoordsX:F

    .line 1695
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, mOldCoordsY:F

    goto :goto_503

    .line 1698
    .end local v26    # "x":F
    .end local v27    # "y":F
    :cond_542
    move-object/from16 v0, p0

    iget v2, v0, mOldCoordsX:F

    float-to-int v2, v2

    move-object/from16 v0, p0

    iget v3, v0, mOldCoordsY:F

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget v4, v0, mNumberOfAddTrace:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, checkClosedCurveForActionUp(III)V

    .line 1677
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_4c2

    .line 1702
    .end local v16    # "i":I
    .end local v22    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    .end local v25    # "traceCount":I
    :cond_559
    move-object/from16 v0, p0

    iget v2, v0, mNumColsedCurves:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_61f

    .line 1704
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : mNumColsedCurves is 1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    move-object/from16 v0, p0

    iget-object v2, v0, mCropPointList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1707
    move-object/from16 v0, p0

    iget v2, v0, mFirstIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, mFirstIntersectionPointLast:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, makePathForClosedCurve(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, mIsUsablePath:Z

    .line 1720
    :cond_581
    :goto_581
    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsClosedCurve:Z

    if-nez v2, :cond_5bb

    .line 1721
    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsEnableGestureEffect:Z

    if-nez v2, :cond_5bb

    .line 1722
    move-object/from16 v0, p0

    iget v2, v0, mStartPointX:F

    move-object/from16 v0, p0

    iget v3, v0, mEndPointX:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_5b3

    move-object/from16 v0, p0

    iget v2, v0, mStartPointY:F

    move-object/from16 v0, p0

    iget v3, v0, mEndPointY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5bb

    .line 1723
    :cond_5b3
    const-string v2, "SmartClipView"

    const-string/jumbo v3, "so close pointer return"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    :cond_5bb
    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsUsablePath:Z

    if-nez v2, :cond_5e5

    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsUsableSecondPath:Z

    if-nez v2, :cond_5e5

    .line 1731
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : mIsUsablePath is false and mIsUsableSecondPath is false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mIsClosedCurve:Z

    .line 1734
    invoke-direct/range {p0 .. p0}, setPointGroupClear()V

    .line 1736
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mNumColsedCurves:I

    .line 1737
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mIsUsablePath:Z

    .line 1738
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mIsUsableSecondPath:Z

    .line 1741
    :cond_5e5
    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsClosedCurve:Z

    if-nez v2, :cond_5f8

    .line 1748
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, mBrType:I

    .line 1750
    const-string v2, "SmartClipView"

    const-string/jumbo v3, "mBrType : BROADCAST_VIDEOPLAYER_PLAY SET"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    :cond_5f8
    invoke-direct/range {p0 .. p0}, isPossibleCapture()Z

    move-result v2

    if-nez v2, :cond_3f2

    .line 1758
    const-string v2, "SmartClipView"

    const-string/jumbo v3, "crop is not possible now by app!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mIsClosedCurve:Z

    .line 1760
    invoke-direct/range {p0 .. p0}, setPointGroupClear()V

    .line 1761
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, mNumColsedCurves:I

    .line 1762
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, mIsUsablePath:Z

    .line 1763
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mIsUsableSecondPath:Z

    goto/16 :goto_3f2

    .line 1709
    :cond_61f
    move-object/from16 v0, p0

    iget v2, v0, mNumColsedCurves:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_581

    .line 1711
    const-string v2, "SmartClipView"

    const-string v3, "addSPenEvent : mNumColsedCurves is 2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    move-object/from16 v0, p0

    iget-object v2, v0, mCropPointList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1714
    move-object/from16 v0, p0

    iget v2, v0, mFirstIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, mFirstIntersectionPointLast:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, makePathForClosedCurve(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, mIsUsablePath:Z

    .line 1716
    move-object/from16 v0, p0

    iget v2, v0, mSecondIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, mSecondIntersectionPointLast:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, makePathForClosedCurve(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, mIsUsableSecondPath:Z

    goto/16 :goto_581

    .line 1766
    .end local v21    # "p":I
    :cond_65c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mIsLiveScreencapture:Z

    goto/16 :goto_3f2

    .line 1798
    .end local v12    # "croppingTime":J
    .end local v23    # "totalPointerCount":I
    :cond_663
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mIsLiveCropThread:Z

    .line 1800
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/smartclip/SmartClipView$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/smartclip/SmartClipView$8;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v2, v0, mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    .line 1984
    move-object/from16 v0, p0

    iget-object v2, v0, mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_67f
    .catchall {:try_start_4b3 .. :try_end_67f} :catchall_98

    goto/16 :goto_472

    .line 2013
    :pswitch_681
    new-instance v19, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.videoplayer.VIDEOPLAYER_PAUSE"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2014
    .local v19, "intentForVideoPause":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2016
    const-string v2, "SmartClipView"

    const-string/jumbo v3, "mContext.sendBroadcast : VIDEOPLAYER_PAUSE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_47f

    .line 2020
    .end local v19    # "intentForVideoPause":Landroid/content/Intent;
    :pswitch_69d
    new-instance v20, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.videoplayer.VIDEOPLAYER_PLAY"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2021
    .local v20, "intentForVideoPlay":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2023
    const-string v2, "SmartClipView"

    const-string/jumbo v3, "mContext.sendBroadcast : VIDEOPLAYER_PLAY"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_47f

    .line 2027
    .end local v8    # "action":I
    .end local v9    # "boundRectOfPath":Landroid/graphics/Rect;
    .end local v20    # "intentForVideoPlay":Landroid/content/Intent;
    .end local v24    # "totalPointerSize":I
    :cond_6b9
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, mIsLiveGlanceView:Z

    .line 2028
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, mIsStartingSuggestionService:Z

    .line 2029
    const-string v2, "SmartClipView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSPenEvent : isKeyguardOn is true, GlanceView is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, mIsLiveGlanceView:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SmartClipSvc is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, mIsStartingSuggestionService:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_47f

    .line 2049
    :cond_6f0
    const-string v2, "SmartClipView"

    const-string/jumbo v3, "this event couldn\'t send to GestureDetector"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_74

    .line 2009
    :pswitch_data_6fa
    .packed-switch 0x1
        :pswitch_681
        :pswitch_69d
    .end packed-switch

    .line 2035
    :pswitch_data_702
    .packed-switch 0x0
        :pswitch_49d
        :pswitch_49d
        :pswitch_49d
        :pswitch_49d
        :pswitch_49b
        :pswitch_49d
        :pswitch_49d
    .end packed-switch
.end method

.method public closeView()V
    .registers 2

    .prologue
    .line 2470
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, setVisibility(I)V

    .line 2471
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setCroppingMode(I)V

    .line 2472
    return-void
.end method

.method public cropDraggedRect()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 2502
    const-string v3, "SmartClipView"

    const-string/jumbo v4, "cropDraggedRect()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    iget-object v3, p0, mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    if-nez v3, :cond_e

    .line 2610
    :cond_d
    :goto_d
    return v2

    .line 2508
    :cond_e
    iget-object v3, p0, mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    if-eqz v3, :cond_1a

    iget-object v3, p0, mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_d

    .line 2511
    :cond_1a
    const-string v3, "SmartClipView"

    const-string v4, "Starting cropping dragged area!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    const/4 v1, 0x0

    .line 2515
    .local v1, "croppedRect":Landroid/graphics/Rect;
    iget-object v3, p0, mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    if-eqz v3, :cond_2c

    .line 2516
    iget-object v3, p0, mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v3}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 2519
    :cond_2c
    if-eqz v1, :cond_3a

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lez v3, :cond_3a

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-gtz v3, :cond_3e

    .line 2520
    :cond_3a
    invoke-virtual {p0}, getBoundRectOfPath()Landroid/graphics/Rect;

    move-result-object v1

    .line 2524
    :cond_3e
    if-eqz v1, :cond_8d

    .line 2525
    iget v3, v1, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_46

    .line 2526
    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 2527
    :cond_46
    iget v3, v1, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_4c

    .line 2528
    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 2529
    :cond_4c
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, p0, mCurrentDisplayWidth:I

    if-le v3, v4, :cond_56

    .line 2530
    iget v3, p0, mCurrentDisplayWidth:I

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 2531
    :cond_56
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, mCurrentDisplayHeight:I

    if-le v3, v4, :cond_60

    .line 2532
    iget v3, p0, mCurrentDisplayHeight:I

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 2535
    :cond_60
    const-string v3, "SmartClipView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cropDraggedRect : croppedRect(adjusted) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iput v3, p0, mMaxCoordX:I

    .line 2538
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iput v3, p0, mMinCoordX:I

    .line 2539
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iput v3, p0, mMaxCoordY:I

    .line 2540
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iput v3, p0, mMinCoordY:I

    .line 2543
    :cond_8d
    iget v3, p0, mMaxCoordX:I

    iget v4, p0, mMinCoordX:I

    sub-int/2addr v3, v4

    iput v3, p0, mCropImageWidth:I

    .line 2544
    iget v3, p0, mMaxCoordY:I

    iget v4, p0, mMinCoordY:I

    sub-int/2addr v3, v4

    iput v3, p0, mCropImageHeight:I

    .line 2546
    iget v3, p0, mCropImageWidth:I

    if-lez v3, :cond_d

    iget v3, p0, mCropImageHeight:I

    if-lez v3, :cond_d

    .line 2550
    iget v2, p0, mMaxCoordX:I

    iput v2, p0, mMaxCoordXForIntent:I

    .line 2551
    iget v2, p0, mMinCoordX:I

    iput v2, p0, mMinCoordXForIntent:I

    .line 2552
    iget v2, p0, mMaxCoordY:I

    iput v2, p0, mMaxCoordYForIntent:I

    .line 2553
    iget v2, p0, mMinCoordY:I

    iput v2, p0, mMinCoordYForIntent:I

    .line 2555
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 2556
    .local v0, "cropImgSaveHandler":Landroid/os/Handler;
    new-instance v2, Lcom/android/server/smartclip/SmartClipView$10;

    invoke-direct {v2, p0}, Lcom/android/server/smartclip/SmartClipView$10;-><init>(Lcom/android/server/smartclip/SmartClipView;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2610
    const/4 v2, 0x1

    goto/16 :goto_d
.end method

.method protected drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)Z
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "r"    # Landroid/graphics/Rect;
    .param p3, "color"    # I

    .prologue
    .line 2491
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 2492
    .local v5, "paint":Landroid/graphics/Paint;
    invoke-virtual {v5, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2493
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2494
    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2495
    iget v0, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2496
    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v0

    iget v0, p2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v0

    iget v0, p2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2497
    const/4 v0, 0x1

    return v0
.end method

.method protected getBoundRectOfPath()Landroid/graphics/Rect;
    .registers 7

    .prologue
    .line 2475
    const/4 v0, 0x0

    .line 2477
    .local v0, "boundsOfPath":Landroid/graphics/Rect;
    iget-object v2, p0, mPathOfCurveForDrawing:Landroid/graphics/Path;

    if-eqz v2, :cond_21

    .line 2478
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 2480
    .local v1, "rectf":Landroid/graphics/RectF;
    iget-object v2, p0, mPathOfCurveForDrawing:Landroid/graphics/Path;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 2481
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "boundsOfPath":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2486
    .end local v1    # "rectf":Landroid/graphics/RectF;
    .restart local v0    # "boundsOfPath":Landroid/graphics/Rect;
    :cond_21
    return-object v0
.end method

.method public getCroppingMode()I
    .registers 2

    .prologue
    .line 2466
    iget v0, p0, mCroppingMode:I

    return v0
.end method

.method public isExclusiveModeActivated()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 2455
    iget v1, p0, mCroppingMode:I

    if-ne v1, v0, :cond_c

    invoke-virtual {p0}, getVisibility()I

    move-result v1

    if-nez v1, :cond_c

    .line 2458
    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isLockScreenShowing()Z
    .registers 4

    .prologue
    .line 2426
    iget-object v1, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_13

    .line 2428
    :try_start_4
    iget-object v1, p0, mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_b

    move-result v1

    .line 2433
    :goto_a
    return v1

    .line 2429
    :catch_b
    move-exception v0

    .line 2430
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartClipView"

    const-string v2, "Failed check isLockScreenShowing : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2433
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_13
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public isShowingGestureEffect()Z
    .registers 2

    .prologue
    .line 2439
    iget-object v0, p0, mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

    invoke-virtual {v0}, Lcom/android/server/smartclip/GestureEffectManager;->isShowingGestureEffect()Z

    move-result v0

    return v0
.end method

.method public makePathForClosedCurve(IIZ)Z
    .registers 26
    .param p1, "intersectionPointPrev"    # I
    .param p2, "intersectionPointLast"    # I
    .param p3, "isFirstCurve"    # Z

    .prologue
    .line 2116
    const/4 v4, 0x0

    .line 2117
    .local v4, "existOldCoords":Z
    const/4 v9, 0x0

    .line 2118
    .local v9, "oldCoordsX":F
    const/4 v10, 0x0

    .line 2119
    .local v10, "oldCoordsY":F
    const/4 v6, 0x0

    .line 2120
    .local v6, "newCoordsX":F
    const/4 v7, 0x0

    .line 2121
    .local v7, "newCoordsY":F
    const/4 v8, 0x0

    .line 2124
    .local v8, "numberOfAddTrace":I
    const-string v18, "SmartClipView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "makePathForClosedCurve : isFirstCurve : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2126
    const-string v18, "SmartClipView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "makePathForClosedCurve : intersectionPointPrev : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", intersectionPointLast "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    move-object/from16 v0, p0

    iget-object v0, v0, mPointers:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2131
    .local v14, "totalPointerCount":I
    const/4 v11, 0x0

    .local v11, "p":I
    :goto_59
    if-ge v11, v14, :cond_154

    .line 2132
    move-object/from16 v0, p0

    iget-object v0, v0, mPointers:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/smartclip/SmartClipView$PointerState;

    .line 2133
    .local v13, "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    # getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceCount:I
    invoke-static {v13}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$3100(Lcom/android/server/smartclip/SmartClipView$PointerState;)I

    move-result v15

    .line 2134
    .local v15, "traceCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_6e
    if-ge v5, v15, :cond_150

    .line 2135
    # getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceX:[F
    invoke-static {v13}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$3200(Lcom/android/server/smartclip/SmartClipView$PointerState;)[F

    move-result-object v18

    aget v16, v18, v5

    .line 2136
    .local v16, "x":F
    # getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceY:[F
    invoke-static {v13}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$3300(Lcom/android/server/smartclip/SmartClipView$PointerState;)[F

    move-result-object v18

    aget v17, v18, v5

    .line 2138
    .local v17, "y":F
    move/from16 v0, p1

    if-gt v0, v8, :cond_dc

    add-int/lit8 v18, p2, 0x1

    move/from16 v0, v18

    if-lt v0, v8, :cond_dc

    .line 2139
    if-nez v4, :cond_108

    .line 2140
    move/from16 v9, v16

    .line 2141
    move/from16 v10, v17

    .line 2142
    const/16 v18, 0x1

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_e1

    .line 2143
    move-object/from16 v0, p0

    iget-object v0, v0, mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->reset()V

    .line 2144
    move-object/from16 v0, p0

    iget-object v0, v0, mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2145
    float-to-int v0, v9

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mFirstIntersectionPointX:I

    .line 2146
    float-to-int v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mFirstIntersectionPointY:I

    .line 2153
    :goto_ba
    const/4 v4, 0x1

    .line 2174
    :goto_bb
    new-instance v12, Landroid/graphics/Point;

    invoke-direct {v12}, Landroid/graphics/Point;-><init>()V

    .line 2175
    .local v12, "point":Landroid/graphics/Point;
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 2176
    move-object/from16 v0, p0

    iget-object v0, v0, mCropPointList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2179
    .end local v12    # "point":Landroid/graphics/Point;
    :cond_dc
    add-int/lit8 v8, v8, 0x1

    .line 2134
    add-int/lit8 v5, v5, 0x1

    goto :goto_6e

    .line 2148
    :cond_e1
    move-object/from16 v0, p0

    iget-object v0, v0, mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->reset()V

    .line 2149
    move-object/from16 v0, p0

    iget-object v0, v0, mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 2150
    float-to-int v0, v9

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mSecondIntersectionPointX:I

    .line 2151
    float-to-int v0, v10

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, mSecondIntersectionPointY:I

    goto :goto_ba

    .line 2155
    :cond_108
    move/from16 v6, v16

    .line 2156
    move/from16 v7, v17

    .line 2157
    const/16 v18, 0x1

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_134

    .line 2158
    move-object/from16 v0, p0

    iget-object v0, v0, mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v18, v0

    add-float v19, v6, v9

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    add-float v20, v7, v10

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 2169
    :goto_12f
    move/from16 v9, v16

    .line 2170
    move/from16 v10, v17

    goto :goto_bb

    .line 2161
    :cond_134
    move-object/from16 v0, p0

    iget-object v0, v0, mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v18, v0

    add-float v19, v6, v9

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    add-float v20, v7, v10

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_12f

    .line 2131
    .end local v16    # "x":F
    .end local v17    # "y":F
    :cond_150
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_59

    .line 2183
    .end local v5    # "i":I
    .end local v13    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    .end local v15    # "traceCount":I
    :cond_154
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 2184
    .local v3, "boundsOfPath":Landroid/graphics/RectF;
    const/16 v18, 0x1

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_193

    .line 2185
    move-object/from16 v0, p0

    iget-object v0, v0, mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 2193
    :goto_170
    iget v0, v3, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    iget v0, v3, Landroid/graphics/RectF;->left:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    const/high16 v19, 0x42200000    # 40.0f

    cmpg-float v18, v18, v19

    if-gez v18, :cond_1a3

    iget v0, v3, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    const/high16 v19, 0x42200000    # 40.0f

    cmpg-float v18, v18, v19

    if-gez v18, :cond_1a3

    .line 2195
    const/16 v18, 0x0

    .line 2198
    :goto_192
    return v18

    .line 2187
    :cond_193
    move-object/from16 v0, p0

    iget-object v0, v0, mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    goto :goto_170

    .line 2198
    :cond_1a3
    const/16 v18, 0x1

    goto :goto_192
.end method

.method protected onAttachedToWindow()V
    .registers 5

    .prologue
    const/4 v3, -0x2

    .line 1162
    iget-object v1, p0, mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

    invoke-virtual {v1, p0}, Lcom/android/server/smartclip/GestureEffectManager;->onAttachedToWindow(Lcom/android/server/smartclip/SmartClipView;)V

    .line 1164
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, mLoadingAniImgView:Landroid/widget/ImageView;

    .line 1165
    iget-object v1, p0, mLoadingAniImgView:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1166
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1167
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1168
    iget-object v1, p0, mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1169
    return-void
.end method

.method public onDataExtractionResponseArrived(Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;)V
    .registers 6
    .param p1, "response"    # Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;

    .prologue
    .line 512
    iget-object v1, p1, Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;->mRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 513
    .local v1, "repository":Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    if-eqz v1, :cond_12

    .line 514
    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 516
    .local v0, "croppedRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v1}, setSmartClipDataRepository(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Z

    .line 517
    invoke-virtual {p0}, postInvalidate()V

    .line 518
    const/4 v2, 0x0

    iput-boolean v2, p0, mIsExtractingDataFromView:Z

    .line 522
    .end local v0    # "croppedRect":Landroid/graphics/Rect;
    :goto_11
    return-void

    .line 520
    :cond_12
    const-string v2, "SmartClipView"

    const-string/jumbo v3, "onDataExtractionResponseArrived : Repository is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x1

    const/high16 v6, -0x40800000    # -1.0f

    .line 1208
    iget v2, p0, mStartPointX:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_1a

    iget v2, p0, mStartPointY:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_1a

    .line 1209
    iget v2, p0, mStartPointX:F

    iget v3, p0, mStartPointY:F

    const/high16 v4, 0x41000000    # 8.0f

    iget-object v5, p0, mCirclePaintWhite:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1214
    :cond_1a
    iget-object v2, p0, mPathOfCurveForDrawing:Landroid/graphics/Path;

    iget-object v3, p0, mPathPaintBlack:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1215
    iget-object v2, p0, mPathOfCurveForDrawing:Landroid/graphics/Path;

    iget-object v3, p0, mPathPaintWhite:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1217
    iget v2, p0, mEndPointX:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_3f

    iget v2, p0, mEndPointY:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_3f

    .line 1218
    iget v2, p0, mEndPointX:F

    iget v3, p0, mEndPointY:F

    const/high16 v4, 0x40800000    # 4.0f

    iget-object v5, p0, mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1222
    :cond_3f
    iget v2, p0, mCroppingMode:I

    if-eq v2, v7, :cond_47

    iget-boolean v2, p0, mIsDisplayMetaArea:Z

    if-ne v2, v7, :cond_73

    .line 1223
    :cond_47
    iget-object v2, p0, mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    if-eqz v2, :cond_73

    .line 1225
    iget-object v2, p0, mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    invoke-virtual {v2}, Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;->getContentRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1226
    .local v0, "contentRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_73

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-lez v2, :cond_73

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-lez v2, :cond_73

    .line 1228
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 1229
    .local v1, "paint":Landroid/graphics/Paint;
    const v2, 0x3087cefa

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1230
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1231
    const v2, -0x783106

    invoke-virtual {p0, p1, v0, v2}, drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)Z

    .line 1236
    .end local v0    # "contentRect":Landroid/graphics/Rect;
    .end local v1    # "paint":Landroid/graphics/Paint;
    :cond_73
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1174
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1175
    iget-object v0, p0, mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    iget-object v1, p0, mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, mHeaderBottom:I

    .line 1176
    return-void
.end method

.method protected requestDataExtractionFromView(Landroid/graphics/Rect;Z)Z
    .registers 15
    .param p1, "rectToExtract"    # Landroid/graphics/Rect;
    .param p2, "ignoreRequestDuringExtraction"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 453
    if-nez p1, :cond_5

    .line 494
    :cond_4
    :goto_4
    return v6

    .line 456
    :cond_5
    const-string/jumbo v8, "window"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    .line 458
    .local v5, "windowManager":Landroid/view/IWindowManager;
    if-ne p2, v7, :cond_24

    .line 459
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, mLastDataExtractionRequestTime:J

    sub-long v0, v8, v10

    .line 461
    .local v0, "deltaTime":J
    iget-boolean v8, p0, mIsExtractingDataFromView:Z

    if-ne v8, v7, :cond_63

    .line 462
    const-wide/16 v8, 0x7d0

    cmp-long v8, v0, v8

    if-ltz v8, :cond_4

    .line 471
    .end local v0    # "deltaTime":J
    :cond_24
    iput-boolean v7, p0, mIsExtractingDataFromView:Z

    .line 472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, mLastDataExtractionRequestTime:J

    .line 475
    :try_start_2c
    iget v8, p0, mDataExtractionRequestId:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, mDataExtractionRequestId:I

    .line 476
    iget v8, p0, mDataExtractionRequestId:I

    const v9, 0x186a0

    if-le v8, v9, :cond_3c

    .line 477
    const/4 v8, 0x0

    iput v8, p0, mDataExtractionRequestId:I

    .line 480
    :cond_3c
    new-instance v3, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    iget v8, p0, mDataExtractionRequestId:I

    invoke-direct {v3, v8, p1}, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;-><init>(ILandroid/graphics/Rect;)V

    .line 481
    .local v3, "event":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    new-instance v4, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;

    iget v8, p0, mDataExtractionRequestId:I

    const/4 v9, 0x1

    invoke-direct {v4, v8, v9, v3}, Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;-><init>(IILandroid/os/Parcelable;)V

    .line 486
    .local v4, "requestData":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    iget v8, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iget v9, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    const/4 v10, 0x0

    invoke-interface {v5, v8, v9, v4, v10}, Landroid/view/IWindowManager;->dispatchSmartClipRemoteRequest(IILcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;Landroid/os/IBinder;)V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_61} :catch_6a

    move v6, v7

    .line 494
    goto :goto_4

    .line 465
    .end local v3    # "event":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    .end local v4    # "requestData":Lcom/samsung/android/smartclip/SmartClipRemoteRequestInfo;
    .restart local v0    # "deltaTime":J
    :cond_63
    const-wide/16 v8, 0x64

    cmp-long v8, v0, v8

    if-gez v8, :cond_24

    goto :goto_4

    .line 490
    .end local v0    # "deltaTime":J
    :catch_6a
    move-exception v2

    .line 491
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "SmartClipView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception e"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method public resetVariable(I)V
    .registers 10
    .param p1, "totalPointerSize"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v4, 0x0

    .line 2203
    const-string v2, "SmartClipView"

    const-string/jumbo v3, "resetVariable : reset"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    const/4 v0, 0x0

    .local v0, "p":I
    :goto_e
    if-ge v0, p1, :cond_21

    .line 2206
    iget-object v2, p0, mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/smartclip/SmartClipView$PointerState;

    .line 2207
    .local v1, "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    invoke-virtual {v1}, Lcom/android/server/smartclip/SmartClipView$PointerState;->clearTrace()V

    .line 2208
    # setter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mCurDown:Z
    invoke-static {v1, v4}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$2802(Lcom/android/server/smartclip/SmartClipView$PointerState;Z)Z

    .line 2205
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 2211
    .end local v1    # "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    :cond_21
    iput-boolean v4, p0, mCurDown:Z

    .line 2212
    iput v4, p0, mCurNumPointers:I

    .line 2213
    iput v4, p0, mMaxNumPointers:I

    .line 2214
    iput-boolean v4, p0, mExistOldCoords:Z

    .line 2215
    iput-boolean v4, p0, mIsLastPointer:Z

    .line 2216
    const/4 v2, 0x1

    iput-boolean v2, p0, mIsFirstPointer:Z

    .line 2217
    iput-boolean v4, p0, mEnableCheckClosedCurve:Z

    .line 2218
    iput v6, p0, mOldCoordsX:F

    .line 2219
    iput v6, p0, mOldCoordsY:F

    .line 2220
    iput v6, p0, mNewCoordsX:F

    .line 2221
    iput v6, p0, mNewCoordsY:F

    .line 2223
    iput v5, p0, mEndPointX:F

    .line 2224
    iput v5, p0, mEndPointY:F

    .line 2225
    iput v4, p0, mNumberOfAddTrace:I

    .line 2226
    iput v7, p0, mFirstStartPointX:I

    .line 2227
    iput v7, p0, mFirstStartPointY:I

    .line 2228
    iput v7, p0, mPrevCoordY:I

    .line 2230
    iget-object v2, p0, mPathOfCurveForDrawing:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 2232
    iget v2, p0, mStartPointX:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_5a

    iget v2, p0, mStartPointY:F

    cmpl-float v2, v2, v5

    if-eqz v2, :cond_5a

    .line 2233
    iget-object v2, p0, mCroppingMatrix:Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;

    invoke-virtual {v2}, Lcom/android/server/smartclip/SmartClipView$CroppingMatrix;->reset()V

    .line 2236
    :cond_5a
    iput v5, p0, mStartPointX:F

    .line 2237
    iput v5, p0, mStartPointY:F

    .line 2238
    return-void
.end method

.method public setCroppingMode(I)V
    .registers 2
    .param p1, "croppingMode"    # I

    .prologue
    .line 2462
    iput p1, p0, mCroppingMode:I

    .line 2463
    return-void
.end method

.method public setDoubleTapStateBySettingMenu(Z)V
    .registers 2
    .param p1, "isEnable"    # Z

    .prologue
    .line 1020
    iput-boolean p1, p0, mIsEnableDoubleTapOnLockscreen:Z

    .line 1021
    return-void
.end method

.method public setFocusWindow(I)V
    .registers 2
    .param p1, "focusSurfaceLayer"    # I

    .prologue
    .line 930
    iput p1, p0, mFocusedWindow:I

    .line 931
    return-void
.end method

.method public setHapticEnabled(Z)V
    .registers 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 546
    iput-boolean p1, p0, mIsEnabledHapticFeedback:Z

    .line 547
    return-void
.end method

.method public setPhoneWindowMangerFlag(Z)V
    .registers 3
    .param p1, "isInvisible"    # Z

    .prologue
    .line 2443
    iget-object v0, p0, mGestureEffectManager:Lcom/android/server/smartclip/GestureEffectManager;

    invoke-virtual {v0, p1}, Lcom/android/server/smartclip/GestureEffectManager;->setPhoneWindowMangerFlag(Z)V

    .line 2444
    return-void
.end method

.method public setSmartClipDataRepository(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Z
    .registers 3
    .param p1, "smartClipDataRepository"    # Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .prologue
    .line 2449
    iput-object p1, p0, mSmartClipDataRepository:Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;

    .line 2450
    const/4 v0, 0x1

    return v0
.end method

.method public updateRotation()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2318
    const-string v2, "SmartClipView"

    const-string/jumbo v3, "updateRotation"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    invoke-direct {p0}, setDisplayDegrees()Z

    move-result v1

    .line 2322
    .local v1, "result":Z
    iget-object v2, p0, mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/smartclip/SmartClipView$PointerState;

    .line 2323
    .local v0, "ps":Lcom/android/server/smartclip/SmartClipView$PointerState;
    # getter for: Lcom/android/server/smartclip/SmartClipView$PointerState;->mTraceCount:I
    invoke-static {v0}, Lcom/android/server/smartclip/SmartClipView$PointerState;->access$3100(Lcom/android/server/smartclip/SmartClipView$PointerState;)I

    move-result v2

    if-le v2, v5, :cond_34

    .line 2324
    if-ne v1, v5, :cond_29

    .line 2325
    iput-boolean v5, p0, mDisplayRoateChanged:Z

    .line 2327
    const-string v2, "SmartClipView"

    const-string/jumbo v3, "setDisplayDegrees : mDisplayRoateChanged is true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    :goto_28
    return-void

    .line 2329
    :cond_29
    iput-boolean v4, p0, mDisplayRoateChanged:Z

    .line 2331
    const-string v2, "SmartClipView"

    const-string/jumbo v3, "setDisplayDegrees : mDisplayRoateChanged is false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 2334
    :cond_34
    iput-boolean v4, p0, mDisplayRoateChanged:Z

    .line 2336
    const-string v2, "SmartClipView"

    const-string/jumbo v3, "setDisplayDegrees : mDisplayRoateChanged is false"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method
