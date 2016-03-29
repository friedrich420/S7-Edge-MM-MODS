.class Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;
.super Ljava/lang/Object;
.source "KeyguardPatternView.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->onPatternDetected(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;)V
    .locals 0

    .prologue
    .line 480
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChecked(ZI)V
    .locals 2
    .param p1, "matched"    # Z
    .param p2, "timeoutMs"    # I

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/SecLockPatternView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardPatternView;->access$000(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/SecLockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/SecLockPatternView;->enableInput()V

    .line 484
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    const/4 v1, 0x0

    # setter for: Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->access$902(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 485
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener$1;->this$1:Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    const/4 v1, 0x1

    # invokes: Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->onPatternChecked(ZIZ)V
    invoke-static {v0, p1, p2, v1}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;->access$1200(Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;ZIZ)V

    .line 486
    return-void
.end method
