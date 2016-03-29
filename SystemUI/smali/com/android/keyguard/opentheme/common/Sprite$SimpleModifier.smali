.class public Lcom/android/keyguard/opentheme/common/Sprite$SimpleModifier;
.super Lcom/android/keyguard/opentheme/common/SpriteModifier;
.source "Sprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/opentheme/common/Sprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleModifier"
.end annotation


# instance fields
.field protected mCurrentFrameIndex:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/keyguard/opentheme/common/SpriteModifier;-><init>()V

    return-void
.end method

.method private moveToNextFrame(Lcom/android/keyguard/opentheme/common/Sprite;)V
    .locals 2
    .param p1, "sprite"    # Lcom/android/keyguard/opentheme/common/Sprite;

    .prologue
    .line 150
    iget v0, p0, Lcom/android/keyguard/opentheme/common/Sprite$SimpleModifier;->mCurrentFrameIndex:I

    iput v0, p1, Lcom/android/keyguard/opentheme/common/Sprite;->currentFrame:I

    .line 152
    iget v0, p0, Lcom/android/keyguard/opentheme/common/Sprite$SimpleModifier;->mCurrentFrameIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/opentheme/common/Sprite$SimpleModifier;->mCurrentFrameIndex:I

    .line 153
    iget v0, p0, Lcom/android/keyguard/opentheme/common/Sprite$SimpleModifier;->mCurrentFrameIndex:I

    iget v1, p1, Lcom/android/keyguard/opentheme/common/Sprite;->frameSize:I

    if-ne v0, v1, :cond_0

    .line 154
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/opentheme/common/Sprite$SimpleModifier;->mCurrentFrameIndex:I

    .line 156
    :cond_0
    return-void
.end method


# virtual methods
.method public onStart(Lcom/android/keyguard/opentheme/common/Sprite;)V
    .locals 0
    .param p1, "sprite"    # Lcom/android/keyguard/opentheme/common/Sprite;

    .prologue
    .line 142
    return-void
.end method

.method public onUpdate(Lcom/android/keyguard/opentheme/common/Sprite;)V
    .locals 0
    .param p1, "sprite"    # Lcom/android/keyguard/opentheme/common/Sprite;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/keyguard/opentheme/common/Sprite$SimpleModifier;->moveToNextFrame(Lcom/android/keyguard/opentheme/common/Sprite;)V

    .line 147
    return-void
.end method

.method public setStartIndex(I)V
    .locals 0
    .param p1, "startIndex"    # I

    .prologue
    .line 159
    iput p1, p0, Lcom/android/keyguard/opentheme/common/Sprite$SimpleModifier;->mCurrentFrameIndex:I

    .line 160
    return-void
.end method
