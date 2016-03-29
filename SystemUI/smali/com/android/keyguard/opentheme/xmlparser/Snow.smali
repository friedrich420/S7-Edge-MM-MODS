.class public Lcom/android/keyguard/opentheme/xmlparser/Snow;
.super Ljava/lang/Object;
.source "Snow.java"


# static fields
.field private static final FIXEDALPHAS:[I

.field private static final FIXEDRADIUS:[I


# instance fields
.field public alpha:I

.field public cx:F

.field public cy:F

.field private mContext:Landroid/content/Context;

.field private mRandom:Ljava/util/Random;

.field private mXSpeed:I

.field private mYSpeed:I

.field public radius:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xa

    .line 23
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->FIXEDRADIUS:[I

    .line 30
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->FIXEDALPHAS:[I

    return-void

    .line 23
    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
        0x5
        0x6
    .end array-data

    .line 30
    :array_1
    .array-data 4
        0x66
        0x66
        0x66
        0x80
        0x80
        0x80
        0x80
        0x80
        0x80
        0xff
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->mRandom:Ljava/util/Random;

    .line 45
    iput-object p1, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->mContext:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->mRandom:Ljava/util/Random;

    iget-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/opentheme/common/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, -0x20

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->cx:F

    .line 47
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->mRandom:Ljava/util/Random;

    iget-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/opentheme/common/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->cy:F

    .line 49
    sget-object v0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->FIXEDRADIUS:[I

    iget-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->mRandom:Ljava/util/Random;

    sget-object v2, Lcom/android/keyguard/opentheme/xmlparser/Snow;->FIXEDRADIUS:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget v0, v0, v1

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->radius:I

    .line 50
    sget-object v0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->FIXEDALPHAS:[I

    iget-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->mRandom:Ljava/util/Random;

    sget-object v2, Lcom/android/keyguard/opentheme/xmlparser/Snow;->FIXEDALPHAS:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget v0, v0, v1

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->alpha:I

    .line 52
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->mRandom:Ljava/util/Random;

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->mXSpeed:I

    .line 53
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->mRandom:Ljava/util/Random;

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->mYSpeed:I

    .line 55
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->mRandom:Ljava/util/Random;

    iget-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/opentheme/common/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    add-int/lit8 v1, v1, -0x20

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->cx:F

    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->cy:F

    .line 74
    sget-object v0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->FIXEDALPHAS:[I

    iget-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->mRandom:Ljava/util/Random;

    sget-object v2, Lcom/android/keyguard/opentheme/xmlparser/Snow;->FIXEDALPHAS:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget v0, v0, v1

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->alpha:I

    .line 75
    return-void
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    .line 67
    iget v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->alpha:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->cx:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->cx:F

    iget-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/opentheme/common/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->cy:F

    iget-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->mContext:Landroid/content/Context;

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
    .line 59
    iget v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->cx:F

    iget v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->mXSpeed:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->cx:F

    .line 60
    iget v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->cy:F

    iget v1, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->mYSpeed:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/keyguard/opentheme/xmlparser/Snow;->cy:F

    .line 62
    invoke-virtual {p0}, Lcom/android/keyguard/opentheme/xmlparser/Snow;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/keyguard/opentheme/xmlparser/Snow;->clear()V

    .line 64
    :cond_0
    return-void
.end method
