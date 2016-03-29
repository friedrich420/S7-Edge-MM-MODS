.class public Lcom/android/keyguard/opentheme/xmlparser/RainView;
.super Landroid/view/View;
.source "RainView.java"

# interfaces
.implements Lcom/android/keyguard/opentheme/common/LockscreenCallback;


# static fields
.field public static G:I

.field private static MAX_POOL_SIZE:I


# instance fields
.field list:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/keyguard/opentheme/xmlparser/Rain;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPaint:Landroid/graphics/Paint;

.field private mRainPool:[Lcom/android/keyguard/opentheme/xmlparser/Rain;

.field private rainline:Landroid/graphics/Bitmap;

.field private refresh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x3

    sput v0, Lcom/android/keyguard/opentheme/xmlparser/RainView;->G:I

    .line 27
    const/16 v0, 0x3c

    sput v0, Lcom/android/keyguard/opentheme/xmlparser/RainView;->MAX_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/opentheme/xmlparser/RainView;->list:Ljava/util/Vector;

    .line 21
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/keyguard/opentheme/xmlparser/RainView;->refresh:Z

    .line 23
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/keyguard/opentheme/xmlparser/RainView;->mPaint:Landroid/graphics/Paint;

    .line 31
    iput-object p1, p0, Lcom/android/keyguard/opentheme/xmlparser/RainView;->mContext:Landroid/content/Context;

    .line 32
    sget v2, Lcom/android/keyguard/opentheme/xmlparser/RainView;->MAX_POOL_SIZE:I

    new-array v2, v2, [Lcom/android/keyguard/opentheme/xmlparser/Rain;

    iput-object v2, p0, Lcom/android/keyguard/opentheme/xmlparser/RainView;->mRainPool:[Lcom/android/keyguard/opentheme/xmlparser/Rain;

    .line 34
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/opentheme/xmlparser/RainView;->mRainPool:[Lcom/android/keyguard/opentheme/xmlparser/Rain;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 35
    iget-object v2, p0, Lcom/android/keyguard/opentheme/xmlparser/RainView;->mRainPool:[Lcom/android/keyguard/opentheme/xmlparser/Rain;

    new-instance v3, Lcom/android/keyguard/opentheme/xmlparser/Rain;

    invoke-direct {v3, p1}, Lcom/android/keyguard/opentheme/xmlparser/Rain;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/opentheme/xmlparser/RainView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 39
    .local v1, "r":Landroid/content/res/Resources;
    sget v2, Lcom/android/keyguard/R$drawable;->rainline:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/opentheme/xmlparser/RainView;->rainline:Landroid/graphics/Bitmap;

    .line 40
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/keyguard/opentheme/xmlparser/RainView;->mRainPool:[Lcom/android/keyguard/opentheme/xmlparser/Rain;

    .local v0, "arr$":[Lcom/android/keyguard/opentheme/xmlparser/Rain;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 46
    .local v3, "rain":Lcom/android/keyguard/opentheme/xmlparser/Rain;
    iget-object v4, p0, Lcom/android/keyguard/opentheme/xmlparser/RainView;->rainline:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/keyguard/opentheme/xmlparser/RainView;->mContext:Landroid/content/Context;

    iget v6, v3, Lcom/android/keyguard/opentheme/xmlparser/Rain;->x:F

    invoke-static {v5, v6}, Lcom/android/keyguard/opentheme/common/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/keyguard/opentheme/xmlparser/RainView;->mContext:Landroid/content/Context;

    iget v7, v3, Lcom/android/keyguard/opentheme/xmlparser/Rain;->y:F

    invoke-static {v6, v7}, Lcom/android/keyguard/opentheme/common/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/keyguard/opentheme/xmlparser/RainView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 48
    invoke-virtual {v3}, Lcom/android/keyguard/opentheme/xmlparser/Rain;->next()V

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    .end local v3    # "rain":Lcom/android/keyguard/opentheme/xmlparser/Rain;
    :cond_0
    iget-boolean v4, p0, Lcom/android/keyguard/opentheme/xmlparser/RainView;->refresh:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/android/keyguard/opentheme/xmlparser/RainView;->invalidate()V

    .line 53
    :cond_1
    return-void
.end method

.method public screenTurnedOff()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/opentheme/xmlparser/RainView;->refresh:Z

    .line 59
    return-void
.end method

.method public screenTurnedOn()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/opentheme/xmlparser/RainView;->refresh:Z

    .line 65
    invoke-virtual {p0}, Lcom/android/keyguard/opentheme/xmlparser/RainView;->invalidate()V

    .line 66
    return-void
.end method
