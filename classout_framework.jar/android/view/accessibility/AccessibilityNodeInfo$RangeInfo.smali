.class public final Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RangeInfo"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa

.field public static final RANGE_TYPE_FLOAT:I = 0x1

.field public static final RANGE_TYPE_INT:I = 0x0

.field public static final RANGE_TYPE_PERCENT:I = 0x2

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrent:F

.field private mMax:F

.field private mMin:F

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3694
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>(IFFF)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "min"    # F
    .param p3, "max"    # F
    .param p4, "current"    # F

    .prologue
    .line 3734
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3735
    iput p1, p0, mType:I

    .line 3736
    iput p2, p0, mMin:F

    .line 3737
    iput p3, p0, mMax:F

    .line 3738
    iput p4, p0, mCurrent:F

    .line 3739
    return-void
.end method

.method private clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 3790
    const/4 v0, 0x0

    iput v0, p0, mType:I

    .line 3791
    iput v1, p0, mMin:F

    .line 3792
    iput v1, p0, mMax:F

    .line 3793
    iput v1, p0, mCurrent:F

    .line 3794
    return-void
.end method

.method public static obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    .registers 6
    .param p0, "type"    # I
    .param p1, "min"    # F
    .param p2, "max"    # F
    .param p3, "current"    # F

    .prologue
    .line 3722
    sget-object v1, sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .line 3723
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    if-eqz v0, :cond_b

    .end local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    :goto_a
    return-object v0

    .restart local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    :cond_b
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .end local v0    # "info":Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    invoke-direct {v0, p0, p1, p2, p3}, <init>(IFFF)V

    goto :goto_a
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;
    .registers 5
    .param p0, "other"    # Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    .prologue
    .line 3710
    iget v0, p0, mType:I

    iget v1, p0, mMin:F

    iget v2, p0, mMax:F

    iget v3, p0, mCurrent:F

    invoke-static {v0, v1, v2, v3}, obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCurrent()F
    .registers 2

    .prologue
    .line 3778
    iget v0, p0, mCurrent:F

    return v0
.end method

.method public getMax()F
    .registers 2

    .prologue
    .line 3769
    iget v0, p0, mMax:F

    return v0
.end method

.method public getMin()F
    .registers 2

    .prologue
    .line 3760
    iget v0, p0, mMin:F

    return v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 3751
    iget v0, p0, mType:I

    return v0
.end method

.method recycle()V
    .registers 2

    .prologue
    .line 3785
    invoke-direct {p0}, clear()V

    .line 3786
    sget-object v0, sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 3787
    return-void
.end method
