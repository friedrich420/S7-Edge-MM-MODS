.class public Lcom/android/internal/widget/PointerLocationView$PointerState;
.super Ljava/lang/Object;
.source "PointerLocationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PointerLocationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointerState"
.end annotation


# instance fields
.field private mAltEstimator:Landroid/view/VelocityTracker$Estimator;

.field private mAltXVelocity:F

.field private mAltYVelocity:F

.field private mBoundingBottom:F

.field private mBoundingLeft:F

.field private mBoundingRight:F

.field private mBoundingTop:F

.field private mCoords:Landroid/view/MotionEvent$PointerCoords;

.field private mCurDown:Z

.field private mEstimator:Landroid/view/VelocityTracker$Estimator;

.field private mHasBoundingBox:Z

.field private mToolType:I

.field private mTraceCount:I

.field private mTraceCurrent:[Z

.field private mTraceX:[F

.field private mTraceY:[F

.field private mXVelocity:F

.field private mYVelocity:F


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x20

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-array v0, v1, [F

    iput-object v0, p0, mTraceX:[F

    .line 54
    new-array v0, v1, [F

    iput-object v0, p0, mTraceY:[F

    .line 55
    new-array v0, v1, [Z

    iput-object v0, p0, mTraceCurrent:[Z

    .line 62
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, mCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 79
    new-instance v0, Landroid/view/VelocityTracker$Estimator;

    invoke-direct {v0}, Landroid/view/VelocityTracker$Estimator;-><init>()V

    iput-object v0, p0, mEstimator:Landroid/view/VelocityTracker$Estimator;

    .line 80
    new-instance v0, Landroid/view/VelocityTracker$Estimator;

    invoke-direct {v0}, Landroid/view/VelocityTracker$Estimator;-><init>()V

    iput-object v0, p0, mAltEstimator:Landroid/view/VelocityTracker$Estimator;

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/PointerLocationView$PointerState;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .prologue
    .line 51
    iget v0, p0, mTraceCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .prologue
    .line 51
    iget-boolean v0, p0, mCurDown:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .prologue
    .line 51
    iget v0, p0, mAltXVelocity:F

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;
    .param p1, "x1"    # F

    .prologue
    .line 51
    iput p1, p0, mAltXVelocity:F

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, mCurDown:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .prologue
    .line 51
    iget v0, p0, mAltYVelocity:F

    return v0
.end method

.method static synthetic access$1102(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;
    .param p1, "x1"    # F

    .prologue
    .line 51
    iput p1, p0, mAltYVelocity:F

    return p1
.end method

.method static synthetic access$1200(Lcom/android/internal/widget/PointerLocationView$PointerState;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .prologue
    .line 51
    iget v0, p0, mToolType:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/internal/widget/PointerLocationView$PointerState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, mToolType:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/internal/widget/PointerLocationView$PointerState;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .prologue
    .line 51
    iget-boolean v0, p0, mHasBoundingBox:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/internal/widget/PointerLocationView$PointerState;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, mHasBoundingBox:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .prologue
    .line 51
    iget v0, p0, mBoundingLeft:F

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;
    .param p1, "x1"    # F

    .prologue
    .line 51
    iput p1, p0, mBoundingLeft:F

    return p1
.end method

.method static synthetic access$1500(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .prologue
    .line 51
    iget v0, p0, mBoundingTop:F

    return v0
.end method

.method static synthetic access$1502(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;
    .param p1, "x1"    # F

    .prologue
    .line 51
    iput p1, p0, mBoundingTop:F

    return p1
.end method

.method static synthetic access$1600(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .prologue
    .line 51
    iget v0, p0, mBoundingRight:F

    return v0
.end method

.method static synthetic access$1602(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;
    .param p1, "x1"    # F

    .prologue
    .line 51
    iput p1, p0, mBoundingRight:F

    return p1
.end method

.method static synthetic access$1700(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .prologue
    .line 51
    iget v0, p0, mBoundingBottom:F

    return v0
.end method

.method static synthetic access$1702(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;
    .param p1, "x1"    # F

    .prologue
    .line 51
    iput p1, p0, mBoundingBottom:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/MotionEvent$PointerCoords;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .prologue
    .line 51
    iget-object v0, p0, mCoords:Landroid/view/MotionEvent$PointerCoords;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .prologue
    .line 51
    iget-object v0, p0, mTraceX:[F

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/PointerLocationView$PointerState;)[F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .prologue
    .line 51
    iget-object v0, p0, mTraceY:[F

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .prologue
    .line 51
    iget v0, p0, mXVelocity:F

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;
    .param p1, "x1"    # F

    .prologue
    .line 51
    iput p1, p0, mXVelocity:F

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/widget/PointerLocationView$PointerState;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .prologue
    .line 51
    iget v0, p0, mYVelocity:F

    return v0
.end method

.method static synthetic access$602(Lcom/android/internal/widget/PointerLocationView$PointerState;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;
    .param p1, "x1"    # F

    .prologue
    .line 51
    iput p1, p0, mYVelocity:F

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/widget/PointerLocationView$PointerState;)[Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .prologue
    .line 51
    iget-object v0, p0, mTraceCurrent:[Z

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .prologue
    .line 51
    iget-object v0, p0, mEstimator:Landroid/view/VelocityTracker$Estimator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/PointerLocationView$PointerState;)Landroid/view/VelocityTracker$Estimator;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/widget/PointerLocationView$PointerState;

    .prologue
    .line 51
    iget-object v0, p0, mAltEstimator:Landroid/view/VelocityTracker$Estimator;

    return-object v0
.end method


# virtual methods
.method public addTrace(FFZ)V
    .registers 11
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "current"    # Z

    .prologue
    const/4 v6, 0x0

    .line 87
    iget-object v4, p0, mTraceX:[F

    array-length v3, v4

    .line 88
    .local v3, "traceCapacity":I
    iget v4, p0, mTraceCount:I

    if-ne v4, v3, :cond_2b

    .line 89
    mul-int/lit8 v3, v3, 0x2

    .line 90
    new-array v1, v3, [F

    .line 91
    .local v1, "newTraceX":[F
    iget-object v4, p0, mTraceX:[F

    iget v5, p0, mTraceCount:I

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 92
    iput-object v1, p0, mTraceX:[F

    .line 94
    new-array v2, v3, [F

    .line 95
    .local v2, "newTraceY":[F
    iget-object v4, p0, mTraceY:[F

    iget v5, p0, mTraceCount:I

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 96
    iput-object v2, p0, mTraceY:[F

    .line 98
    new-array v0, v3, [Z

    .line 99
    .local v0, "newTraceCurrent":[Z
    iget-object v4, p0, mTraceCurrent:[Z

    iget v5, p0, mTraceCount:I

    invoke-static {v4, v6, v0, v6, v5}, Ljava/lang/System;->arraycopy([ZI[ZII)V

    .line 100
    iput-object v0, p0, mTraceCurrent:[Z

    .line 103
    .end local v0    # "newTraceCurrent":[Z
    .end local v1    # "newTraceX":[F
    .end local v2    # "newTraceY":[F
    :cond_2b
    iget-object v4, p0, mTraceX:[F

    iget v5, p0, mTraceCount:I

    aput p1, v4, v5

    .line 104
    iget-object v4, p0, mTraceY:[F

    iget v5, p0, mTraceCount:I

    aput p2, v4, v5

    .line 105
    iget-object v4, p0, mTraceCurrent:[Z

    iget v5, p0, mTraceCount:I

    aput-boolean p3, v4, v5

    .line 106
    iget v4, p0, mTraceCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, mTraceCount:I

    .line 107
    return-void
.end method

.method public clearTrace()V
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    iput v0, p0, mTraceCount:I

    .line 84
    return-void
.end method
