.class public Lcom/android/keyguard/effect/KeyguardEffectViewSavingMode;
.super Landroid/widget/FrameLayout;
.source "KeyguardEffectViewSavingMode.java"

# interfaces
.implements Lcom/android/keyguard/effect/KeyguardEffectViewBase;


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardEffectViewSavingMode"


# instance fields
.field private mController:Lcom/android/keyguard/effect/KeyguardEffectViewController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/effect/KeyguardEffectViewSavingMode;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/effect/KeyguardEffectViewSavingMode;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/effect/KeyguardEffectViewSavingMode;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewSavingMode;->mController:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    .line 50
    iput-object p1, p0, Lcom/android/keyguard/effect/KeyguardEffectViewSavingMode;->mContext:Landroid/content/Context;

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/effect/KeyguardEffectViewSavingMode;->setWillNotDraw(Z)V

    .line 52
    invoke-direct {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewSavingMode;->updateWhiteWallpaperInfo()V

    .line 53
    return-void
.end method

.method private updateWhiteWallpaperInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 56
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewSavingMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewSavingMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "white_lockscreen_wallpaper"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewSavingMode;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/effect/KeyguardEffectViewController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewSavingMode;->mController:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    .line 60
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewSavingMode;->mController:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/android/keyguard/effect/KeyguardEffectViewSavingMode;->mController:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    invoke-virtual {v0, v3}, Lcom/android/keyguard/effect/KeyguardEffectViewController;->updateVignettingEffect(Landroid/graphics/Bitmap;)V

    .line 62
    :cond_1
    iput-object v3, p0, Lcom/android/keyguard/effect/KeyguardEffectViewSavingMode;->mController:Lcom/android/keyguard/effect/KeyguardEffectViewController;

    .line 63
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 84
    const-wide/16 v0, 0x96

    return-wide v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 89
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 73
    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 75
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 102
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 93
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/keyguard/effect/KeyguardEffectViewSavingMode;->setAlpha(F)V

    .line 94
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/keyguard/effect/KeyguardEffectViewSavingMode;->invalidate()V

    .line 68
    return-void
.end method
