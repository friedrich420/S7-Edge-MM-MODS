.class Lcom/android/settings/safetycare/SafetyCareSettings$4;
.super Landroid/database/ContentObserver;
.source "SafetyCareSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/safetycare/SafetyCareSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/safetycare/SafetyCareSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/safetycare/SafetyCareSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/settings/safetycare/SafetyCareSettings$4;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareSettings$4;->this$0:Lcom/android/settings/safetycare/SafetyCareSettings;

    # invokes: Lcom/android/settings/safetycare/SafetyCareSettings;->appLockSummaryUpdate()V
    invoke-static {v0}, Lcom/android/settings/safetycare/SafetyCareSettings;->access$300(Lcom/android/settings/safetycare/SafetyCareSettings;)V

    .line 156
    return-void
.end method
