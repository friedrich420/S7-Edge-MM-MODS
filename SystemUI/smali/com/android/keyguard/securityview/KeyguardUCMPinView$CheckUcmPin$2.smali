.class Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin$2;
.super Ljava/lang/Object;
.source "KeyguardUCMPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin;


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin;)V
    .locals 0

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin$2;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 316
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin$2;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin;

    invoke-virtual {v0, v1, v1, v1}, Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin;->onSimCheckResponse(III)V

    .line 317
    return-void
.end method
