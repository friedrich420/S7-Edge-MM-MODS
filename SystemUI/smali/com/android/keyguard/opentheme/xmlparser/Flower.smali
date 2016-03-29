.class public Lcom/android/keyguard/opentheme/xmlparser/Flower;
.super Ljava/lang/Object;
.source "Flower.java"


# instance fields
.field public cx:F

.field public cy:F

.field public flowerKind:I

.field public flowerSize:I

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

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->flowerKind:I

    .line 13
    iput v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->flowerSize:I

    .line 19
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->mRandom:Ljava/util/Random;

    .line 33
    iput-object p1, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->mContext:Landroid/content/Context;

    .line 34
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->mRandom:Ljava/util/Random;

    iget-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/opentheme/common/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, -0x20

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->cx:F

    .line 35
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->mRandom:Ljava/util/Random;

    iget-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/opentheme/common/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->cy:F

    .line 37
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->mRandom:Ljava/util/Random;

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->mXSpeed:I

    .line 38
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->mRandom:Ljava/util/Random;

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->mYSpeed:I

    .line 40
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->mRandom:Ljava/util/Random;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->flowerKind:I

    .line 41
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->mRandom:Ljava/util/Random;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->flowerSize:I

    .line 42
    iput v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->rotate:I

    .line 43
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->mRandom:Ljava/util/Random;

    iget-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/opentheme/common/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, -0x20

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->cx:F

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->cy:F

    .line 66
    return-void
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->cx:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->cx:F

    iget-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/opentheme/common/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->cy:F

    iget-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->mContext:Landroid/content/Context;

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
    iget v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->cx:F

    iget v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->mXSpeed:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->cx:F

    .line 47
    iget v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->cy:F

    iget v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->mYSpeed:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->cy:F

    .line 49
    iget v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->rotate:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->rotate:I

    .line 51
    invoke-virtual {p0}, Lcom/android/keyguard/opentheme/xmlparser/Flower;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/keyguard/opentheme/xmlparser/Flower;->clear()V

    .line 54
    :cond_0
    iget v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->rotate:I

    const/16 v1, 0x168

    if-lt v0, v1, :cond_1

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Flower;->rotate:I

    .line 56
    :cond_1
    return-void
.end method
