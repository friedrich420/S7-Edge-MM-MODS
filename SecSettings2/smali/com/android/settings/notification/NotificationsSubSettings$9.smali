.class Lcom/android/settings/notification/NotificationsSubSettings$9;
.super Ljava/lang/Object;
.source "NotificationsSubSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationsSubSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/NotificationsSubSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationsSubSettings;)V
    .locals 0

    .prologue
    .line 539
    iput-object p1, p0, Lcom/android/settings/notification/NotificationsSubSettings$9;->this$0:Lcom/android/settings/notification/NotificationsSubSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/settings/notification/NotificationsSubSettings$9;->this$0:Lcom/android/settings/notification/NotificationsSubSettings;

    # invokes: Lcom/android/settings/notification/NotificationsSubSettings;->startRingtoneSetting()V
    invoke-static {v0}, Lcom/android/settings/notification/NotificationsSubSettings;->access$700(Lcom/android/settings/notification/NotificationsSubSettings;)V

    .line 542
    const/4 v0, 0x1

    return v0
.end method
