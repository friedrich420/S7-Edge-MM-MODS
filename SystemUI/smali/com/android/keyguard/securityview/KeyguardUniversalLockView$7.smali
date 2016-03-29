.class Lcom/android/keyguard/securityview/KeyguardUniversalLockView$7;
.super Ljava/lang/Object;
.source "KeyguardUniversalLockView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$7;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$7;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$900(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->BackupPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-interface {v0, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 511
    return-void
.end method
