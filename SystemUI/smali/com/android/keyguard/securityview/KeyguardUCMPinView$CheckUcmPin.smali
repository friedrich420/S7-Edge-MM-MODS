.class abstract Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin;
.super Ljava/lang/Thread;
.source "KeyguardUCMPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/securityview/KeyguardUCMPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckUcmPin"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardUCMPinView;


# direct methods
.method protected constructor <init>(Lcom/android/keyguard/securityview/KeyguardUCMPinView;Ljava/lang/String;)V
    .locals 0
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 292
    iput-object p2, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin;->mPin:Ljava/lang/String;

    .line 293
    return-void
.end method


# virtual methods
.method abstract onSimCheckResponse(III)V
.end method

.method public run()V
    .locals 5

    .prologue
    .line 301
    :try_start_0
    const-string v2, "KeyguardUCMPinView"

    const-string v3, "call verfiyPassword"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    iget-object v3, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin;->mPin:Ljava/lang/String;

    # invokes: Lcom/android/keyguard/securityview/KeyguardUCMPinView;->verfiyPassword(Ljava/lang/String;)[I
    invoke-static {v2, v3}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->access$000(Lcom/android/keyguard/securityview/KeyguardUCMPinView;Ljava/lang/String;)[I

    move-result-object v1

    .line 305
    .local v1, "result":[I
    const-string v2, "KeyguardUCMPinView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "supplyPinReportResult returned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    new-instance v3, Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin$1;

    invoke-direct {v3, p0, v1}, Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin$1;-><init>(Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin;[I)V

    invoke-virtual {v2, v3}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .end local v1    # "result":[I
    :goto_0
    return-void

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "KeyguardUCMPinView"

    const-string v3, "Exception for verfiyPassword:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    iget-object v2, p0, Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin;->this$0:Lcom/android/keyguard/securityview/KeyguardUCMPinView;

    new-instance v3, Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin$2;

    invoke-direct {v3, p0}, Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin$2;-><init>(Lcom/android/keyguard/securityview/KeyguardUCMPinView$CheckUcmPin;)V

    invoke-virtual {v2, v3}, Lcom/android/keyguard/securityview/KeyguardUCMPinView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
