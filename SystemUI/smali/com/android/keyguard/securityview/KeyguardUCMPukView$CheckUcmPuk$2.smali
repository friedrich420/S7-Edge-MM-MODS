.class Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk$2;
.super Ljava/lang/Object;
.source "KeyguardUCMPukView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk;


# direct methods
.method constructor <init>(Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk$2;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 392
    iget-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk$2;->this$1:Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk;

    invoke-virtual {v0, v1, v1, v1}, Lcom/android/keyguard/securityview/KeyguardUCMPukView$CheckUcmPuk;->onSimLockChangedResponse(III)V

    .line 393
    return-void
.end method
