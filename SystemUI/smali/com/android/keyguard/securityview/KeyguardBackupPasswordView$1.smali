.class Lcom/android/keyguard/securityview/KeyguardBackupPasswordView$1;
.super Ljava/lang/Object;
.source "KeyguardBackupPasswordView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->onResume(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;

.field final synthetic val$reason:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;I)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;

    iput p2, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView$1;->val$reason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 153
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;

    invoke-virtual {v0}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->access$000(Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->access$000(Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 155
    iget v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView$1;->val$reason:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mShowImeAtScreenOn:Z
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->access$100(Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;

    iget-object v0, v0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mPasswordEntry:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->access$000(Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 159
    :cond_1
    return-void
.end method
