.class public Lcom/android/internal/widget/PointerLocationView;
.super Landroid/view/View;
.source "PointerLocationView.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;,
        Lcom/android/internal/widget/PointerLocationView$PointerState;
    }
.end annotation


# static fields
.field private static final ALT_STRATEGY_PROPERY_KEY:Ljava/lang/String; = "debug.velocitytracker.alt"

.field private static final TAG:Ljava/lang/String; = "Pointer"


# instance fields
.field private final ESTIMATE_FUTURE_POINTS:I

.field private final ESTIMATE_INTERVAL:F

.field private final ESTIMATE_PAST_POINTS:I

.field private mActivePointerId:I

.field private final mAltVelocity:Landroid/view/VelocityTracker;

.field private mCurDown:Z

.field private mCurNumPointers:I

.field private final mCurrentPointPaint:Landroid/graphics/Paint;

.field private mHeaderBottom:I

.field private final mIm:Landroid/hardware/input/InputManager;

.field private mMaxNumPointers:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPathPaint:Landroid/graphics/Paint;

.field private final mPointers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/PointerLocationView$PointerState;",
            ">;"
        }
    .end annotation
.end field

.field private mPrintCoords:Z

.field private mReusableOvalRect:Landroid/graphics/RectF;

.field private final mTargetPaint:Landroid/graphics/Paint;

.field private final mTempCoords:Landroid/view/MotionEvent$PointerCoords;

.field private final mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

.field private final mTextBackgroundPaint:Landroid/graphics/Paint;

.field private final mTextLevelPaint:Landroid/graphics/Paint;

.field private final mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mVC:Landroid/view/ViewConfiguration;

