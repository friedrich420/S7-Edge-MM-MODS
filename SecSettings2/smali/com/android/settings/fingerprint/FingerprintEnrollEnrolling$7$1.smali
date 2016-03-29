.class Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$7$1;
.super Ljava/lang/Object;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$7;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$7;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$7;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$7$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$7$1;->this$1:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$7;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$7;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    # invokes: Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->startIconAnimation()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->access$1200(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    .line 365
    return-void
.end method
