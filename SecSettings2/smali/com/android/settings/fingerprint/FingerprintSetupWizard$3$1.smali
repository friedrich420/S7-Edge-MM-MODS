.class Lcom/android/settings/fingerprint/FingerprintSetupWizard$3$1;
.super Ljava/lang/Object;
.source "FingerprintSetupWizard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSetupWizard$3;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerprintSetupWizard$3;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSetupWizard$3;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$3$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSetupWizard$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$3$1;->this$1:Lcom/android/settings/fingerprint/FingerprintSetupWizard$3;

    iget-object v0, v0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$3;->this$0:Lcom/android/settings/fingerprint/FingerprintSetupWizard;

    # invokes: Lcom/android/settings/fingerprint/FingerprintSetupWizard;->startAnimation()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->access$200(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)V

    .line 317
    return-void
.end method
