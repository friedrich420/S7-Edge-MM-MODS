.class Lcom/android/keyguard/securityview/KeyguardRecoveryView$2;
.super Ljava/lang/Object;
.source "KeyguardRecoveryView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardRecoveryView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardRecoveryView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardRecoveryView;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardRecoveryView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardRecoveryView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardRecoveryView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardRecoveryView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardRecoveryView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardRecoveryView;->access$200(Lcom/android/keyguard/securityview/KeyguardRecoveryView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 174
    return-void
.end method
