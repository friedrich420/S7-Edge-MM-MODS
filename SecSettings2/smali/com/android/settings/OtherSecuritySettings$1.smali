.class Lcom/android/settings/OtherSecuritySettings$1;
.super Landroid/content/BroadcastReceiver;
.source "OtherSecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/OtherSecuritySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OtherSecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/OtherSecuritySettings;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/settings/OtherSecuritySettings$1;->this$0:Lcom/android/settings/OtherSecuritySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/settings/OtherSecuritySettings$1;->this$0:Lcom/android/settings/OtherSecuritySettings;

    # invokes: Lcom/android/settings/OtherSecuritySettings;->updateSIMLockEnable()V
    invoke-static {v0}, Lcom/android/settings/OtherSecuritySettings;->access$000(Lcom/android/settings/OtherSecuritySettings;)V

    .line 202
    return-void
.end method
