.class public Lcom/android/keyguard/opentheme/xmlparser/SnowView;
.super Landroid/view/View;
.source "SnowView.java"

# interfaces
.implements Lcom/android/keyguard/opentheme/common/LockscreenCallback;


# static fields
.field private static MAX_POOL_SIZE:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPaint:Landroid/graphics/Paint;

.field private mSnowPool:[Lcom/android/keyguard/opentheme/xmlparser/Snow;

.field private refresh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0x23

    sput v0, Lcom/android/keyguard/opentheme/xmlparser/SnowView;->MAX_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/SnowView;->mPaint:Landroid/graphics/Paint;

    .line 18
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/opentheme/xmlparser/SnowView;->refresh:Z

    .line 23
    iput-object p1, p0, Lcom/android/keyguard/opentheme/xmlparser/SnowView;->mContext:Landroid/content/Context;

    .line 25
    sget v1, Lcom/android/keyguard/opentheme/xmlparser/SnowView;->MAX_POOL_SIZE:I

    new-array v1, v1, [Lcom/android/keyguard/opentheme/xmlparser/Snow;

    iput-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/SnowView;->mSnowPool:[Lcom/android/keyguard/opentheme/xmlparser/Snow;

    .line 26
    iget-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/SnowView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/SnowView;->mSnowPool:[Lcom/android/keyguard/opentheme/xmlparser/Snow;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/android/keyguard/opentheme/xmlparser/SnowView;->mSnowPool:[Lcom/android/keyguard/opentheme/xmlparser/Snow;

    new-instance v2, Lcom/android/keyguard/opentheme/xmlparser/Snow;

    invoke-direct {v2, p1}, Lcom/android/keyguard/opentheme/xmlparser/Snow;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/SnowView;->mSnowPool:[Lcom/android/keyguard/opentheme/xmlparser/Snow;

    .local v0, "arr$":[Lcom/android/keyguard/opentheme/xmlparser/Snow;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 37
    .local v3, "snow":Lcom/android/keyguard/opentheme/xmlparser/Snow;
    iget-object v4, p0, Lcom/android/keyguard/opentheme/xmlparser/SnowView;->mPaint:Landroid/graphics/Paint;

    iget v5, v3, Lcom/android/keyguard/opentheme/xmlparser/Snow;->alpha:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 38
    iget-object v4, p0, Lcom/android/keyguard/opentheme/xmlparser/SnowView;->mContext:Landroid/content/Context;

    iget v5, v3, Lcom/android/keyguard/opentheme/xmlparser/Snow;->cx:F

    invoke-static {v4, v5}, Lcom/android/keyguard/opentheme/common/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/keyguard/opentheme/xmlparser/SnowView;->mContext:Landroid/content/Context;

    iget v6, v3, Lcom/android/keyguard/opentheme/xmlparser/Snow;->cy:F

    invoke-static {v5, v6}, Lcom/android/keyguard/opentheme/common/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/keyguard/opentheme/xmlparser/SnowView;->mContext:Landroid/content/Context;

    iget v7, v3, Lcom/android/keyguard/opentheme/xmlparser/Snow;->radius:I

    int-to-float v7, v7

    invoke-static {v6, v7}, Lcom/android/keyguard/opentheme/common/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/keyguard/opentheme/xmlparser/SnowView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 41
    invoke-virtual {v3}, Lcom/android/keyguard/opentheme/xmlparser/Snow;->next()V

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 43
    .end local v3    # "snow":Lcom/android/keyguard/opentheme/xmlparser/Snow;
    :cond_0
    iget-boolean v4, p0, Lcom/android/keyguard/opentheme/xmlparser/SnowView;->refresh:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/android/keyguard/opentheme/xmlparser/SnowView;->invalidate()V

    .line 46
    :cond_1
    return-void
.end method

.method public screenTurnedOff()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/opentheme/xmlparser/SnowView;->refresh:Z

    .line 52
    return-void
.end method

.method public screenTurnedOn()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/opentheme/xmlparser/SnowView;->refresh:Z

    .line 58
    invoke-virtual {p0}, Lcom/android/keyguard/opentheme/xmlparser/SnowView;->invalidate()V

    .line 59
    return-void
.end method
