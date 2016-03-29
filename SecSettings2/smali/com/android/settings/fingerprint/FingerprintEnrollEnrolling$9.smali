.class Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$9;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$9;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$9;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$9;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    const v2, 0x7f0e0228

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getString(I)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->access$1300(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;Ljava/lang/CharSequence;)V

    .line 381
    return-void
.end method
