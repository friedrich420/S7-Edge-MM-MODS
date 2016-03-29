.class Lcom/android/settings/fingerprint/FingerprintSetupWizard$1;
.super Ljava/lang/Object;
.source "FingerprintSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSetupWizard;->onCreate(Landroid/os/Bundle;)V
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
    .line 128
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSetupWizard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSetupWizard;

    # getter for: Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintImage:Lcom/android/settings/fingerprint/VI/FingerprintIconView;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->access$000(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    move-result-object v0

    iget v0, v0, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->percent:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSetupWizard;

    # getter for: Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintImage:Lcom/android/settings/fingerprint/VI/FingerprintIconView;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->access$000(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->beginAnimation(Z)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$1;->this$0:Lcom/android/settings/fingerprint/FingerprintSetupWizard;

    # getter for: Lcom/android/settings/fingerprint/FingerprintSetupWizard;->fingerprintImage:Lcom/android/settings/fingerprint/VI/FingerprintIconView;
    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintSetupWizard;->access$000(Lcom/android/settings/fingerprint/FingerprintSetupWizard;)Lcom/android/settings/fingerprint/VI/FingerprintIconView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/VI/FingerprintIconView;->beginAnimation(Z)V

    goto :goto_0
.end method
