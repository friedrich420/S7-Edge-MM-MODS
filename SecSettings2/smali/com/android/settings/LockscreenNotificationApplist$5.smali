.class Lcom/android/settings/LockscreenNotificationApplist$5;
.super Ljava/lang/Object;
.source "LockscreenNotificationApplist.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LockscreenNotificationApplist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/LockscreenNotificationApplist;


# direct methods
.method constructor <init>(Lcom/android/settings/LockscreenNotificationApplist;)V
    .locals 0

    .prologue
    .line 594
    iput-object p1, p0, Lcom/android/settings/LockscreenNotificationApplist$5;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist$5;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    # invokes: Lcom/android/settings/LockscreenNotificationApplist;->refreshDisplayedItems()V
    invoke-static {v0}, Lcom/android/settings/LockscreenNotificationApplist;->access$1400(Lcom/android/settings/LockscreenNotificationApplist;)V

    .line 598
    iget-object v0, p0, Lcom/android/settings/LockscreenNotificationApplist$5;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    # getter for: Lcom/android/settings/LockscreenNotificationApplist;->mAllApps:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/LockscreenNotificationApplist;->access$200(Lcom/android/settings/LockscreenNotificationApplist;)Landroid/preference/SwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/LockscreenNotificationApplist$5;->this$0:Lcom/android/settings/LockscreenNotificationApplist;

    # invokes: Lcom/android/settings/LockscreenNotificationApplist;->getLockscreenNotificationsEnabled()Z
    invoke-static {v1}, Lcom/android/settings/LockscreenNotificationApplist;->access$100(Lcom/android/settings/LockscreenNotificationApplist;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 599
    return-void
.end method
