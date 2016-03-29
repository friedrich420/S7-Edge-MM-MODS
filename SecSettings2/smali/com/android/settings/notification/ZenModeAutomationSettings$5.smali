.class final Lcom/android/settings/notification/ZenModeAutomationSettings$5;
.super Ljava/lang/Object;
.source "ZenModeAutomationSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeAutomationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private key(Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;)Ljava/lang/String;
    .locals 4
    .param p1, "zri"    # Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;

    .prologue
    .line 324
    iget-object v0, p1, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;->rule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 325
    .local v0, "rule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 328
    .local v1, "type":I
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 325
    .end local v1    # "type":I
    :cond_0
    iget-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    goto :goto_0
.end method


# virtual methods
.method public compare(Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;)I
    .locals 2
    .param p1, "lhs"    # Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;
    .param p2, "rhs"    # Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;

    .prologue
    .line 320
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenModeAutomationSettings$5;->key(Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/android/settings/notification/ZenModeAutomationSettings$5;->key(Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 317
    check-cast p1, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/notification/ZenModeAutomationSettings$5;->compare(Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;Lcom/android/settings/notification/ZenModeAutomationSettings$ZenRuleInfo;)I

    move-result v0

    return v0
.end method
