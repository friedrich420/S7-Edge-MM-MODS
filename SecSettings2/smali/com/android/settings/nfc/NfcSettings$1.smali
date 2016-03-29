.class Lcom/android/settings/nfc/NfcSettings$1;
.super Ljava/lang/Object;
.source "NfcSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/NfcSettings;->makeAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/NfcSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcSettings;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/settings/nfc/NfcSettings$1;->this$0:Lcom/android/settings/nfc/NfcSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$1;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # getter for: Lcom/android/settings/nfc/NfcSettings;->isEmergencyMode:Z
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$000(Lcom/android/settings/nfc/NfcSettings;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    const-string v0, "NfcSettings"

    const-string v1, "AlertDialog is dismissing in Emergency Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$1;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # getter for: Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$100(Lcom/android/settings/nfc/NfcSettings;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/settings/nfc/NfcSettings$1;->this$0:Lcom/android/settings/nfc/NfcSettings;

    # getter for: Lcom/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/settings/nfc/NfcSettings;->access$100(Lcom/android/settings/nfc/NfcSettings;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 315
    :cond_0
    return-void
.end method
