.class Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$15;
.super Ljava/lang/Object;
.source "FingerprintSettings_MultiSelect.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->deleteAllFingerPrint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V
    .locals 0

    .prologue
    .line 1079
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$15;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1082
    const-string v0, "FpstFingerprintSettings_MultiSelect"

    const-string v1, "deRegisterAllFingerprint : removeAllEnrolledFingers"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$15;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    const/4 v1, 0x1

    # invokes: Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->deleteFingerprintOperation(Z)Z
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->access$1400(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Z)Z

    .line 1085
    return-void
.end method
