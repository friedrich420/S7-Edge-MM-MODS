.class Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$8;
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
    .line 370
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$8;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$8;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    # invokes: Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->showIconTouchDialog()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->access$100(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    .line 374
    return-void
.end method
