.class Lcom/android/settings/notification/ZenModeScheduleRuleSettings$4;
.super Ljava/lang/Object;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->showDaysDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$4;->this$0:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    # invokes: Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->updateDays()V
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->access$200(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V

    .line 209
    return-void
.end method
