.class Lcom/android/settings/fingerprint/RegisterFingerprint$7;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint;->showFingerprintKeyboardDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$7;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$7;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/fingerprint/RegisterFingerprint;->isKeyboardMounted:Z
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/RegisterFingerprint;->access$3602(Lcom/android/settings/fingerprint/RegisterFingerprint;Z)Z

    .line 560
    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$7;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->finish()V

    .line 561
    return-void
.end method
