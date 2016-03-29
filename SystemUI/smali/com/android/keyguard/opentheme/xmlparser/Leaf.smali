.class public Lcom/android/keyguard/opentheme/xmlparser/Leaf;
.super Ljava/lang/Object;
.source "Leaf.java"


# instance fields
.field public cx:F

.field public cy:F

.field public leafKind:I

.field public leafSize:I

.field private mContext:Landroid/content/Context;

.field private mRandom:Ljava/util/Random;

.field private mXSpeed:I

.field private mYSpeed:I

.field public rotate:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->leafKind:I

    .line 12
    iput v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->leafSize:I

    .line 18
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->mRandom:Ljava/util/Random;

    .line 32
    iput-object p1, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->mContext:Landroid/content/Context;

    .line 33
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->mRandom:Ljava/util/Random;

    iget-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/opentheme/common/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, -0x20

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->cx:F

    .line 34
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->mRandom:Ljava/util/Random;

    iget-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/opentheme/common/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->cy:F

    .line 36
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->mRandom:Ljava/util/Random;

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->mXSpeed:I

    .line 37
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->mRandom:Ljava/util/Random;

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->mYSpeed:I

    .line 39
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->mRandom:Ljava/util/Random;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->leafKind:I

    .line 40
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->mRandom:Ljava/util/Random;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->leafSize:I

    .line 42
    iput v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->rotate:I

    .line 43
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->mRandom:Ljava/util/Random;

    iget-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/opentheme/common/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, -0x20

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->cx:F

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->cy:F

    .line 66
    return-void
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->cx:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->cx:F

    iget-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/opentheme/common/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->cy:F

    iget-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/opentheme/common/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()V
    .locals 2

    .prologue
    .line 46
    iget v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->cx:F

    iget v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->mXSpeed:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->cx:F

    .line 47
    iget v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->cy:F

    iget v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->mYSpeed:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->cy:F

    .line 49
    iget v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->rotate:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->rotate:I

    .line 51
    invoke-virtual {p0}, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->clear()V

    .line 54
    :cond_0
    iget v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->rotate:I

    const/16 v1, 0x168

    if-lt v0, v1, :cond_1

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Leaf;->rotate:I

    .line 56
    :cond_1
    return-void
.end method
