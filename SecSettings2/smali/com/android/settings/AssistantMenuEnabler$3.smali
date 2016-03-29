.class Lcom/android/settings/AssistantMenuEnabler$3;
.super Ljava/lang/Object;
.source "AssistantMenuEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 560
    iput-object p1, p0, Lcom/android/settings/AssistantMenuEnabler$3;->this$0:Lcom/android/settings/AssistantMenuEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v4, 0x1

    .line 563
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 564
    .local v0, "assistantMenu":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.assistantmenu"

    const-string v3, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 566
    iget-object v1, p0, Lcom/android/settings/AssistantMenuEnabler$3;->this$0:Lcom/android/settings/AssistantMenuEnabler;

    iget-object v2, p0, Lcom/android/settings/AssistantMenuEnabler$3;->this$0:Lcom/android/settings/AssistantMenuEnabler;

    # getter for: Lcom/android/settings/AssistantMenuEnabler;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/AssistantMenuEnabler;->access$100(Lcom/android/settings/AssistantMenuEnabler;)Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/settings/AssistantMenuEnabler;->option_flag:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/AssistantMenuEnabler;->turnOffExlusiveOptions(Landroid/content/Context;I)V

    .line 567
    iget-object v1, p0, Lcom/android/settings/AssistantMenuEnabler$3;->this$0:Lcom/android/settings/AssistantMenuEnabler;

    # invokes: Lcom/android/settings/AssistantMenuEnabler;->switchOnToast()V
    invoke-static {v1}, Lcom/android/settings/AssistantMenuEnabler;->access$200(Lcom/android/settings/AssistantMenuEnabler;)V

    .line 568
    iget-object v1, p0, Lcom/android/settings/AssistantMenuEnabler$3;->this$0:Lcom/android/settings/AssistantMenuEnabler;

    # getter for: Lcom/android/settings/AssistantMenuEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/AssistantMenuEnabler;->access$100(Lcom/android/settings/AssistantMenuEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assistant_menu"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 569
    iget-object v1, p0, Lcom/android/settings/AssistantMenuEnabler$3;->this$0:Lcom/android/settings/AssistantMenuEnabler;

    # getter for: Lcom/android/settings/AssistantMenuEnabler;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/AssistantMenuEnabler;->access$100(Lcom/android/settings/AssistantMenuEnabler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 570
    iget-object v1, p0, Lcom/android/settings/AssistantMenuEnabler$3;->this$0:Lcom/android/settings/AssistantMenuEnabler;

    # getter for: Lcom/android/settings/AssistantMenuEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v1}, Lcom/android/settings/AssistantMenuEnabler;->access$000(Lcom/android/settings/AssistantMenuEnabler;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 571
    return-void
.end method
