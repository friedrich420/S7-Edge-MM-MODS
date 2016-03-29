.class Lcom/android/keyguard/securityview/KeyguardBackupPasswordView$2;
.super Ljava/lang/Object;
.source "KeyguardBackupPasswordView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView$2;->this$0:Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;->access$200(Lcom/android/keyguard/securityview/KeyguardBackupPasswordView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 213
    return-void
.end method
