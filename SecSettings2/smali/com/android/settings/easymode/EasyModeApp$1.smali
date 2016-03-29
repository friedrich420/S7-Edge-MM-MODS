.class Lcom/android/settings/easymode/EasyModeApp$1;
.super Ljava/lang/Object;
.source "EasyModeApp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/easymode/EasyModeApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/easymode/EasyModeApp;


# direct methods
.method constructor <init>(Lcom/android/settings/easymode/EasyModeApp;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/settings/easymode/EasyModeApp$1;->this$0:Lcom/android/settings/easymode/EasyModeApp;

    # getter for: Lcom/android/settings/easymode/EasyModeApp;->mStandardModeRadio:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/android/settings/easymode/EasyModeApp;->access$000(Lcom/android/settings/easymode/EasyModeApp;)Landroid/widget/RadioButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 193
    return-void
.end method
