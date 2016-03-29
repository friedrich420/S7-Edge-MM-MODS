.class Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;
.super Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
.source "FingerprintEnrollSidecar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "errMsgId"    # I
    .param p2, "errString"    # Ljava/lang/CharSequence;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    # getter for: Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mListener:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->access$300(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    # getter for: Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mListener:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->access$300(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;->onEnrollmentError(Ljava/lang/CharSequence;)V

    .line 134
    :cond_0
    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "helpMsgId"    # I
    .param p2, "helpString"    # Ljava/lang/CharSequence;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    # getter for: Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mListener:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->access$300(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    # getter for: Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mListener:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->access$300(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;->onEnrollmentHelp(Ljava/lang/CharSequence;)V

    .line 127
    :cond_0
    return-void
.end method

.method public onEnrollmentProgress(I)V
    .locals 2
    .param p1, "remaining"    # I

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    # getter for: Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->access$000(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    # setter for: Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I
    invoke-static {v0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->access$002(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;I)I

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    # setter for: Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentRemaining:I
    invoke-static {v0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->access$102(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;I)I

    .line 116
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mDone:Z
    invoke-static {v1, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->access$202(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;Z)Z

    .line 117
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    # getter for: Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mListener:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->access$300(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    # getter for: Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mListener:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->access$300(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    # getter for: Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->mEnrollmentSteps:I
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->access$000(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;->onEnrollmentProgressChange(II)V

    .line 120
    :cond_1
    return-void

    .line 116
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
