.class public abstract Lcom/android/keyguard/opentheme/common/SpriteModifier;
.super Ljava/lang/Object;
.source "SpriteModifier.java"


# instance fields
.field private mSprite:Lcom/android/keyguard/opentheme/common/Sprite;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Lcom/android/keyguard/opentheme/common/Sprite;)V
    .locals 0
    .param p1, "sprite"    # Lcom/android/keyguard/opentheme/common/Sprite;

    .prologue
    .line 9
    iput-object p1, p0, Lcom/android/keyguard/opentheme/common/SpriteModifier;->mSprite:Lcom/android/keyguard/opentheme/common/Sprite;

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/keyguard/opentheme/common/SpriteModifier;->onStart(Lcom/android/keyguard/opentheme/common/Sprite;)V

    .line 13
    return-void
.end method

.method public abstract onStart(Lcom/android/keyguard/opentheme/common/Sprite;)V
.end method

.method public abstract onUpdate(Lcom/android/keyguard/opentheme/common/Sprite;)V
.end method
