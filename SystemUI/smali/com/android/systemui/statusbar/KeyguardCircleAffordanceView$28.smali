.class Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardCircleAffordanceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
    .locals 0

    .prologue
    .line 1412
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartedWakingUp()V
    .locals 3

    .prologue
    .line 1415
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isLatestUSAShortCutVI()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1416
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getVisibility()I

    move-result v0

    .line 1417
    .local v0, "visibility":I
    if-eqz v0, :cond_1

    .line 1418
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrow:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1419
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrow:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1447
    .end local v0    # "visibility":I
    :cond_0
    :goto_0
    return-void

    .line 1422
    .restart local v0    # "visibility":I
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrow:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1425
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mAlphaAnim:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/view/animation/Animation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1426
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mAlphaAnim:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28$1;-><init>(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1443
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrow:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0xbf

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 1444
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrow:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/widget/ImageView;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1445
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrow:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mAlphaAnim:Landroid/view/animation/Animation;
    invoke-static {v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5800(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/view/animation/Animation;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onSystemSettingsChanged(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 1451
    const-string v1, "white_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1453
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$6000(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1454
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$6100(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00e5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 1455
    .local v0, "color":I
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isLatestUSAShortCutVI()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrow:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1456
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrow:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    const v3, -0xbbbbbc

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1465
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mDCirclePaint:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$6300(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1466
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->invalidate()V

    .line 1468
    .end local v0    # "color":I
    :cond_1
    return-void

    .line 1459
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$6200(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001e

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 1460
    .restart local v0    # "color":I
    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isLatestUSAShortCutVI()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrow:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1461
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView$28;->this$0:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    # getter for: Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->mArrow:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->access$5700(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method
