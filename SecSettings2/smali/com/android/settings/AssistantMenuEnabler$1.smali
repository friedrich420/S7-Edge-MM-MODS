.class Lcom/android/settings/AssistantMenuEnabler$1;
.super Ljava/lang/Object;
.source "AssistantMenuEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AssistantMenuEnabler;->showExclusivePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AssistantMenuEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/AssistantMenuEnabler;)V
    .locals 0

    .prologue
    .line 578
    iput-object p1, p0, Lcom/android/settings/AssistantMenuEnabler$1;->this$0:Lcom/android/settings/AssistantMenuEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    .line 582
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 583
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 584
    iget-object v0, p0, Lcom/android/settings/AssistantMenuEnabler$1;->this$0:Lcom/android/settings/AssistantMenuEnabler;

    # getter for: Lcom/android/settings/AssistantMenuEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/AssistantMenuEnabler;->access$000(Lcom/android/settings/AssistantMenuEnabler;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 586
    :cond_0
    return v1
.end method
