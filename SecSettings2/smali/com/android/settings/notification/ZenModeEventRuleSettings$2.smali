.class Lcom/android/settings/notification/ZenModeEventRuleSettings$2;
.super Ljava/lang/Object;
.source "ZenModeEventRuleSettings.java"

# interfaces
.implements Lcom/android/settings/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeEventRuleSettings;->onCreateInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeEventRuleSettings;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$2;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 4
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    .line 129
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 130
    .local v0, "reply":I
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$2;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    # getter for: Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v1

    iget v1, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    if-ne v0, v1, :cond_0

    .line 133
    :goto_0
    return v3

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$2;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    # getter for: Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v1

    iput v0, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    .line 132
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$2;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeEventRuleSettings$2;->this$0:Lcom/android/settings/notification/ZenModeEventRuleSettings;

    # getter for: Lcom/android/settings/notification/ZenModeEventRuleSettings;->mEvent:Landroid/service/notification/ZenModeConfig$EventInfo;
    invoke-static {v2}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->access$000(Lcom/android/settings/notification/ZenModeEventRuleSettings;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v2

    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->toEventConditionId(Landroid/service/notification/ZenModeConfig$EventInfo;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeEventRuleSettings;->updateRule(Landroid/net/Uri;)V

    goto :goto_0
.end method
