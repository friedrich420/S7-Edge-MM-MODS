.class Lcom/android/keyguard/securityview/KeyguardFMMView$2;
.super Ljava/lang/Object;
.source "KeyguardFMMView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardFMMView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardFMMView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardFMMView;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardFMMView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardFMMView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardFMMView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardFMMView;

    invoke-virtual {v0}, Lcom/android/keyguard/securityview/KeyguardFMMView;->doHapticKeyClick()V

    .line 104
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardFMMView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardFMMView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardFMMView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardFMMView;->access$200(Lcom/android/keyguard/securityview/KeyguardFMMView;)Lcom/android/keyguard/PasswordTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/PasswordTextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardFMMView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardFMMView;

    invoke-virtual {v0}, Lcom/android/keyguard/securityview/KeyguardFMMView;->verifyPasswordAndUnlock()V

    .line 107
    :cond_0
    return-void
.end method
