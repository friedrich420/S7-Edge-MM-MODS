.class Lcom/android/settings/accounts/ManageAccountsSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "ManageAccountsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/ManageAccountsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/ManageAccountsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/ManageAccountsSettings;)V
    .locals 0

    .prologue
    .line 776
    iput-object p1, p0, Lcom/android/settings/accounts/ManageAccountsSettings$3;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings$3;->this$0:Lcom/android/settings/accounts/ManageAccountsSettings;

    # invokes: Lcom/android/settings/accounts/ManageAccountsSettings;->showAccountsIfNeeded()V
    invoke-static {v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->access$100(Lcom/android/settings/accounts/ManageAccountsSettings;)V

    .line 780
    return-void
.end method
