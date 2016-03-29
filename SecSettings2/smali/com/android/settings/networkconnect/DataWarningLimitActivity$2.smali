.class Lcom/android/settings/networkconnect/DataWarningLimitActivity$2;
.super Ljava/lang/Object;
.source "DataWarningLimitActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/networkconnect/DataWarningLimitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$2;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$2;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    # getter for: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$300(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Landroid/widget/Switch;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/networkconnect/DataWarningLimitActivity$2;->this$0:Lcom/android/settings/networkconnect/DataWarningLimitActivity;

    # getter for: Lcom/android/settings/networkconnect/DataWarningLimitActivity;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/networkconnect/DataWarningLimitActivity;->access$300(Lcom/android/settings/networkconnect/DataWarningLimitActivity;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 214
    return-void

    .line 213
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
