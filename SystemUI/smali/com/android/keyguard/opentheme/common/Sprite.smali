.class public Lcom/android/keyguard/opentheme/common/Sprite;
.super Ljava/lang/Object;
.source "Sprite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/opentheme/common/Sprite$SimpleModifier;
    }
.end annotation


# instance fields
.field public currentFrame:I

.field public frameSize:I

.field public height:F

.field private mAngle:F

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mIsRotated:Z

.field private mModifierCount:I

.field private mModifiers:[Lcom/android/keyguard/opentheme/common/SpriteModifier;

.field private mPivotX:F

.field private mPivotY:F

.field private mScale:F

.field public visible:Z

.field public width:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/opentheme/common/Sprite;->visible:Z

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/keyguard/opentheme/common/SpriteModifier;

    iput-object v0, p0, Lcom/android/keyguard/opentheme/common/Sprite;->mModifiers:[Lcom/android/keyguard/opentheme/common/SpriteModifier;

    .line 34
    iput p1, p0, Lcom/android/keyguard/opentheme/common/Sprite;->x:F

    .line 35
    iput p2, p0, Lcom/android/keyguard/opentheme/common/Sprite;->y:F

    .line 36
    iput p3, p0, Lcom/android/keyguard/opentheme/common/Sprite;->width:F

    .line 37
    iput p4, p0, Lcom/android/keyguard/opentheme/common/Sprite;->height:F

    .line 38
    return-void
.end method


# virtual methods
.method public addModifier(Lcom/android/keyguard/opentheme/common/SpriteModifier;)Z
    .locals 3
    .param p1, "modifier"    # Lcom/android/keyguard/opentheme/common/SpriteModifier;

    .prologue
    .line 58
    iget v0, p0, Lcom/android/keyguard/opentheme/common/Sprite;->mModifierCount:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 59
    const/4 v0, 0x0

    .line 64
    :goto_0
    return v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/opentheme/common/Sprite;->mModifiers:[Lcom/android/keyguard/opentheme/common/SpriteModifier;

    iget v1, p0, Lcom/android/keyguard/opentheme/common/Sprite;->mModifierCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/keyguard/opentheme/common/Sprite;->mModifierCount:I

    aput-object p1, v0, v1

    .line 63
    invoke-virtual {p1, p0}, Lcom/android/keyguard/opentheme/common/SpriteModifier;->onCreate(Lcom/android/keyguard/opentheme/common/Sprite;)V

    .line 64
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/keyguard/opentheme/common/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/keyguard/opentheme/common/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/opentheme/common/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    .line 96
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    .line 74
    iget-boolean v0, p0, Lcom/android/keyguard/opentheme/common/Sprite;->visible:Z

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 78
    iget v0, p0, Lcom/android/keyguard/opentheme/common/Sprite;->x:F

    iget v1, p0, Lcom/android/keyguard/opentheme/common/Sprite;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 79
    iget-boolean v0, p0, Lcom/android/keyguard/opentheme/common/Sprite;->mIsRotated:Z

    if-eqz v0, :cond_1

    .line 80
    iget v0, p0, Lcom/android/keyguard/opentheme/common/Sprite;->mAngle:F

    iget v1, p0, Lcom/android/keyguard/opentheme/common/Sprite;->mPivotX:F

    iget v2, p0, Lcom/android/keyguard/opentheme/common/Sprite;->mPivotY:F

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 82
    :cond_1
    iget v0, p0, Lcom/android/keyguard/opentheme/common/Sprite;->mScale:F

    iget v1, p0, Lcom/android/keyguard/opentheme/common/Sprite;->mScale:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 84
    iget v0, p0, Lcom/android/keyguard/opentheme/common/Sprite;->width:F

    iget v1, p0, Lcom/android/keyguard/opentheme/common/Sprite;->height:F

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 86
    iget-object v0, p0, Lcom/android/keyguard/opentheme/common/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/android/keyguard/opentheme/common/Sprite;->currentFrame:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/keyguard/opentheme/common/Sprite;->width:F

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 88
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public onUpdate()V
    .locals 2

    .prologue
    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/keyguard/opentheme/common/Sprite;->mModifierCount:I

    if-ge v0, v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/android/keyguard/opentheme/common/Sprite;->mModifiers:[Lcom/android/keyguard/opentheme/common/SpriteModifier;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/android/keyguard/opentheme/common/SpriteModifier;->onUpdate(Lcom/android/keyguard/opentheme/common/Sprite;)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/content/Context;IIF)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "frameSize"    # I
    .param p4, "scale"    # F

    .prologue
    .line 41
    invoke-static {p1, p2}, Lcom/android/keyguard/opentheme/common/OpenThemeUtil;->loadBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/keyguard/opentheme/common/Sprite;->setBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IF)V

    .line 43
    return-void
.end method

.method public setBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IF)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "frameSize"    # I
    .param p4, "scale"    # F

    .prologue
    .line 46
    iput p3, p0, Lcom/android/keyguard/opentheme/common/Sprite;->frameSize:I

    .line 47
    iput p4, p0, Lcom/android/keyguard/opentheme/common/Sprite;->mScale:F

    .line 48
    iput-object p2, p0, Lcom/android/keyguard/opentheme/common/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    .line 49
    iget-object v0, p0, Lcom/android/keyguard/opentheme/common/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/2addr v0, p3

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/opentheme/common/Sprite;->width:F

    .line 50
    iget-object v0, p0, Lcom/android/keyguard/opentheme/common/Sprite;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/opentheme/common/Sprite;->height:F

    .line 51
    return-void
.end method
