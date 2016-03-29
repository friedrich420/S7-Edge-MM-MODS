.class Lcom/android/settings/fingerprint/FingerprintSetupWizard$4;
.super Ljava/lang/Object;
.source "FingerprintSetupWizard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSetupWizard;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSetupWizard;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSetupWizard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSetupWizard;

    # getter for: Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintImage:Lcom/android/settings/fingerprint/VI/FingerprintIconView;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->access$000(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$4;->this$0:Lcom/android/settings/fingerprint/FingerprintSetupWizard;

    # getter for: Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintImage:Lcom/android/settings/fingerprint/VI/FingerprintIconView;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->access$000(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->beginAnimation(Z)V

    .line 350
    :cond_0
    return-void
.end method
