.class Lcom/android/settings/fingerprint/FingerprintSetupWizard$2;
.super Ljava/lang/Object;
.source "FingerprintSetupWizard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSetupWizard;->showSensorErrorDialog()V
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
    .line 241
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSetupWizard$2;->this$0:Lcom/android/settings/fingerprint/FingerprintSetupWizard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 244
    const-string v0, "FpstFingerprintSetupWizard"

    const-string v1, "showSensorErrorDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void
.end method
