.class public Landroid/widget/GridLayout$Spec;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation


# static fields
.field static final DEFAULT_WEIGHT:F

.field static final UNDEFINED:Landroid/widget/GridLayout$Spec;


# instance fields
.field final alignment:Landroid/widget/GridLayout$Alignment;

.field final span:Landroid/widget/GridLayout$Interval;

.field final startDefined:Z

.field final weight:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 2520
    const/high16 v0, -0x80000000

    invoke-static {v0}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    sput-object v0, UNDEFINED:Landroid/widget/GridLayout$Spec;

    return-void
.end method

.method private constructor <init>(ZIILandroid/widget/GridLayout$Alignment;F)V
    .registers 8
    .param p1, "startDefined"    # Z
    .param p2, "start"    # I
    .param p3, "size"    # I
    .param p4, "alignment"    # Landroid/widget/GridLayout$Alignment;
    .param p5, "weight"    # F

    .prologue
    .line 2536
    new-instance v0, Landroid/widget/GridLayout$Interval;

    add-int v1, p2, p3

    invoke-direct {v0, p2, v1}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    invoke-direct {p0, p1, v0, p4, p5}, <init>(ZLandroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$Alignment;F)V

    .line 2537
    return-void
.end method

.method synthetic constructor <init>(ZIILandroid/widget/GridLayout$Alignment;FLandroid/widget/GridLayout$1;)V
    .registers 7
    .param p1, "x0"    # Z
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # Landroid/widget/GridLayout$Alignment;
    .param p5, "x4"    # F
    .param p6, "x5"    # Landroid/widget/GridLayout$1;

    .prologue
    .line 2519
    invoke-direct/range {p0 .. p5}, <init>(ZIILandroid/widget/GridLayout$Alignment;F)V

    return-void
.end method

.method private constructor <init>(ZLandroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$Alignment;F)V
    .registers 5
    .param p1, "startDefined"    # Z
    .param p2, "span"    # Landroid/widget/GridLayout$Interval;
    .param p3, "alignment"    # Landroid/widget/GridLayout$Alignment;
    .param p4, "weight"    # F

    .prologue
    .line 2528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2529
    iput-boolean p1, p0, startDefined:Z

    .line 2530
    iput-object p2, p0, span:Landroid/widget/GridLayout$Interval;

    .line 2531
    iput-object p3, p0, alignment:Landroid/widget/GridLayout$Alignment;

    .line 2532
    iput p4, p0, weight:F

    .line 2533
    return-void
.end method

.method static synthetic access$100(Landroid/widget/GridLayout$Spec;Z)Landroid/widget/GridLayout$Alignment;
    .registers 3
    .param p0, "x0"    # Landroid/widget/GridLayout$Spec;
    .param p1, "x1"    # Z

    .prologue
    .line 2519
    invoke-direct {p0, p1}, getAbsoluteAlignment(Z)Landroid/widget/GridLayout$Alignment;

    move-result-object v0

    return-object v0
.end method

.method private getAbsoluteAlignment(Z)Landroid/widget/GridLayout$Alignment;
    .registers 4
    .param p1, "horizontal"    # Z

    .prologue
    .line 2540
    iget-object v0, p0, alignment:Landroid/widget/GridLayout$Alignment;

    sget-object v1, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    if-eq v0, v1, :cond_9

    .line 2541
    iget-object v0, p0, alignment:Landroid/widget/GridLayout$Alignment;

    .line 2546
    :goto_8
    return-object v0

    .line 2543
    :cond_9
    iget v0, p0, weight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_18

    .line 2544
    if-eqz p1, :cond_15

    sget-object v0, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    goto :goto_8

    :cond_15
    sget-object v0, Landroid/widget/GridLayout;->BASELINE:Landroid/widget/GridLayout$Alignment;

    goto :goto_8

    .line 2546
    :cond_18
    sget-object v0, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    goto :goto_8
.end method


# virtual methods
.method final copyWriteAlignment(Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;
    .registers 6
    .param p1, "alignment"    # Landroid/widget/GridLayout$Alignment;

    .prologue
    .line 2554
    new-instance v0, Landroid/widget/GridLayout$Spec;

    iget-boolean v1, p0, startDefined:Z

    iget-object v2, p0, span:Landroid/widget/GridLayout$Interval;

    iget v3, p0, weight:F

    invoke-direct {v0, v1, v2, p1, v3}, <init>(ZLandroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$Alignment;F)V

    return-object v0
.end method

.method final copyWriteSpan(Landroid/widget/GridLayout$Interval;)Landroid/widget/GridLayout$Spec;
    .registers 6
    .param p1, "span"    # Landroid/widget/GridLayout$Interval;

    .prologue
    .line 2550
    new-instance v0, Landroid/widget/GridLayout$Spec;

    iget-boolean v1, p0, startDefined:Z

    iget-object v2, p0, alignment:Landroid/widget/GridLayout$Alignment;

    iget v3, p0, weight:F

    invoke-direct {v0, v1, p1, v2, v3}, <init>(ZLandroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$Alignment;F)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2573
    if-ne p0, p1, :cond_5

    .line 2590
    :cond_4
    :goto_4
    return v1

    .line 2576
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    .line 2577
    goto :goto_4

    :cond_13
    move-object v0, p1

    .line 2580
    check-cast v0, Landroid/widget/GridLayout$Spec;

    .line 2582
    .local v0, "spec":Landroid/widget/GridLayout$Spec;
    iget-object v3, p0, alignment:Landroid/widget/GridLayout$Alignment;

    iget-object v4, v0, alignment:Landroid/widget/GridLayout$Alignment;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    move v1, v2

    .line 2583
    goto :goto_4

    .line 2586
    :cond_22
    iget-object v3, p0, span:Landroid/widget/GridLayout$Interval;

    iget-object v4, v0, span:Landroid/widget/GridLayout$Interval;

    invoke-virtual {v3, v4}, Landroid/widget/GridLayout$Interval;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 2587
    goto :goto_4
.end method

.method final getFlexibility()I
    .registers 3

    .prologue
    .line 2558
    iget-object v0, p0, alignment:Landroid/widget/GridLayout$Alignment;

    sget-object v1, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    if-ne v0, v1, :cond_f

    iget v0, p0, weight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_f

    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x2

    goto :goto_e
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 2595
    iget-object v1, p0, span:Landroid/widget/GridLayout$Interval;

    invoke-virtual {v1}, Landroid/widget/GridLayout$Interval;->hashCode()I

    move-result v0

    .line 2596
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, alignment:Landroid/widget/GridLayout$Alignment;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 2597
    return v0
.end method
