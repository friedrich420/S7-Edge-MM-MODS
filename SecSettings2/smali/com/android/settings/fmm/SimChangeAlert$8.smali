.class Lcom/android/settings/fmm/SimChangeAlert$8;
.super Ljava/lang/Object;
.source "SimChangeAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/SimChangeAlert;->showNotificationChargeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/SimChangeAlert;

.field final synthetic val$chkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/SimChangeAlert;Landroid/widget/CheckBox;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/android/settings/fmm/SimChangeAlert$8;->this$0:Lcom/android/settings/fmm/SimChangeAlert;

    iput-object p2, p0, Lcom/android/settings/fmm/SimChangeAlert$8;->val$chkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert$8;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/fmm/SimChangeAlert;->chkboxFlag:Z

    .line 319
    :cond_0
    return-void
.end method
