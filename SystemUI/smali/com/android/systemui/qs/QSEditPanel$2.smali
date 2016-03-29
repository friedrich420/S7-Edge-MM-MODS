.class Lcom/android/systemui/qs/QSEditPanel$2;
.super Ljava/lang/Object;
.source "QSEditPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSEditPanel;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSEditPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 0

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/systemui/qs/QSEditPanel$2;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel$2;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # getter for: Lcom/android/systemui/qs/QSEditPanel;->quickConnectSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel;->access$1200(Lcom/android/systemui/qs/QSEditPanel;)Landroid/widget/Switch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel$2;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # getter for: Lcom/android/systemui/qs/QSEditPanel;->quickConnectSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel;->access$1200(Lcom/android/systemui/qs/QSEditPanel;)Landroid/widget/Switch;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel$2;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    # getter for: Lcom/android/systemui/qs/QSEditPanel;->quickConnectSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/systemui/qs/QSEditPanel;->access$1200(Lcom/android/systemui/qs/QSEditPanel;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 419
    :cond_0
    return-void

    .line 418
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
