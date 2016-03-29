.class Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$AlphaInterpolater;
.super Landroid/view/animation/BaseInterpolator;
.source "KeyguardAffordanceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlphaInterpolater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V
    .locals 0

    .prologue
    .line 906
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$AlphaInterpolater;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$1;

    .prologue
    .line 906
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$AlphaInterpolater;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3
    .param p1, "t"    # F

    .prologue
    const v1, 0x3f3a1cac    # 0.727f

    .line 909
    cmpg-float v0, p1, v1

    if-gtz v0, :cond_0

    .line 910
    const/4 v0, 0x0

    .line 912
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$AlphaInterpolater;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mSineIn33:Landroid/view/animation/Interpolator;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)Landroid/view/animation/Interpolator;

    move-result-object v0

    sub-float v1, p1, v1

    const v2, 0x3e8b4396    # 0.272f

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_0
.end method
