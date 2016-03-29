.class Lcom/android/settings/ethernet/EthernetConfigDialog$2;
.super Ljava/lang/Object;
.source "EthernetConfigDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ethernet/EthernetConfigDialog;->buildDialogContent(Landroid/content/Context;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ethernet/EthernetConfigDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/ethernet/EthernetConfigDialog;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/settings/ethernet/EthernetConfigDialog$2;->this$0:Lcom/android/settings/ethernet/EthernetConfigDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, -0x2

    .line 139
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetConfigDialog$2;->this$0:Lcom/android/settings/ethernet/EthernetConfigDialog;

    # getter for: Lcom/android/settings/ethernet/EthernetConfigDialog;->staticInputView:Landroid/view/View;
    invoke-static {v1}, Lcom/android/settings/ethernet/EthernetConfigDialog;->access$000(Lcom/android/settings/ethernet/EthernetConfigDialog;)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 140
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetConfigDialog$2;->this$0:Lcom/android/settings/ethernet/EthernetConfigDialog;

    # getter for: Lcom/android/settings/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;
    invoke-static {v1}, Lcom/android/settings/ethernet/EthernetConfigDialog;->access$200(Lcom/android/settings/ethernet/EthernetConfigDialog;)Landroid/widget/RadioButton;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ethernet/EthernetConfigDialog$2;->this$0:Lcom/android/settings/ethernet/EthernetConfigDialog;

    invoke-virtual {v2, v3}, Lcom/android/settings/ethernet/EthernetConfigDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setNextFocusDownId(I)V

    .line 141
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetConfigDialog$2;->this$0:Lcom/android/settings/ethernet/EthernetConfigDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/ethernet/EthernetConfigDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ethernet/EthernetConfigDialog$2;->this$0:Lcom/android/settings/ethernet/EthernetConfigDialog;

    # getter for: Lcom/android/settings/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/android/settings/ethernet/EthernetConfigDialog;->access$200(Lcom/android/settings/ethernet/EthernetConfigDialog;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 142
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetConfigDialog$2;->this$0:Lcom/android/settings/ethernet/EthernetConfigDialog;

    invoke-virtual {v1, v3}, Lcom/android/settings/ethernet/EthernetConfigDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ethernet/EthernetConfigDialog$2;->this$0:Lcom/android/settings/ethernet/EthernetConfigDialog;

    # getter for: Lcom/android/settings/ethernet/EthernetConfigDialog;->mConTypeManual:Landroid/widget/RadioButton;
    invoke-static {v2}, Lcom/android/settings/ethernet/EthernetConfigDialog;->access$200(Lcom/android/settings/ethernet/EthernetConfigDialog;)Landroid/widget/RadioButton;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RadioButton;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setNextFocusUpId(I)V

    .line 143
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetConfigDialog$2;->this$0:Lcom/android/settings/ethernet/EthernetConfigDialog;

    invoke-virtual {v1}, Lcom/android/settings/ethernet/EthernetConfigDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 144
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetConfigDialog$2;->this$0:Lcom/android/settings/ethernet/EthernetConfigDialog;

    # getter for: Lcom/android/settings/ethernet/EthernetConfigDialog;->mIpaddr:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/ethernet/EthernetConfigDialog;->access$100(Lcom/android/settings/ethernet/EthernetConfigDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 149
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetConfigDialog$2;->this$0:Lcom/android/settings/ethernet/EthernetConfigDialog;

    invoke-virtual {v1}, Lcom/android/settings/ethernet/EthernetConfigDialog;->enableSaveIfAppropriate()V

    .line 154
    return-void
.end method
