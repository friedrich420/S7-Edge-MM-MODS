.class Lcom/android/settings/MasterClear$1$1;
.super Ljava/lang/Object;
.source "MasterClear.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MasterClear$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/MasterClear$1;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/settings/MasterClear$1;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/settings/MasterClear$1$1;->this$1:Lcom/android/settings/MasterClear$1;

    iput-object p2, p0, Lcom/android/settings/MasterClear$1$1;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/settings/MasterClear$1$1;->val$input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "password":Ljava/lang/String;
    const v1, -0x7dfc1274

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 193
    iget-object v1, p0, Lcom/android/settings/MasterClear$1$1;->this$1:Lcom/android/settings/MasterClear$1;

    iget-object v1, v1, Lcom/android/settings/MasterClear$1;->this$0:Lcom/android/settings/MasterClear;

    # invokes: Lcom/android/settings/MasterClear;->showFinalConfirmation()V
    invoke-static {v1}, Lcom/android/settings/MasterClear;->access$200(Lcom/android/settings/MasterClear;)V

    .line 195
    :cond_0
    return-void
.end method
