.class Lcom/android/settings/DevelopmentSettings$4;
.super Landroid/content/BroadcastReceiver;
.source "DevelopmentSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DevelopmentSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DevelopmentSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DevelopmentSettings;)V
    .locals 0

    .prologue
    .line 2206
    iput-object p1, p0, Lcom/android/settings/DevelopmentSettings$4;->this$0:Lcom/android/settings/DevelopmentSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2209
    iget-object v0, p0, Lcom/android/settings/DevelopmentSettings$4;->this$0:Lcom/android/settings/DevelopmentSettings;

    # invokes: Lcom/android/settings/DevelopmentSettings;->updateUsbConfigurationValues()V
    invoke-static {v0}, Lcom/android/settings/DevelopmentSettings;->access$300(Lcom/android/settings/DevelopmentSettings;)V

    .line 2210
    return-void
.end method
