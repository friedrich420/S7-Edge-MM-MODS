.class Lcom/android/settings/wfd/WifiDisplaySettings$18;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;->createDongleRenameDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

.field final synthetic val$activeDisplay:Landroid/hardware/display/WifiDisplay;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic val$mEditDeviceName:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/hardware/display/WifiDisplay;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .prologue
    .line 1984
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iput-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->val$mEditDeviceName:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->val$activeDisplay:Landroid/hardware/display/WifiDisplay;

    iput-object p4, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    const/4 v1, 0x0

    .line 1987
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->val$mEditDeviceName:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1988
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->val$mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/settings/wfd/WifiDisplaySettings;->changeString:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$3102(Lcom/android/settings/wfd/WifiDisplaySettings;Ljava/lang/String;)Ljava/lang/String;

    .line 1989
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    # getter for: Lcom/android/settings/wfd/WifiDisplaySettings;->changeString:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$3100(Lcom/android/settings/wfd/WifiDisplaySettings;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->val$activeDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/android/settings/wfd/WifiDisplaySettings;->isChanged:Z
    invoke-static {v2, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$3202(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z

    .line 1990
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->val$mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->renameDongle(Ljava/lang/String;)V

    .line 1991
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v0, v0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->val$activeDisplay:Landroid/hardware/display/WifiDisplay;

    invoke-virtual {v2}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->val$mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/hardware/display/DisplayManager;->renameWifiDisplay(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$18;->val$mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1994
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1995
    return-void

    :cond_1
    move v0, v1

    .line 1989
    goto :goto_0
.end method
