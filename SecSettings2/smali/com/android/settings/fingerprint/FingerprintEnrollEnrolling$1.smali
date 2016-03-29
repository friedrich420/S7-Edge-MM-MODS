.class Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$1;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x1

    .line 111
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    # operator++ for: Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIconTouchCount:I
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->access$008(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)I

    .line 113
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    # getter for: Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIconTouchCount:I
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->access$000(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    # invokes: Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->showIconTouchDialog()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->access$100(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    .line 123
    :cond_0
    :goto_0
    return v4

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    # getter for: Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mFingerprintAnimator:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->access$300(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    # getter for: Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mShowDialogRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->access$200(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    # getter for: Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mFingerprintAnimator:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->access$300(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    # getter for: Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mShowDialogRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->access$200(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
