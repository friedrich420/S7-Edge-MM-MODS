.class public final Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarTransitions;
.super Lcom/android/systemui/statusbar/phone/BarTransitions;
.source "SubPhoneStatusBarTransitions.java"


# instance fields
.field private final mView:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;)V
    .locals 2
    .param p1, "view"    # Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;

    .prologue
    .line 32
    const v1, 0x7f0205bd

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/BarTransitions;-><init>(Landroid/view/View;I)V

    .line 33
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;

    .line 34
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarTransitions;->mView:Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 35
    .local v0, "res":Landroid/content/res/Resources;
    return-void
.end method

.method private applyMode(IZ)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 49
    return-void
.end method


# virtual methods
.method protected onTransition(IIZ)V
    .locals 0
    .param p1, "oldMode"    # I
    .param p2, "newMode"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->onTransition(IIZ)V

    .line 44
    invoke-direct {p0, p2, p3}, Lcom/android/systemui/statusbar/phone/sub/SubPhoneStatusBarTransitions;->applyMode(IZ)V

    .line 45
    return-void
.end method
