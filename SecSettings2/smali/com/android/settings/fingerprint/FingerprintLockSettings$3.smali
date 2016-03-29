.class Lcom/android/settings/fingerprint/FingerprintLockSettings$3;
.super Ljava/lang/Object;
.source "FingerprintLockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintLockSettings;->showDatabaseFailureDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintLockSettings;)V
    .locals 0

    .prologue
    .line 881
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$3;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 884
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$3;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$3;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    # getter for: Lcom/android/settings/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;
    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->access$500(Lcom/android/settings/fingerprint/FingerprintLockSettings;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->setResult(ILandroid/content/Intent;)V

    .line 885
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintLockSettings$3;->this$0:Lcom/android/settings/fingerprint/FingerprintLockSettings;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintLockSettings;->finish()V

    .line 886
    return-void
.end method
