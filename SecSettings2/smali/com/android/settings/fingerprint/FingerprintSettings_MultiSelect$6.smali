.class Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$6;
.super Ljava/lang/Object;
.source "FingerprintSettings_MultiSelect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
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
    .line 333
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$6;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    # getter for: Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->access$500(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    # invokes: Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->ToggleAllCheck(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->access$600(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Z)V

    .line 337
    return-void
.end method
