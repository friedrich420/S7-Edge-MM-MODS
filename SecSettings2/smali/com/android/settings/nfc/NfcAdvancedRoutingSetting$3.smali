.class Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$3;
.super Ljava/lang/Object;
.source "NfcAdvancedRoutingSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$3;->this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$3;->this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    # getter for: Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->access$300(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$3;->this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting$3;->this$0:Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;

    # getter for: Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->mCurrentKey:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->access$200(Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/nfc/NfcAdvancedRoutingSetting;->getItemPosition(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 289
    return-void
.end method
