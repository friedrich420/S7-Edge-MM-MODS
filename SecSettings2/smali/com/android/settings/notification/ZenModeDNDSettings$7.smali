.class Lcom/android/settings/notification/ZenModeDNDSettings$7;
.super Ljava/lang/Object;
.source "ZenModeDNDSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeDNDSettings;->showDaysDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeDNDSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeDNDSettings;)V
    .locals 0

    .prologue
    .line 436
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$7;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$7;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # invokes: Lcom/android/settings/notification/ZenModeDNDSettings;->updateDays()V
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$1000(Lcom/android/settings/notification/ZenModeDNDSettings;)V

    .line 440
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$7;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mSchedule:Landroid/service/notification/ZenModeConfig$ScheduleInfo;
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$500(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    if-nez v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$7;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$100(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 442
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$7;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$700(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/service/notification/ZenModeConfig;->mChangeReason:I

    .line 443
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$7;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDSettings$7;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDSettings;->mConfig:Landroid/service/notification/ZenModeConfig;
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$700(Lcom/android/settings/notification/ZenModeDNDSettings;)Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    # invokes: Lcom/android/settings/notification/ZenModeDNDSettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z
    invoke-static {v0, v1}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$1100(Lcom/android/settings/notification/ZenModeDNDSettings;Landroid/service/notification/ZenModeConfig;)Z

    .line 444
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDNDSettings$7;->this$0:Lcom/android/settings/notification/ZenModeDNDSettings;

    # invokes: Lcom/android/settings/notification/ZenModeDNDSettings;->updateControls()V
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeDNDSettings;->access$1200(Lcom/android/settings/notification/ZenModeDNDSettings;)V

    .line 446
    :cond_0
    return-void
.end method