.field private final mVelocity:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    const/16 v9, 0xc0

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x1

    const/16 v6, 0xff

    const/4 v5, 0x0

    .line 151
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 110
    const/4 v2, 0x4

    iput v2, p0, ESTIMATE_PAST_POINTS:I

    .line 111
    const/4 v2, 0x2

    iput v2, p0, ESTIMATE_FUTURE_POINTS:I

    .line 112
    const v2, 0x3ca3d70a    # 0.02f

    iput v2, p0, ESTIMATE_INTERVAL:F

    .line 124
    new-instance v2, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v2}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v2, p0, mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 130
    new-instance v2, Lcom/android/internal/widget/PointerLocationView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/PointerLocationView$1;-><init>(Lcom/android/internal/widget/PointerLocationView;)V

    iput-object v2, p0, mPointers:Ljava/util/ArrayList;

    .line 141
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v2, p0, mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 146
    new-instance v2, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-direct {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;-><init>()V

    iput-object v2, p0, mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    .line 148
    iput-boolean v7, p0, mPrintCoords:Z

    .line 222
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, mReusableOvalRect:Landroid/graphics/RectF;

    .line 152
    invoke-virtual {p0, v7}, setFocusableInTouchMode(Z)V

    .line 154
    const-string v2, "input"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    iput-object v2, p0, mIm:Landroid/hardware/input/InputManager;

    .line 156
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    iput-object v2, p0, mVC:Landroid/view/ViewConfiguration;

    .line 157
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, mTextPaint:Landroid/graphics/Paint;

    .line 158
    iget-object v2, p0, mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 159
    iget-object v2, p0, mTextPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 161
    iget-object v2, p0, mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 162
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, mTextBackgroundPaint:Landroid/graphics/Paint;

    .line 163
    iget-object v2, p0, mTextBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 164
    iget-object v2, p0, mTextBackgroundPaint:Landroid/graphics/Paint;

    const/16 v3, 0x80

    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 165
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, mTextLevelPaint:Landroid/graphics/Paint;

    .line 166
    iget-object v2, p0, mTextLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 167
    iget-object v2, p0, mTextLevelPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v9, v6, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 168
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, mPaint:Landroid/graphics/Paint;

    .line 169
    iget-object v2, p0, mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 170
    iget-object v2, p0, mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 171
    iget-object v2, p0, mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 172
    iget-object v2, p0, mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 173
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, mCurrentPointPaint:Landroid/graphics/Paint;

    .line 174
    iget-object v2, p0, mCurrentPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 175
    iget-object v2, p0, mCurrentPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v6, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 176
    iget-object v2, p0, mCurrentPointPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 177
    iget-object v2, p0, mCurrentPointPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 178
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, mTargetPaint:Landroid/graphics/Paint;

    .line 179
    iget-object v2, p0, mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 180
    iget-object v2, p0, mTargetPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v6, v5, v5, v9}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 181
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, mPathPaint:Landroid/graphics/Paint;

    .line 182
    iget-object v2, p0, mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 183
    iget-object v2, p0, mPathPaint:Landroid/graphics/Paint;

    const/16 v3, 0x60

    invoke-virtual {v2, v6, v5, v3, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 184
    iget-object v2, p0, mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 185
    iget-object v2, p0, mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 187
    new-instance v1, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-direct {v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;-><init>()V

    .line 188
    .local v1, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    iget-object v2, p0, mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    iput v5, p0, mActivePointerId:I

    .line 191
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, mVelocity:Landroid/view/VelocityTracker;

    .line 193
    const-string v2, "debug.velocitytracker.alt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, "altStrategy":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_13e

    .line 195
    const-string v2, "Pointer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Comparing default velocity tracker strategy with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-static {v0}, Landroid/view/VelocityTracker;->obtain(Ljava/lang/String;)Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, mAltVelocity:Landroid/view/VelocityTracker;

    .line 200
    :goto_13d
    return-void

    .line 198
    :cond_13e
    const/4 v2, 0x0

    iput-object v2, p0, mAltVelocity:Landroid/view/VelocityTracker;

    goto :goto_13d
.end method

.method private drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "major"    # F
    .param p5, "minor"    # F
    .param p6, "angle"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 225
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    .line 226
    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr v0, p6

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-float v0, v0

    invoke-virtual {p1, v0, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 227
    iget-object v0, p0, mReusableOvalRect:Landroid/graphics/RectF;

    div-float v1, p5, v4

    sub-float v1, p2, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 228
    iget-object v0, p0, mReusableOvalRect:Landroid/graphics/RectF;

    div-float v1, p5, v4

    add-float/2addr v1, p2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 229
    iget-object v0, p0, mReusableOvalRect:Landroid/graphics/RectF;

    div-float v1, p4, v4

    sub-float v1, p3, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 230
    iget-object v0, p0, mReusableOvalRect:Landroid/graphics/RectF;

    div-float v1, p4, v4

    add-float/2addr v1, p3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 231
    iget-object v0, p0, mReusableOvalRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p7}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 232
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 233
    return-void
.end method

.method private logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V
    .registers 19
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "action"    # I
    .param p3, "index"    # I
    .param p4, "coords"    # Landroid/view/MotionEvent$PointerCoords;
    .param p5, "id"    # I
    .param p6, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 457
    move-object/from16 v0, p6

    invoke-virtual {v0, p3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    .line 458
    .local v4, "toolType":I
    invoke-virtual/range {p6 .. p6}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    .line 460
    .local v2, "buttonState":I
    and-int/lit16 v5, p2, 0xff

    packed-switch v5, :pswitch_data_1ea

    .line 505
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 509
    .local v3, "prefix":Ljava/lang/String;
    :goto_13
    const-string v5, "Pointer"

    iget-object v6, p0, mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    const-string v7, " id "

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    add-int/lit8 v7, p5, 0x1

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    const-string v7, ") Pressure="

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    const-string v7, " Size="

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    const-string v7, " TouchMajor="

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    const-string v7, " TouchMinor="

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    const-string v7, " ToolMajor="

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    const-string v7, " ToolMinor="

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    const-string v7, " Orientation="

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    iget v7, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    const/high16 v8, 0x43340000    # 180.0f

    mul-float/2addr v7, v8

    float-to-double v8, v7

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v10

    double-to-float v7, v8

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    const-string v7, "deg"

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    const-string v7, " Tilt="

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    const/16 v7, 0x19

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v7

    const/high16 v8, 0x43340000    # 180.0f

    mul-float/2addr v7, v8

    float-to-double v8, v7

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v10

    double-to-float v7, v8

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    const-string v7, "deg"

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    const-string v7, " Distance="

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    const/16 v7, 0x18

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    const-string v7, " VScroll="

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    const/16 v7, 0x9

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    const-string v7, " HScroll="

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    const/16 v7, 0xa

    move-object/from16 v0, p4

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    const-string v7, " BoundingBox=[("

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    const/16 v7, 0x20

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v7

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    const/16 v7, 0x21

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v7

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    const-string v7, ", ("

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    const/16 v7, 0x22

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v7

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    const/16 v7, 0x23

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v7

    const/4 v8, 0x3

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    const-string v7, ")]"

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    const-string v7, " ToolType="

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    invoke-static {v4}, Landroid/view/MotionEvent;->toolTypeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    const-string v7, " ButtonState="

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    invoke-static {v2}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    return-void

    .line 462
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_1a6
    const-string v3, "DOWN"

    .line 463
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_13

    .line 465
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_1aa
    const-string v3, "UP"

    .line 466
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_13

    .line 468
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_1ae
    const-string v3, "MOVE"

    .line 469
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_13

    .line 471
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_1b2
    const-string v3, "CANCEL"

    .line 472
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_13

    .line 474
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_1b6
    const-string v3, "OUTSIDE"

    .line 475
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_13

    .line 477
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_1ba
    const v5, 0xff00

    and-int/2addr v5, p2

    shr-int/lit8 v5, v5, 0x8

    if-ne p3, v5, :cond_1c6

    .line 479
    const-string v3, "DOWN"

    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_13

    .line 481
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_1c6
    const-string v3, "MOVE"

    .line 483
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_13

    .line 485
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_1ca
    const v5, 0xff00

    and-int/2addr v5, p2

    shr-int/lit8 v5, v5, 0x8

    if-ne p3, v5, :cond_1d6

    .line 487
    const-string v3, "UP"

    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_13

    .line 489
    .end local v3    # "prefix":Ljava/lang/String;
    :cond_1d6
    const-string v3, "MOVE"

    .line 491
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_13

    .line 493
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_1da
    const-string v3, "HOVER MOVE"

    .line 494
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_13

    .line 496
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_1de
    const-string v3, "HOVER ENTER"

    .line 497
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_13

    .line 499
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_1e2
    const-string v3, "HOVER EXIT"

    .line 500
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_13

    .line 502
    .end local v3    # "prefix":Ljava/lang/String;
    :pswitch_1e6
    const-string v3, "SCROLL"

    .line 503
    .restart local v3    # "prefix":Ljava/lang/String;
    goto/16 :goto_13

    .line 460
    :pswitch_data_1ea
    .packed-switch 0x0
        :pswitch_1a6
        :pswitch_1aa
        :pswitch_1ae
        :pswitch_1b2
        :pswitch_1b6
        :pswitch_1ba
        :pswitch_1ca
        :pswitch_1da
        :pswitch_1e6
        :pswitch_1de
        :pswitch_1e2
    .end packed-switch
.end method

.method private logInputDeviceState(ILjava/lang/String;)V
    .registers 7
    .param p1, "deviceId"    # I
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    .line 778
    iget-object v1, p0, mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v1, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    .line 779
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_25

    .line 780
    const-string v1, "Pointer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :goto_24
    return-void

    .line 782
    :cond_25
    const-string v1, "Pointer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24
.end method

.method private logInputDevices()V
    .registers 5

    .prologue
    .line 771
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    .line 772
    .local v0, "deviceIds":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_12

    .line 773
    aget v2, v0, v1

    const-string v3, "Device Enumerated"

    invoke-direct {p0, v2, v3}, logInputDeviceState(ILjava/lang/String;)V

    .line 772
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 775
    :cond_12
    return-void
.end method

.method private logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V
    .registers 13
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 438
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 439
    .local v2, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v7

    .line 440
    .local v7, "N":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    .line 441
    .local v8, "NI":I
    const/4 v9, 0x0

    .local v9, "historyPos":I
    :goto_d
    if-ge v9, v7, :cond_29

    .line 442
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    if-ge v3, v8, :cond_26

    .line 443
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 444
    .local v5, "id":I
    iget-object v0, p0, mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {p2, v3, v9, v0}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 445
    iget-object v4, p0, mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    .line 442
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 441
    .end local v5    # "id":I
    :cond_26
    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 448
    .end local v3    # "i":I
    :cond_29
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2a
    if-ge v3, v8, :cond_40

    .line 449
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 450
    .restart local v5    # "id":I
    iget-object v0, p0, mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {p2, v3, v0}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 451
    iget-object v4, p0, mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    .line 448
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 453
    .end local v5    # "id":I
    :cond_40
    return-void
.end method

.method private static shouldLogKey(I)Z
    .registers 3
    .param p0, "keyCode"    # I

    .prologue
    const/4 v0, 0x1

    .line 721
    packed-switch p0, :pswitch_data_14

    .line 729
    invoke-static {p0}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static {p0}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v1

    if-eqz v1, :cond_11

    :cond_10
    :goto_10
    :pswitch_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10

    .line 721
    nop

    :pswitch_data_14
    .packed-switch 0x13
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 742
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 744
    iget-object v0, p0, mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {p0}, getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 745
    invoke-direct {p0}, logInputDevices()V

    .line 746
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 750
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 752
    iget-object v0, p0, mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 753
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 41
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 237
    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v36

    .line 238
    .local v36, "w":I
    div-int/lit8 v28, v36, 0x7

    .line 239
    .local v28, "itemW":I
    move-object/from16 v0, p0

    iget-object v2, v0, mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v2, v2

    add-int/lit8 v21, v2, 0x1

    .line 240
    .local v21, "base":I
    move-object/from16 v0, p0

    iget v0, v0, mHeaderBottom:I

    move/from16 v22, v0

    .line 242
    .local v22, "bottom":I
    move-object/from16 v0, p0

    iget-object v2, v0, mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 245
    .local v19, "NP":I
    move-object/from16 v0, p0

    iget v2, v0, mActivePointerId:I

    if-ltz v2, :cond_258

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, mPointers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v7, v0, mActivePointerId:I

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 248
    .local v34, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    const/4 v3, 0x0

    const/4 v4, 0x0

    add-int/lit8 v2, v28, -0x1

    int-to-float v5, v2

    move/from16 v0, v22

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v2, v0, mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v7, "P: "

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v7, v0, mCurNumPointers:I

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v7, " / "

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v7, v0, mMaxNumPointers:I

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(I)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v7, 0x3f800000    # 1.0f

    move/from16 v0, v21

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v11, v0, mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 254
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$000(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v18

    .line 255
    .local v18, "N":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, mCurDown:Z

    if-eqz v2, :cond_88

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v2

    if-nez v2, :cond_8a

    :cond_88
    if-nez v18, :cond_2a4

    .line 256
    :cond_8a
    move/from16 v0, v28

    int-to-float v3, v0

    const/4 v4, 0x0

    mul-int/lit8 v2, v28, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v5, v2

    move/from16 v0, v22

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v2, v0, mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v7, "X: "

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v7

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v10, 0x1

    invoke-virtual {v2, v7, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v7, v28, 0x1

    int-to-float v7, v7

    move/from16 v0, v21

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v11, v0, mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 260
    mul-int/lit8 v2, v28, 0x2

    int-to-float v3, v2

    const/4 v4, 0x0

    mul-int/lit8 v2, v28, 0x3

    add-int/lit8 v2, v2, -0x1

    int-to-float v5, v2

    move/from16 v0, v22

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v7, "Y: "

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v7

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v10, 0x1

    invoke-virtual {v2, v7, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v7, v28, 0x2

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    move/from16 v0, v21

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v11, v0, mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 281
    :goto_10e
    mul-int/lit8 v2, v28, 0x3

    int-to-float v3, v2

    const/4 v4, 0x0

    mul-int/lit8 v2, v28, 0x4

    add-int/lit8 v2, v2, -0x1

    int-to-float v5, v2

    move/from16 v0, v22

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v2, v0, mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v7, "Xv: "

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mXVelocity:F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$500(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v7

    const/4 v10, 0x3

    invoke-virtual {v2, v7, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v7, v28, 0x3

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    move/from16 v0, v21

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v11, v0, mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 286
    mul-int/lit8 v2, v28, 0x4

    int-to-float v3, v2

    const/4 v4, 0x0

    mul-int/lit8 v2, v28, 0x5

    add-int/lit8 v2, v2, -0x1

    int-to-float v5, v2

    move/from16 v0, v22

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v7, "Yv: "

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mYVelocity:F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$600(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v7

    const/4 v10, 0x3

    invoke-virtual {v2, v7, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v7, v28, 0x4

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    move/from16 v0, v21

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v11, v0, mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 291
    mul-int/lit8 v2, v28, 0x5

    int-to-float v3, v2

    const/4 v4, 0x0

    mul-int/lit8 v2, v28, 0x6

    add-int/lit8 v2, v2, -0x1

    int-to-float v5, v2

    move/from16 v0, v22

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 292
    mul-int/lit8 v2, v28, 0x5

    int-to-float v3, v2

    const/4 v4, 0x0

    mul-int/lit8 v2, v28, 0x5

    int-to-float v2, v2

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v7

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    move/from16 v0, v28

    int-to-float v10, v0

    mul-float/2addr v7, v10

    add-float/2addr v2, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v5, v2, v7

    move/from16 v0, v22

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, mTextLevelPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v7, "Prs: "

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v7

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/4 v10, 0x2

    invoke-virtual {v2, v7, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v7, v28, 0x5

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    move/from16 v0, v21

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v11, v0, mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 298
    mul-int/lit8 v2, v28, 0x6

    int-to-float v3, v2

    const/4 v4, 0x0

    move/from16 v0, v36

    int-to-float v5, v0

    move/from16 v0, v22

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, mTextBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 299
    mul-int/lit8 v2, v28, 0x6

    int-to-float v3, v2

    const/4 v4, 0x0

    mul-int/lit8 v2, v28, 0x6

    int-to-float v2, v2

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v7

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->size:F

    move/from16 v0, v28

    int-to-float v10, v0

    mul-float/2addr v7, v10

    add-float/2addr v2, v7

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v5, v2, v7

    move/from16 v0, v22

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, mTextLevelPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v7, "Size: "

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v7

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->size:F

    const/4 v10, 0x2

    invoke-virtual {v2, v7, v10}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v7, v28, 0x6

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    move/from16 v0, v21

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v11, v0, mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 307
    .end local v18    # "N":I
    .end local v34    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_258
    const/16 v31, 0x0

    .local v31, "p":I
    :goto_25a
    move/from16 v0, v31

    move/from16 v1, v19

    if-ge v0, v1, :cond_69b

    .line 308
    move-object/from16 v0, p0

    iget-object v2, v0, mPointers:Ljava/util/ArrayList;

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 311
    .restart local v34    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCount:I
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$000(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v18

    .line 312
    .restart local v18    # "N":I
    const/4 v3, 0x0

    .local v3, "lastX":F
    const/4 v4, 0x0

    .line 313
    .local v4, "lastY":F
    const/16 v26, 0x0

    .line 314
    .local v26, "haveLast":Z
    const/16 v23, 0x0

    .line 315
    .local v23, "drawn":Z
    move-object/from16 v0, p0

    iget-object v2, v0, mPaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    const/16 v10, 0x80

    const/16 v11, 0xff

    const/16 v12, 0xff

    invoke-virtual {v2, v7, v10, v11, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 316
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_287
    move/from16 v0, v27

    move/from16 v1, v18

    if-ge v0, v1, :cond_3a0

    .line 317
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$300(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v2

    aget v5, v2, v27

    .line 318
    .local v5, "x":F
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$400(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v2

    aget v6, v2, v27

    .line 319
    .local v6, "y":F
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_371

    .line 320
    const/16 v26, 0x0

    .line 316
    :goto_2a1
    add-int/lit8 v27, v27, 0x1

    goto :goto_287

    .line 265
    .end local v3    # "lastX":F
    .end local v4    # "lastY":F
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v23    # "drawn":Z
    .end local v26    # "haveLast":Z
    .end local v27    # "i":I
    .end local v31    # "p":I
    :cond_2a4
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$300(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v2

    add-int/lit8 v7, v18, -0x1

    aget v2, v2, v7

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceX:[F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$300(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v7

    const/4 v10, 0x0

    aget v7, v7, v10

    sub-float v24, v2, v7

    .line 266
    .local v24, "dx":F
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$400(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v2

    add-int/lit8 v7, v18, -0x1

    aget v2, v2, v7

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceY:[F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$400(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F

    move-result-object v7

    const/4 v10, 0x0

    aget v7, v7, v10

    sub-float v25, v2, v7

    .line 267
    .local v25, "dy":F
    move/from16 v0, v28

    int-to-float v3, v0

    const/4 v4, 0x0

    mul-int/lit8 v2, v28, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v5, v2

    move/from16 v0, v22

    int-to-float v6, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v7, v0, mVC:Landroid/view/ViewConfiguration;

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v2, v2, v7

    if-gez v2, :cond_366

    move-object/from16 v0, p0

    iget-object v7, v0, mTextBackgroundPaint:Landroid/graphics/Paint;

    :goto_2e7
    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v7, "dX: "

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const/4 v7, 0x1

    move/from16 v0, v24

    invoke-virtual {v2, v0, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v7, v28, 0x1

    int-to-float v7, v7

    move/from16 v0, v21

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v11, v0, mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 273
    mul-int/lit8 v2, v28, 0x2

    int-to-float v3, v2

    const/4 v4, 0x0

    mul-int/lit8 v2, v28, 0x3

    add-int/lit8 v2, v2, -0x1

    int-to-float v5, v2

    move/from16 v0, v22

    int-to-float v6, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v7, v0, mVC:Landroid/view/ViewConfiguration;

    invoke-virtual {v7}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v2, v2, v7

    if-gez v2, :cond_36c

    move-object/from16 v0, p0

    iget-object v7, v0, mTextBackgroundPaint:Landroid/graphics/Paint;

    :goto_335
    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 276
    move-object/from16 v0, p0

    iget-object v2, v0, mText:Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->clear()Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const-string v7, "dY: "

    invoke-virtual {v2, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(Ljava/lang/String;)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    const/4 v7, 0x1

    move/from16 v0, v25

    invoke-virtual {v2, v0, v7}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->append(FI)Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/PointerLocationView$FasterStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v7, v28, 0x2

    add-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    move/from16 v0, v21

    int-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v11, v0, mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_10e

    .line 267
    :cond_366
    move-object/from16 v0, p0

    iget-object v7, v0, mTextLevelPaint:Landroid/graphics/Paint;

    goto/16 :goto_2e7

    .line 273
    :cond_36c
    move-object/from16 v0, p0

    iget-object v7, v0, mTextLevelPaint:Landroid/graphics/Paint;

    goto :goto_335

    .line 323
    .end local v24    # "dx":F
    .end local v25    # "dy":F
    .restart local v3    # "lastX":F
    .restart local v4    # "lastY":F
    .restart local v5    # "x":F
    .restart local v6    # "y":F
    .restart local v23    # "drawn":Z
    .restart local v26    # "haveLast":Z
    .restart local v27    # "i":I
    .restart local v31    # "p":I
    :cond_371
    if-eqz v26, :cond_393

    .line 324
    move-object/from16 v0, p0

    iget-object v7, v0, mPathPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 325
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mTraceCurrent:[Z
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$700(Lcom/android/internal/widget/PointerLocationView$PointerState;)[Z

    move-result-object v2

    aget-boolean v2, v2, v27

    if-eqz v2, :cond_399

    move-object/from16 v0, p0

    iget-object v0, v0, mCurrentPointPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    .line 326
    .local v32, "paint":Landroid/graphics/Paint;
    :goto_38a
    move-object/from16 v0, p1

    move-object/from16 v1, v32

    invoke-virtual {v0, v3, v4, v1}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 327
    const/16 v23, 0x1

    .line 329
    .end local v32    # "paint":Landroid/graphics/Paint;
    :cond_393
    move v3, v5

    .line 330
    move v4, v6

    .line 331
    const/16 v26, 0x1

    goto/16 :goto_2a1

    .line 325
    :cond_399
    move-object/from16 v0, p0

    iget-object v0, v0, mPaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    goto :goto_38a

    .line 334
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_3a0
    if-eqz v23, :cond_4b6

    .line 336
    move-object/from16 v0, p0

    iget-object v2, v0, mPaint:Landroid/graphics/Paint;

    const/16 v7, 0x80

    const/16 v10, 0x80

    const/4 v11, 0x0

    const/16 v12, 0x80

    invoke-virtual {v2, v7, v10, v11, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 337
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mEstimator:Landroid/view/VelocityTracker$Estimator;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$800(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    const v7, -0x425c28f6    # -0.08f

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker$Estimator;->estimateX(F)F

    move-result v8

    .line 338
    .local v8, "lx":F
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mEstimator:Landroid/view/VelocityTracker$Estimator;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$800(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    const v7, -0x425c28f6    # -0.08f

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker$Estimator;->estimateY(F)F

    move-result v9

    .line 339
    .local v9, "ly":F
    const/16 v27, -0x3

    :goto_3c8
    const/4 v2, 0x2

    move/from16 v0, v27

    if-gt v0, v2, :cond_3fb

    .line 340
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mEstimator:Landroid/view/VelocityTracker$Estimator;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$800(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    move/from16 v0, v27

    int-to-float v7, v0

    const v10, 0x3ca3d70a    # 0.02f

    mul-float/2addr v7, v10

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker$Estimator;->estimateX(F)F

    move-result v5

    .line 341
    .restart local v5    # "x":F
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mEstimator:Landroid/view/VelocityTracker$Estimator;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$800(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    move/from16 v0, v27

    int-to-float v7, v0

    const v10, 0x3ca3d70a    # 0.02f

    mul-float/2addr v7, v10

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker$Estimator;->estimateY(F)F

    move-result v6

    .line 342
    .restart local v6    # "y":F
    move-object/from16 v0, p0

    iget-object v12, v0, mPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    move v10, v5

    move v11, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 343
    move v8, v5

    .line 344
    move v9, v6

    .line 339
    add-int/lit8 v27, v27, 0x1

    goto :goto_3c8

    .line 348
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_3fb
    move-object/from16 v0, p0

    iget-object v2, v0, mPaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    const/16 v10, 0xff

    const/16 v11, 0x40

    const/16 v12, 0x80

    invoke-virtual {v2, v7, v10, v11, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 349
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mXVelocity:F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$500(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v2

    const/high16 v7, 0x41800000    # 16.0f

    mul-float v37, v2, v7

    .line 350
    .local v37, "xVel":F
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mYVelocity:F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$600(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v2

    const/high16 v7, 0x41800000    # 16.0f

    mul-float v38, v2, v7

    .line 351
    .local v38, "yVel":F
    add-float v13, v3, v37

    add-float v14, v4, v38

    move-object/from16 v0, p0

    iget-object v15, v0, mPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v11, v3

    move v12, v4

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v2, v0, mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_4b6

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, mPaint:Landroid/graphics/Paint;

    const/16 v7, 0x80

    const/4 v10, 0x0

    const/16 v11, 0x80

    const/16 v12, 0x80

    invoke-virtual {v2, v7, v10, v11, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 356
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltEstimator:Landroid/view/VelocityTracker$Estimator;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$900(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    const v7, -0x425c28f6    # -0.08f

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker$Estimator;->estimateX(F)F

    move-result v8

    .line 357
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltEstimator:Landroid/view/VelocityTracker$Estimator;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$900(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    const v7, -0x425c28f6    # -0.08f

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker$Estimator;->estimateY(F)F

    move-result v9

    .line 358
    const/16 v27, -0x3

    :goto_455
    const/4 v2, 0x2

    move/from16 v0, v27

    if-gt v0, v2, :cond_488

    .line 359
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltEstimator:Landroid/view/VelocityTracker$Estimator;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$900(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    move/from16 v0, v27

    int-to-float v7, v0

    const v10, 0x3ca3d70a    # 0.02f

    mul-float/2addr v7, v10

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker$Estimator;->estimateX(F)F

    move-result v5

    .line 360
    .restart local v5    # "x":F
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltEstimator:Landroid/view/VelocityTracker$Estimator;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$900(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    move/from16 v0, v27

    int-to-float v7, v0

    const v10, 0x3ca3d70a    # 0.02f

    mul-float/2addr v7, v10

    invoke-virtual {v2, v7}, Landroid/view/VelocityTracker$Estimator;->estimateY(F)F

    move-result v6

    .line 361
    .restart local v6    # "y":F
    move-object/from16 v0, p0

    iget-object v12, v0, mPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    move v10, v5

    move v11, v6

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 362
    move v8, v5

    .line 363
    move v9, v6

    .line 358
    add-int/lit8 v27, v27, 0x1

    goto :goto_455

    .line 366
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_488
    move-object/from16 v0, p0

    iget-object v2, v0, mPaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    const/16 v10, 0x40

    const/16 v11, 0xff

    const/16 v12, 0x80

    invoke-virtual {v2, v7, v10, v11, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 367
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltXVelocity:F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1000(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v2

    const/high16 v7, 0x41800000    # 16.0f

    mul-float v37, v2, v7

    .line 368
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltYVelocity:F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1100(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v2

    const/high16 v7, 0x41800000    # 16.0f

    mul-float v38, v2, v7

    .line 369
    add-float v13, v3, v37

    add-float v14, v4, v38

    move-object/from16 v0, p0

    iget-object v15, v0, mPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    move v11, v3

    move v12, v4

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 373
    .end local v8    # "lx":F
    .end local v9    # "ly":F
    .end local v37    # "xVel":F
    .end local v38    # "yVel":F
    :cond_4b6
    move-object/from16 v0, p0

    iget-boolean v2, v0, mCurDown:Z

    if-eqz v2, :cond_66d

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v2

    if-eqz v2, :cond_66d

    .line 375
    const/4 v11, 0x0

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual/range {p0 .. p0}, getWidth()I

    move-result v2

    int-to-float v13, v2

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v14, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iget-object v15, v0, mTargetPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 376
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v11, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    const/4 v12, 0x0

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v13, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual/range {p0 .. p0}, getHeight()I

    move-result v2

    int-to-float v14, v2

    move-object/from16 v0, p0

    iget-object v15, v0, mTargetPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 379
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v2, v7

    float-to-int v0, v2

    move/from16 v33, v0

    .line 380
    .local v33, "pressureLevel":I
    move-object/from16 v0, p0

    iget-object v2, v0, mPaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    const/16 v10, 0xff

    move/from16 v0, v33

    rsub-int v11, v0, 0xff

    move/from16 v0, v33

    invoke-virtual {v2, v7, v0, v10, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 381
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v7

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iget-object v10, v0, mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v10}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v2, v0, mPaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    move/from16 v0, v33

    rsub-int v10, v0, 0xff

    const/16 v11, 0x80

    move/from16 v0, v33

    invoke-virtual {v2, v7, v0, v10, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 385
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v13, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v14, v2, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v15, v2, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v0, v2, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v17}, drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v2, v0, mPaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    const/16 v10, 0x80

    move/from16 v0, v33

    rsub-int v11, v0, 0xff

    move/from16 v0, v33

    invoke-virtual {v2, v7, v0, v10, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 390
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v13, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v14, v2, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v15, v2, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v0, v2, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v17}, drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 394
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    const v7, 0x3f333333    # 0.7f

    mul-float v20, v2, v7

    .line 395
    .local v20, "arrowSize":F
    const/high16 v2, 0x41a00000    # 20.0f

    cmpg-float v2, v20, v2

    if-gez v2, :cond_5b9

    .line 396
    const/high16 v20, 0x41a00000    # 20.0f

    .line 398
    :cond_5b9
    move-object/from16 v0, p0

    iget-object v2, v0, mPaint:Landroid/graphics/Paint;

    const/16 v7, 0xff

    const/16 v10, 0xff

    const/4 v11, 0x0

    move/from16 v0, v33

    invoke-virtual {v2, v7, v0, v10, v11}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 399
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    move/from16 v0, v20

    float-to-double v12, v0

    mul-double/2addr v10, v12

    double-to-float v0, v10

    move/from16 v29, v0

    .line 401
    .local v29, "orientationVectorX":F
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    neg-double v10, v10

    move/from16 v0, v20

    float-to-double v12, v0

    mul-double/2addr v10, v12

    double-to-float v0, v10

    move/from16 v30, v0

    .line 403
    .local v30, "orientationVectorY":F
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mToolType:I
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1200(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v2

    const/4 v7, 0x2

    if-eq v2, v7, :cond_5fa

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mToolType:I
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1200(Lcom/android/internal/widget/PointerLocationView$PointerState;)I

    move-result v2

    const/4 v7, 0x4

    if-ne v2, v7, :cond_671

    .line 406
    :cond_5fa
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v11, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v12, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float v13, v2, v29

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float v14, v2, v30

    move-object/from16 v0, p0

    iget-object v15, v0, mPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 421
    :goto_61f
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    const/16 v7, 0x19

    invoke-virtual {v2, v7}, Landroid/view/MotionEvent$PointerCoords;->getAxisValue(I)F

    move-result v2

    float-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    double-to-float v0, v10

    move/from16 v35, v0

    .line 423
    .local v35, "tiltScale":F
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v7, v29, v35

    add-float/2addr v2, v7

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v7

    iget v7, v7, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v10, v30, v35

    add-float/2addr v7, v10

    const/high16 v10, 0x40400000    # 3.0f

    move-object/from16 v0, p0

    iget-object v11, v0, mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 429
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mHasBoundingBox:Z
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1300(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v2

    if-eqz v2, :cond_66d

    .line 430
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingLeft:F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1400(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v11

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingTop:F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1500(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v12

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingRight:F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1600(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v13

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingBottom:F
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1700(Lcom/android/internal/widget/PointerLocationView$PointerState;)F

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, mPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 307
    .end local v20    # "arrowSize":F
    .end local v29    # "orientationVectorX":F
    .end local v30    # "orientationVectorY":F
    .end local v33    # "pressureLevel":I
    .end local v35    # "tiltScale":F
    :cond_66d
    add-int/lit8 v31, v31, 0x1

    goto/16 :goto_25a

    .line 412
    .restart local v20    # "arrowSize":F
    .restart local v29    # "orientationVectorX":F
    .restart local v30    # "orientationVectorY":F
    .restart local v33    # "pressureLevel":I
    :cond_671
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float v11, v2, v29

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float v12, v2, v30

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float v13, v2, v29

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v34 .. v34}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v2

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float v14, v2, v30

    move-object/from16 v0, p0

    iget-object v15, v0, mPaint:Landroid/graphics/Paint;

    move-object/from16 v10, p1

    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_61f

    .line 435
    .end local v3    # "lastX":F
    .end local v4    # "lastY":F
    .end local v18    # "N":I
    .end local v20    # "arrowSize":F
    .end local v23    # "drawn":Z
    .end local v26    # "haveLast":Z
    .end local v27    # "i":I
    .end local v29    # "orientationVectorX":F
    .end local v30    # "orientationVectorY":F
    .end local v33    # "pressureLevel":I
    .end local v34    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_69b
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 684
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    .line 685
    .local v0, "source":I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_d

    .line 686
    invoke-virtual {p0, p1}, onPointerEvent(Landroid/view/MotionEvent;)V

    .line 694
    :goto_b
    const/4 v1, 0x1

    return v1

    .line 687
    :cond_d
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_17

    .line 688
    const-string v1, "Joystick"

    invoke-direct {p0, v1, p1}, logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    goto :goto_b

    .line 689
    :cond_17
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_21

    .line 690
    const-string v1, "Position"

    invoke-direct {p0, v1, p1}, logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    goto :goto_b

    .line 692
    :cond_21
    const-string v1, "Generic"

    invoke-direct {p0, v1, p1}, logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    goto :goto_b
.end method

.method public onInputDeviceAdded(I)V
    .registers 3
    .param p1, "deviceId"    # I

    .prologue
    .line 757
    const-string v0, "Device Added"

    invoke-direct {p0, p1, v0}, logInputDeviceState(ILjava/lang/String;)V

    .line 758
    return-void
.end method

.method public onInputDeviceChanged(I)V
    .registers 3
    .param p1, "deviceId"    # I

    .prologue
    .line 762
    const-string v0, "Device Changed"

    invoke-direct {p0, p1, v0}, logInputDeviceState(ILjava/lang/String;)V

    .line 763
    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .registers 3
    .param p1, "deviceId"    # I

    .prologue
    .line 767
    const-string v0, "Device Removed"

    invoke-direct {p0, p1, v0}, logInputDeviceState(ILjava/lang/String;)V

    .line 768
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 699
    invoke-static {p1}, shouldLogKey(I)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 700
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    .line 701
    .local v0, "repeatCount":I
    if-nez v0, :cond_26

    .line 702
    const-string v1, "Pointer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key Down: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :goto_24
    const/4 v1, 0x1

    .line 708
    .end local v0    # "repeatCount":I
    :goto_25
    return v1

    .line 704
    .restart local v0    # "repeatCount":I
    :cond_26
    const-string v1, "Pointer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key Repeat #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 708
    .end local v0    # "repeatCount":I
    :cond_49
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_25
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 713
    invoke-static {p1}, shouldLogKey(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 714
    const-string v0, "Pointer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key Up: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/4 v0, 0x1

    .line 717
    :goto_1f
    return v0

    :cond_20
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1f
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 208
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 209
    iget-object v0, p0, mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 210
    iget-object v0, p0, mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    iget-object v1, p0, mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, mHeaderBottom:I

    .line 218
    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 18
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 547
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 548
    .local v3, "action":I
    move-object/from16 v0, p0

    iget-object v1, v0, mPointers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 550
    .local v10, "NP":I
    if-eqz v3, :cond_13

    and-int/lit16 v1, v3, 0xff

    const/4 v2, 0x5

    if-ne v1, v2, :cond_ca

    .line 552
    :cond_13
    const v1, 0xff00

    and-int/2addr v1, v3

    shr-int/lit8 v13, v1, 0x8

    .line 554
    .local v13, "index":I
    if-nez v3, :cond_55

    .line 555
    const/4 v14, 0x0

    .local v14, "p":I
    :goto_1c
    if-ge v14, v10, :cond_32

    .line 556
    move-object/from16 v0, p0

    iget-object v1, v0, mPointers:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 557
    .local v15, "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    invoke-virtual {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->clearTrace()V

    .line 558
    const/4 v1, 0x0

    # setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$102(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    .line 555
    add-int/lit8 v14, v14, 0x1

    goto :goto_1c

    .line 560
    .end local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_32
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, mCurDown:Z

    .line 561
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, mCurNumPointers:I

    .line 562
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, mMaxNumPointers:I

    .line 563
    move-object/from16 v0, p0

    iget-object v1, v0, mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 564
    move-object/from16 v0, p0

    iget-object v1, v0, mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_55

    .line 565
    move-object/from16 v0, p0

    iget-object v1, v0, mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 569
    .end local v14    # "p":I
    :cond_55
    move-object/from16 v0, p0

    iget v1, v0, mCurNumPointers:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, mCurNumPointers:I

    .line 570
    move-object/from16 v0, p0

    iget v1, v0, mMaxNumPointers:I

    move-object/from16 v0, p0

    iget v2, v0, mCurNumPointers:I

    if-ge v1, v2, :cond_71

    .line 571
    move-object/from16 v0, p0

    iget v1, v0, mCurNumPointers:I

    move-object/from16 v0, p0

    iput v1, v0, mMaxNumPointers:I

    .line 574
    :cond_71
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 575
    .local v6, "id":I
    :goto_77
    if-gt v10, v6, :cond_88

    .line 576
    new-instance v15, Lcom/android/internal/widget/PointerLocationView$PointerState;

    invoke-direct {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;-><init>()V

    .line 577
    .restart local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    move-object/from16 v0, p0

    iget-object v1, v0, mPointers:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    add-int/lit8 v10, v10, 0x1

    .line 579
    goto :goto_77

    .line 581
    .end local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_88
    move-object/from16 v0, p0

    iget v1, v0, mActivePointerId:I

    if-ltz v1, :cond_a2

    move-object/from16 v0, p0

    iget-object v1, v0, mPointers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v2, v0, mActivePointerId:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/PointerLocationView$PointerState;

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z
    invoke-static {v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v1

    if-nez v1, :cond_a6

    .line 583
    :cond_a2
    move-object/from16 v0, p0

    iput v6, v0, mActivePointerId:I

    .line 586
    :cond_a6
    move-object/from16 v0, p0

    iget-object v1, v0, mPointers:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 587
    .restart local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    const/4 v1, 0x1

    # setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$102(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    .line 588
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-static {v1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v11

    .line 589
    .local v11, "device":Landroid/view/InputDevice;
    if-eqz v11, :cond_13e

    const/16 v1, 0x20

    invoke-virtual {v11, v1}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v1

    if-eqz v1, :cond_13e

    const/4 v1, 0x1

    :goto_c7
    # setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mHasBoundingBox:Z
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1302(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    .line 593
    .end local v6    # "id":I
    .end local v11    # "device":Landroid/view/InputDevice;
    .end local v13    # "index":I
    .end local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_ca
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    .line 595
    .local v9, "NI":I
    move-object/from16 v0, p0

    iget-object v1, v0, mVelocity:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 596
    move-object/from16 v0, p0

    iget-object v1, v0, mVelocity:Landroid/view/VelocityTracker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 597
    move-object/from16 v0, p0

    iget-object v1, v0, mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_f6

    .line 598
    move-object/from16 v0, p0

    iget-object v1, v0, mAltVelocity:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 599
    move-object/from16 v0, p0

    iget-object v1, v0, mAltVelocity:Landroid/view/VelocityTracker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 602
    :cond_f6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v8

    .line 603
    .local v8, "N":I
    const/4 v12, 0x0

    .local v12, "historyPos":I
    :goto_fb
    if-ge v12, v8, :cond_14a

    .line 604
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_fe
    if-ge v4, v9, :cond_147

    .line 605
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 606
    .restart local v6    # "id":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, mCurDown:Z

    if-eqz v1, :cond_140

    move-object/from16 v0, p0

    iget-object v1, v0, mPointers:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/PointerLocationView$PointerState;

    move-object v15, v1

    .line 607
    .restart local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :goto_117
    if-eqz v15, :cond_142

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    .line 608
    .local v5, "coords":Landroid/view/MotionEvent$PointerCoords;
    :goto_11d
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v12, v5}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 609
    move-object/from16 v0, p0

    iget-boolean v1, v0, mPrintCoords:Z

    if-eqz v1, :cond_131

    .line 610
    const-string v2, "Pointer"

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    .line 612
    :cond_131
    if-eqz v15, :cond_13b

    .line 613
    iget v1, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v2, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v7, 0x0

    invoke-virtual {v15, v1, v2, v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FFZ)V

    .line 604
    :cond_13b
    add-int/lit8 v4, v4, 0x1

    goto :goto_fe

    .line 589
    .end local v4    # "i":I
    .end local v5    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .end local v8    # "N":I
    .end local v9    # "NI":I
    .end local v12    # "historyPos":I
    .restart local v11    # "device":Landroid/view/InputDevice;
    .restart local v13    # "index":I
    :cond_13e
    const/4 v1, 0x0

    goto :goto_c7

    .line 606
    .end local v11    # "device":Landroid/view/InputDevice;
    .end local v13    # "index":I
    .end local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    .restart local v4    # "i":I
    .restart local v8    # "N":I
    .restart local v9    # "NI":I
    .restart local v12    # "historyPos":I
    :cond_140
    const/4 v15, 0x0

    goto :goto_117

    .line 607
    .restart local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_142
    move-object/from16 v0, p0

    iget-object v5, v0, mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    goto :goto_11d

    .line 603
    .end local v6    # "id":I
    .end local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_147
    add-int/lit8 v12, v12, 0x1

    goto :goto_fb

    .line 617
    .end local v4    # "i":I
    :cond_14a
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_14b
    if-ge v4, v9, :cond_218

    .line 618
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 619
    .restart local v6    # "id":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, mCurDown:Z

    if-eqz v1, :cond_20f

    move-object/from16 v0, p0

    iget-object v1, v0, mPointers:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/PointerLocationView$PointerState;

    move-object v15, v1

    .line 620
    .restart local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :goto_164
    if-eqz v15, :cond_212

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v5

    .line 621
    .restart local v5    # "coords":Landroid/view/MotionEvent$PointerCoords;
    :goto_16a
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 622
    move-object/from16 v0, p0

    iget-boolean v1, v0, mPrintCoords:Z

    if-eqz v1, :cond_17e

    .line 623
    const-string v2, "Pointer"

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    invoke-direct/range {v1 .. v7}, logCoords(Ljava/lang/String;IILandroid/view/MotionEvent$PointerCoords;ILandroid/view/MotionEvent;)V

    .line 625
    :cond_17e
    if-eqz v15, :cond_20b

    .line 626
    iget v1, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v2, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    const/4 v7, 0x1

    invoke-virtual {v15, v1, v2, v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FFZ)V

    .line 627
    move-object/from16 v0, p0

    iget-object v1, v0, mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    # setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mXVelocity:F
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$502(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 628
    move-object/from16 v0, p0

    iget-object v1, v0, mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    # setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mYVelocity:F
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$602(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 629
    move-object/from16 v0, p0

    iget-object v1, v0, mVelocity:Landroid/view/VelocityTracker;

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mEstimator:Landroid/view/VelocityTracker$Estimator;
    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$800(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/view/VelocityTracker;->getEstimator(ILandroid/view/VelocityTracker$Estimator;)Z

    .line 630
    move-object/from16 v0, p0

    iget-object v1, v0, mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_1d0

    .line 631
    move-object/from16 v0, p0

    iget-object v1, v0, mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    # setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltXVelocity:F
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1002(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 632
    move-object/from16 v0, p0

    iget-object v1, v0, mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v1

    # setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltYVelocity:F
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1102(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 633
    move-object/from16 v0, p0

    iget-object v1, v0, mAltVelocity:Landroid/view/VelocityTracker;

    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mAltEstimator:Landroid/view/VelocityTracker$Estimator;
    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$900(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/view/VelocityTracker;->getEstimator(ILandroid/view/VelocityTracker$Estimator;)Z

    .line 635
    :cond_1d0
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    # setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mToolType:I
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1202(Lcom/android/internal/widget/PointerLocationView$PointerState;I)I

    .line 637
    # getter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mHasBoundingBox:Z
    invoke-static {v15}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1300(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z

    move-result v1

    if-eqz v1, :cond_20b

    .line 638
    const/16 v1, 0x20

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    # setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingLeft:F
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1402(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 639
    const/16 v1, 0x21

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    # setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingTop:F
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1502(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 640
    const/16 v1, 0x22

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    # setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingRight:F
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1602(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 641
    const/16 v1, 0x23

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v1

    # setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mBoundingBottom:F
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$1702(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F

    .line 617
    :cond_20b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_14b

    .line 619
    .end local v5    # "coords":Landroid/view/MotionEvent$PointerCoords;
    .end local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_20f
    const/4 v15, 0x0

    goto/16 :goto_164

    .line 620
    .restart local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_212
    move-object/from16 v0, p0

    iget-object v5, v0, mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    goto/16 :goto_16a

    .line 646
    .end local v6    # "id":I
    .end local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_218
    const/4 v1, 0x1

    if-eq v3, v1, :cond_223

    const/4 v1, 0x3

    if-eq v3, v1, :cond_223

    and-int/lit16 v1, v3, 0xff

    const/4 v2, 0x6

    if-ne v1, v2, :cond_24d

    .line 649
    :cond_223
    const v1, 0xff00

    and-int/2addr v1, v3

    shr-int/lit8 v13, v1, 0x8

    .line 652
    .restart local v13    # "index":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 653
    .restart local v6    # "id":I
    move-object/from16 v0, p0

    iget-object v1, v0, mPointers:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/PointerLocationView$PointerState;

    .line 654
    .restart local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    const/4 v1, 0x0

    # setter for: Lcom/android/internal/widget/PointerLocationView$PointerState;->mCurDown:Z
    invoke-static {v15, v1}, Lcom/android/internal/widget/PointerLocationView$PointerState;->access$102(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z

    .line 656
    const/4 v1, 0x1

    if-eq v3, v1, :cond_243

    const/4 v1, 0x3

    if-ne v3, v1, :cond_251

    .line 658
    :cond_243
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, mCurDown:Z

    .line 659
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, mCurNumPointers:I

    .line 669
    .end local v6    # "id":I
    .end local v13    # "index":I
    .end local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_24d
    :goto_24d
    invoke-virtual/range {p0 .. p0}, invalidate()V

    .line 670
    return-void

    .line 661
    .restart local v6    # "id":I
    .restart local v13    # "index":I
    .restart local v15    # "ps":Lcom/android/internal/widget/PointerLocationView$PointerState;
    :cond_251
    move-object/from16 v0, p0

    iget v1, v0, mCurNumPointers:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, mCurNumPointers:I

    .line 662
    move-object/from16 v0, p0

    iget v1, v0, mActivePointerId:I

    if-ne v1, v6, :cond_26e

    .line 663
    if-nez v13, :cond_277

    const/4 v1, 0x1

    :goto_264
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, mActivePointerId:I

    .line 665
    :cond_26e
    const/high16 v1, 0x7fc00000    # NaNf

    const/high16 v2, 0x7fc00000    # NaNf

    const/4 v7, 0x0

    invoke-virtual {v15, v1, v2, v7}, Lcom/android/internal/widget/PointerLocationView$PointerState;->addTrace(FFZ)V

    goto :goto_24d

    .line 663
    :cond_277
    const/4 v1, 0x0

    goto :goto_264
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 674
    invoke-virtual {p0, p1}, onPointerEvent(Landroid/view/MotionEvent;)V

    .line 676
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, isFocused()Z

    move-result v0

    if-nez v0, :cond_12

    .line 677
    invoke-virtual {p0}, requestFocus()Z

    .line 679
    :cond_12
    const/4 v0, 0x1

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 736
    const-string v0, "Trackball"

    invoke-direct {p0, v0, p1}, logMotionEvent(Ljava/lang/String;Landroid/view/MotionEvent;)V

    .line 737
    const/4 v0, 0x1

    return v0
.end method

.method public setPrintCoords(Z)V
    .registers 2
    .param p1, "state"    # Z

    .prologue
    .line 203
    iput-boolean p1, p0, mPrintCoords:Z

    .line 204
    return-void
.end method
