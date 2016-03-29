.class Lcom/android/settings/notification/ZenRuleNameDialog$2;
.super Ljava/lang/Object;
.source "ZenRuleNameDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenRuleNameDialog;-><init>(Landroid/content/Context;Lcom/android/settings/notification/ServiceListing;Ljava/lang/String;Landroid/util/ArraySet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenRuleNameDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenRuleNameDialog;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleNameDialog$2;->this$0:Lcom/android/settings/notification/ZenRuleNameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleNameDialog$2;->this$0:Lcom/android/settings/notification/ZenRuleNameDialog;

    # invokes: Lcom/android/settings/notification/ZenRuleNameDialog;->trimmedText()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/notification/ZenRuleNameDialog;->access$200(Lcom/android/settings/notification/ZenRuleNameDialog;)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "newName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleNameDialog$2;->this$0:Lcom/android/settings/notification/ZenRuleNameDialog;

    # getter for: Lcom/android/settings/notification/ZenRuleNameDialog;->mIsNew:Z
    invoke-static {v1}, Lcom/android/settings/notification/ZenRuleNameDialog;->access$300(Lcom/android/settings/notification/ZenRuleNameDialog;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleNameDialog$2;->this$0:Lcom/android/settings/notification/ZenRuleNameDialog;

    # getter for: Lcom/android/settings/notification/ZenRuleNameDialog;->mOriginalRuleName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/notification/ZenRuleNameDialog;->access$400(Lcom/android/settings/notification/ZenRuleNameDialog;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleNameDialog$2;->this$0:Lcom/android/settings/notification/ZenRuleNameDialog;

    # getter for: Lcom/android/settings/notification/ZenRuleNameDialog;->mOriginalRuleName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/notification/ZenRuleNameDialog;->access$400(Lcom/android/settings/notification/ZenRuleNameDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleNameDialog$2;->this$0:Lcom/android/settings/notification/ZenRuleNameDialog;

    iget-object v2, p0, Lcom/android/settings/notification/ZenRuleNameDialog$2;->this$0:Lcom/android/settings/notification/ZenRuleNameDialog;

    # invokes: Lcom/android/settings/notification/ZenRuleNameDialog;->selectedRuleInfo()Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;
    invoke-static {v2}, Lcom/android/settings/notification/ZenRuleNameDialog;->access$500(Lcom/android/settings/notification/ZenRuleNameDialog;)Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/notification/ZenRuleNameDialog;->onOk(Ljava/lang/String;Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;)V

    goto :goto_0
.end method
