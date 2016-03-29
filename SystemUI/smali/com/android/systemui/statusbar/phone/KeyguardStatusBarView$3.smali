.class Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;
.super Ljava/lang/Object;
.source "KeyguardStatusBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->startShortcutHintAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V
    .locals 0

    .prologue
    .line 452
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$400(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/16 v2, 0x96

    const-wide/16 v4, 0x190

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->setViewAlpha(FJJLjava/lang/Runnable;)V

    .line 457
    return-void
.end method
