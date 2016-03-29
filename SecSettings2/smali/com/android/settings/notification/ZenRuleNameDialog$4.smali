.class Lcom/android/settings/notification/ZenRuleNameDialog$4;
.super Ljava/lang/Object;
.source "ZenRuleNameDialog.java"

# interfaces
.implements Lcom/android/settings/notification/ServiceListing$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenRuleNameDialog;
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
    .line 203
    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleNameDialog$4;->this$0:Lcom/android/settings/notification/ZenRuleNameDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServicesReloaded(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    # getter for: Lcom/android/settings/notification/ZenRuleNameDialog;->DEBUG:Z
    invoke-static {}, Lcom/android/settings/notification/ZenRuleNameDialog;->access$700()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "ZenModeSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Services reloaded: count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    iget-object v4, p0, Lcom/android/settings/notification/ZenRuleNameDialog$4;->this$0:Lcom/android/settings/notification/ZenRuleNameDialog;

    # getter for: Lcom/android/settings/notification/ZenRuleNameDialog;->mExternalRules:[Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;
    invoke-static {v4}, Lcom/android/settings/notification/ZenRuleNameDialog;->access$800(Lcom/android/settings/notification/ZenRuleNameDialog;)[Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/notification/ZenRuleNameDialog$4;->this$0:Lcom/android/settings/notification/ZenRuleNameDialog;

    # getter for: Lcom/android/settings/notification/ZenRuleNameDialog;->mExternalRules:[Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;
    invoke-static {v6}, Lcom/android/settings/notification/ZenRuleNameDialog;->access$800(Lcom/android/settings/notification/ZenRuleNameDialog;)[Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    move-result-object v6

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/settings/notification/ZenRuleNameDialog$4;->this$0:Lcom/android/settings/notification/ZenRuleNameDialog;

    # getter for: Lcom/android/settings/notification/ZenRuleNameDialog;->mExternalRules:[Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;
    invoke-static {v8}, Lcom/android/settings/notification/ZenRuleNameDialog;->access$800(Lcom/android/settings/notification/ZenRuleNameDialog;)[Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    move-result-object v8

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-object v10, v8, v9

    aput-object v10, v6, v7

    aput-object v10, v4, v5

    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ServiceInfo;

    .line 210
    .local v3, "si":Landroid/content/pm/ServiceInfo;
    invoke-static {v3}, Lcom/android/settings/notification/ZenModeExternalRuleSettings;->getRuleInfo(Landroid/content/pm/ServiceInfo;)Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    move-result-object v2

    .line 211
    .local v2, "ri":Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;
    if-eqz v2, :cond_1

    .line 212
    iget-object v4, p0, Lcom/android/settings/notification/ZenRuleNameDialog$4;->this$0:Lcom/android/settings/notification/ZenRuleNameDialog;

    # getter for: Lcom/android/settings/notification/ZenRuleNameDialog;->mExternalRules:[Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;
    invoke-static {v4}, Lcom/android/settings/notification/ZenRuleNameDialog;->access$800(Lcom/android/settings/notification/ZenRuleNameDialog;)[Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    move-result-object v4

    aput-object v2, v4, v0

    .line 213
    add-int/lit8 v0, v0, 0x1

    .line 214
    iget-object v4, p0, Lcom/android/settings/notification/ZenRuleNameDialog$4;->this$0:Lcom/android/settings/notification/ZenRuleNameDialog;

    # getter for: Lcom/android/settings/notification/ZenRuleNameDialog;->mExternalRules:[Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;
    invoke-static {v4}, Lcom/android/settings/notification/ZenRuleNameDialog;->access$800(Lcom/android/settings/notification/ZenRuleNameDialog;)[Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;

    move-result-object v4

    array-length v4, v4

    if-ne v0, v4, :cond_1

    .line 219
    .end local v2    # "ri":Lcom/android/settings/notification/ZenRuleNameDialog$RuleInfo;
    .end local v3    # "si":Landroid/content/pm/ServiceInfo;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/notification/ZenRuleNameDialog$4;->this$0:Lcom/android/settings/notification/ZenRuleNameDialog;

    # invokes: Lcom/android/settings/notification/ZenRuleNameDialog;->bindExternalRules()V
    invoke-static {v4}, Lcom/android/settings/notification/ZenRuleNameDialog;->access$900(Lcom/android/settings/notification/ZenRuleNameDialog;)V

    .line 220
    return-void
.end method
