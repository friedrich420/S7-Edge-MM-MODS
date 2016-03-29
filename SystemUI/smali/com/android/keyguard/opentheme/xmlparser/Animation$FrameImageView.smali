.class public Lcom/android/keyguard/opentheme/xmlparser/Animation$FrameImageView;
.super Landroid/widget/ImageView;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/opentheme/xmlparser/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameImageView"
.end annotation


# instance fields
.field mApkContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 449
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 451
    return-void
.end method


# virtual methods
.method public setApkContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "apkContext"    # Landroid/content/Context;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$FrameImageView;->mApkContext:Landroid/content/Context;

    .line 455
    return-void
.end method

.method public setImageResource(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 461
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/opentheme/xmlparser/Animation$FrameImageView;->mApkContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 462
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/android/keyguard/opentheme/xmlparser/Animation$FrameImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 470
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 463
    :catch_0
    move-exception v1

    .line 464
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    .line 465
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v1

    .line 466
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    .line 467
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catch_2
    move-exception v1

    .line 468
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
