.class Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF$1;
.super Ljava/lang/Object;
.source "NfcListenStatusChange.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF$1;->this$1:Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 365
    iget-object v0, p0, Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF$1;->this$1:Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;

    iget-object v0, v0, Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # getter for: Lcom/android/settings/nfc/NfcListenStatusChange;->pNFcTypeABF:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$300(Lcom/android/settings/nfc/NfcListenStatusChange;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 366
    iget-object v0, p0, Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF$1;->this$1:Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;

    iget-object v0, v0, Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # getter for: Lcom/android/settings/nfc/NfcListenStatusChange;->pNFcTypeAF:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$400(Lcom/android/settings/nfc/NfcListenStatusChange;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 367
    iget-object v0, p0, Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF$1;->this$1:Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;

    iget-object v0, v0, Lcom/android/settings/nfc/NfcListenStatusChange$NfcTypeScreenBF;->this$0:Lcom/android/settings/nfc/NfcListenStatusChange;

    # getter for: Lcom/android/settings/nfc/NfcListenStatusChange;->pNFcTypeBF:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/android/settings/nfc/NfcListenStatusChange;->access$500(Lcom/android/settings/nfc/NfcListenStatusChange;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 368
    return-void
.end method
