.class Lcom/android/settings/nfc/NfcListenStatusChange$3;
.super Ljava/lang/Object;
.source "NfcListenStatusChange.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/NfcListenStatusChange;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/NfcListenStatusChange;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcListenStatusChange;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/settings/nfc/NfcListenStatusChange$3;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/settings/nfc/NfcListenStatusChange$3;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # invokes: Lcom/android/settings/nfc/NfcListenStatusChange;->startHandler()V
    invoke-static {v0}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$700(Lcom/android/settings/nfc/NfcListenStatusChange;)V

    .line 230
    return-void
.end method
