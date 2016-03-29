.class Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;
.super Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin;
.source "KeyguardUCMPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardUCMPinView;->verifyPasswordAndUnlock(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardUCMPinView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardUCMPinView;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin;-><init>(Lcom/android/keyguard/securityview/KeyguardUCMPinView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimCheckResponse(III)V
    .locals 2
    .param p1, "result"    # I
    .param p2, "attemptsRemaining"    # I
    .param p3, "errorCode"    # I

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    new-instance v1, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/android/keyguard/securityview/KeyguardUCMPinView$1$1;-><init>(Lcom/android/keyguard/securityview/KeyguardUCMPinView$1;III)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->post(Ljava/lang/Runnable;)Z

    .line 433
    return-void
.end method
