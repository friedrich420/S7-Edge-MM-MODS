.class public Lcom/android/keyguard/opentheme/common/OpenThemeSpriteView;
.super Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;
.source "OpenThemeSpriteView.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mIsTop:Z

.field protected mSprites:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/opentheme/common/Sprite;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backgroundId"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSpriteView;->mSprites:Ljava/util/ArrayList;

    .line 17
    const-string v0, "OpenThemeSurfaceView"

    iput-object v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSpriteView;->TAG:Ljava/lang/String;

    .line 28
    invoke-static {p1, p2}, Lcom/android/keyguard/opentheme/common/OpenThemeUtil;->loadBackgroundBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 30
    iget-object v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSpriteView;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 32
    iget-object v0, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSpriteView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method


# virtual methods
.method public drawFrame(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 54
    iget-boolean v2, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSpriteView;->mIsTop:Z

    if-eqz v2, :cond_0

    .line 55
    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 60
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSpriteView;->mSprites:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/opentheme/common/Sprite;

    .line 61
    .local v1, "sprite":Lcom/android/keyguard/opentheme/common/Sprite;
    invoke-virtual {v1}, Lcom/android/keyguard/opentheme/common/Sprite;->onUpdate()V

    .line 62
    invoke-virtual {v1, p1}, Lcom/android/keyguard/opentheme/common/Sprite;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 57
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sprite":Lcom/android/keyguard/opentheme/common/Sprite;
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 64
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 38
    invoke-super {p0}, Lcom/android/keyguard/opentheme/common/OpenThemeSurfaceView;->onDetachedFromWindow()V

    .line 40
    iget-object v2, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 41
    iget-object v2, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 42
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSpriteView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 45
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSpriteView;->mSprites:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/opentheme/common/Sprite;

    .line 46
    .local v1, "sprite":Lcom/android/keyguard/opentheme/common/Sprite;
    invoke-virtual {v1}, Lcom/android/keyguard/opentheme/common/Sprite;->clear()V

    goto :goto_0

    .line 49
    .end local v1    # "sprite":Lcom/android/keyguard/opentheme/common/Sprite;
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/opentheme/common/OpenThemeSpriteView;->TAG:Ljava/lang/String;

    const-string v3, "ondetach2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method
