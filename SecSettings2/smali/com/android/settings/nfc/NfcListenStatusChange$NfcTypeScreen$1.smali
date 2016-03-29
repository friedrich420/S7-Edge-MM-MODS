.class Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreen$1;
.super Ljava/lang/Object;
.source "NfcListenStatusChange.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreen;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreen;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreen;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreen$1;->this$1:Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreen$1;->this$1:Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreen;

    iget-object v0, v0, Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreen;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # invokes: Lcom/android/settings/nfc/NfcListenStatusChange;->createScreen()V
    invoke-static {v0}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$1100(Lcom/android/settings/nfc/NfcListenStatusChange;)V

    .line 351
    return-void
.end method
