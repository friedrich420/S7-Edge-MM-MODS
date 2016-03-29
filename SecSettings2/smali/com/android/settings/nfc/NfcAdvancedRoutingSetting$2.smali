.class Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$2;
.super Ljava/lang/Object;
.source "NfcAdvancedRoutingSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->showErrorDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

.field final synthetic val$Route:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$2;->this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    iput-object p2, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$2;->val$Route:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 268
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$2;->this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    # getter for: Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;
    invoke-static {v1}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->access$000(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/cardemulation/CardEmulation;->disableAutoRouting()Z

    .line 269
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$2;->this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    # getter for: Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v1}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->access$100(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$2;->val$Route:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/nfc/NfcAdapter;->setDefaultRoutingDestination(Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$2;->this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$2;->val$Route:Ljava/lang/String;

    # setter for: Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mCurrentKey:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->access$202(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;Ljava/lang/String;)Ljava/lang/String;

    .line 271
    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$2;->this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-virtual {v1}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NfcAdvancedRoutingSetting"

    const-string v2, "Exception occurred - setDefaultRoutingDestination"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
