.class public final Landroid/view/InputDevice$MotionRange;
.super Ljava/lang/Object;
.source "InputDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MotionRange"
.end annotation


# instance fields
.field private mAxis:I

.field private mFlat:F

.field private mFuzz:F

.field private mMax:F

.field private mMin:F

.field private mResolution:F

.field private mSource:I


# direct methods
.method private constructor <init>(IIFFFFF)V
    .registers 8
    .param p1, "axis"    # I
    .param p2, "source"    # I
    .param p3, "min"    # F
    .param p4, "max"    # F
    .param p5, "flat"    # F
    .param p6, "fuzz"    # F
    .param p7, "resolution"    # F

    .prologue
    .line 815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 816
    iput p1, p0, mAxis:I

    .line 817
    iput p2, p0, mSource:I

    .line 818
    iput p3, p0, mMin:F

    .line 819
    iput p4, p0, mMax:F

    .line 820
    iput p5, p0, mFlat:F

    .line 821
    iput p6, p0, mFuzz:F

    .line 822
    iput p7, p0, mResolution:F

    .line 823
    return-void
.end method

.method synthetic constructor <init>(IIFFFFFLandroid/view/InputDevice$1;)V
    .registers 9
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # F
    .param p4, "x3"    # F
    .param p5, "x4"    # F
    .param p6, "x5"    # F
    .param p7, "x6"    # F
    .param p8, "x7"    # Landroid/view/InputDevice$1;

    .prologue
    .line 805
    invoke-direct/range {p0 .. p7}, <init>(IIFFFFF)V

    return-void
.end method

.method static synthetic access$100(Landroid/view/InputDevice$MotionRange;)I
    .registers 2
    .param p0, "x0"    # Landroid/view/InputDevice$MotionRange;

    .prologue
    .line 805
    iget v0, p0, mAxis:I

    return v0
.end method

.method static synthetic access$200(Landroid/view/InputDevice$MotionRange;)I
    .registers 2
    .param p0, "x0"    # Landroid/view/InputDevice$MotionRange;

    .prologue
    .line 805
    iget v0, p0, mSource:I

    return v0
.end method

.method static synthetic access$400(Landroid/view/InputDevice$MotionRange;)F
    .registers 2
    .param p0, "x0"    # Landroid/view/InputDevice$MotionRange;

    .prologue
    .line 805
    iget v0, p0, mMin:F

    return v0
.end method

.method static synthetic access$500(Landroid/view/InputDevice$MotionRange;)F
    .registers 2
    .param p0, "x0"    # Landroid/view/InputDevice$MotionRange;

    .prologue
    .line 805
    iget v0, p0, mMax:F

    return v0
.end method

.method static synthetic access$600(Landroid/view/InputDevice$MotionRange;)F
    .registers 2
    .param p0, "x0"    # Landroid/view/InputDevice$MotionRange;

    .prologue
    .line 805
    iget v0, p0, mFlat:F

    return v0
.end method

.method static synthetic access$700(Landroid/view/InputDevice$MotionRange;)F
    .registers 2
    .param p0, "x0"    # Landroid/view/InputDevice$MotionRange;

    .prologue
    .line 805
    iget v0, p0, mFuzz:F

    return v0
.end method

.method static synthetic access$800(Landroid/view/InputDevice$MotionRange;)F
    .registers 2
    .param p0, "x0"    # Landroid/view/InputDevice$MotionRange;

    .prologue
    .line 805
    iget v0, p0, mResolution:F

    return v0
.end method


# virtual methods
.method public getAxis()I
    .registers 2

    .prologue
    .line 830
    iget v0, p0, mAxis:I

    return v0
.end method

.method public getFlat()F
    .registers 2

    .prologue
    .line 887
    iget v0, p0, mFlat:F

    return v0
.end method

.method public getFuzz()F
    .registers 2

    .prologue
    .line 899
    iget v0, p0, mFuzz:F

    return v0
.end method

.method public getMax()F
    .registers 2

    .prologue
    .line 867
    iget v0, p0, mMax:F

    return v0
.end method

.method public getMin()F
    .registers 2

    .prologue
    .line 859
    iget v0, p0, mMin:F

    return v0
.end method

.method public getRange()F
    .registers 3

    .prologue
    .line 875
    iget v0, p0, mMax:F

    iget v1, p0, mMin:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getResolution()F
    .registers 2

    .prologue
    .line 907
    iget v0, p0, mResolution:F

    return v0
.end method

.method public getSource()I
    .registers 2

    .prologue
    .line 838
    iget v0, p0, mSource:I

    return v0
.end method

.method public isFromSource(I)Z
    .registers 3
    .param p1, "source"    # I

    .prologue
    .line 851
    invoke-virtual {p0}, getSource()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
