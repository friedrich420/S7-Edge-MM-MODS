.class Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;
.super Ljava/lang/Thread;
.source "KeyguardUniversalLockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/securityview/KeyguardUniversalLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectionStichingTimer"
.end annotation


# instance fields
.field Msg:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)V
    .locals 1

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 230
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;->Msg:Landroid/os/Message;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;Lcom/android/keyguard/securityview/KeyguardUniversalLockView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView;
    .param p2, "x1"    # Lcom/android/keyguard/securityview/KeyguardUniversalLockView$1;

    .prologue
    .line 229
    invoke-direct {p0, p1}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;-><init>(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 233
    const-string v1, "KeyguardUniversalLockView"

    const-string v2, "Stitching Timer Thread started"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    const/4 v2, 0x1

    # setter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->isSleeping:Z
    invoke-static {v1, v2}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$302(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;Z)Z

    .line 238
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 239
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    const/4 v2, 0x0

    # setter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->isSleeping:Z
    invoke-static {v1, v2}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$302(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;Z)Z

    .line 240
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    const/4 v2, 0x1

    # setter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->isChecking:Z
    invoke-static {v1, v2}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$402(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;Z)Z

    .line 242
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    invoke-virtual {v1}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->checkForCorrectPassword()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v1}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$000(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 243
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    iget-object v1, v1, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mUniversalLockWrongPasswordhandler:Landroid/os/Handler;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->WRONG_PASSWORD_DETECTED:I
    invoke-static {}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$500()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 248
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    const/4 v2, 0x0

    # setter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->isChecking:Z
    invoke-static {v1, v2}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$402(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;Z)Z

    .line 254
    :goto_1
    return-void

    .line 244
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    invoke-virtual {v1}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->checkForCorrectPassword()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    iget-object v1, v1, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->mUniversalLockWrongPasswordhandler:Landroid/os/Handler;

    # getter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->RIGHT_PASSWORD_DETECTED:I
    invoke-static {}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$600()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 251
    .local v0, "E":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/android/keyguard/securityview/KeyguardUniversalLockView$DirectionStichingTimer;->this$0:Lcom/android/keyguard/securityview/KeyguardUniversalLockView;

    # setter for: Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->isSleeping:Z
    invoke-static {v1, v4}, Lcom/android/keyguard/securityview/KeyguardUniversalLockView;->access$302(Lcom/android/keyguard/securityview/KeyguardUniversalLockView;Z)Z

    .line 252
    const-string v1, "KeyguardUniversalLockView"

    const-string v2, "Interrupted before waking up naturally"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
