.class Lcom/android/settings/DCMHomeSettings$1;
.super Ljava/lang/Object;
.source "DCMHomeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DCMHomeSettings;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DCMHomeSettings;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/settings/DCMHomeSettings;I)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lcom/android/settings/DCMHomeSettings$1;->this$0:Lcom/android/settings/DCMHomeSettings;

    iput p2, p0, Lcom/android/settings/DCMHomeSettings$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/settings/DCMHomeSettings$1;->this$0:Lcom/android/settings/DCMHomeSettings;

    iget-object v1, p0, Lcom/android/settings/DCMHomeSettings$1;->this$0:Lcom/android/settings/DCMHomeSettings;

    # getter for: Lcom/android/settings/DCMHomeSettings;->mCurrentHome:I
    invoke-static {v1}, Lcom/android/settings/DCMHomeSettings;->access$100(Lcom/android/settings/DCMHomeSettings;)I

    move-result v1

    # setter for: Lcom/android/settings/DCMHomeSettings;->mInitHome:I
    invoke-static {v0, v1}, Lcom/android/settings/DCMHomeSettings;->access$002(Lcom/android/settings/DCMHomeSettings;I)I

    .line 279
    iget-object v0, p0, Lcom/android/settings/DCMHomeSettings$1;->this$0:Lcom/android/settings/DCMHomeSettings;

    iget v1, p0, Lcom/android/settings/DCMHomeSettings$1;->val$position:I

    # setter for: Lcom/android/settings/DCMHomeSettings;->mSelectedHome:I
    invoke-static {v0, v1}, Lcom/android/settings/DCMHomeSettings;->access$202(Lcom/android/settings/DCMHomeSettings;I)I

    .line 280
    iget-object v0, p0, Lcom/android/settings/DCMHomeSettings$1;->this$0:Lcom/android/settings/DCMHomeSettings;

    iget v1, p0, Lcom/android/settings/DCMHomeSettings$1;->val$position:I

    # invokes: Lcom/android/settings/DCMHomeSettings;->changeHome(I)V
    invoke-static {v0, v1}, Lcom/android/settings/DCMHomeSettings;->access$300(Lcom/android/settings/DCMHomeSettings;I)V

    .line 281
    iget-object v0, p0, Lcom/android/settings/DCMHomeSettings$1;->this$0:Lcom/android/settings/DCMHomeSettings;

    # invokes: Lcom/android/settings/DCMHomeSettings;->startHome()V
    invoke-static {v0}, Lcom/android/settings/DCMHomeSettings;->access$400(Lcom/android/settings/DCMHomeSettings;)V

    .line 282
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 283
    return-void
.end method
