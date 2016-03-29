.class Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment$2;
.super Ljava/lang/Object;
.source "ManagedServiceSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;

.field final synthetic val$cn:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment$2;->this$1:Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;

    iput-object p2, p0, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment$2;->val$cn:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment$2;->this$1:Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;

    iget-object v0, v0, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->this$0:Lcom/android/settings/notification/ManagedServiceSettings;

    # getter for: Lcom/android/settings/notification/ManagedServiceSettings;->mServiceListing:Lcom/android/settings/notification/ServiceListing;
    invoke-static {v0}, Lcom/android/settings/notification/ManagedServiceSettings;->access$300(Lcom/android/settings/notification/ManagedServiceSettings;)Lcom/android/settings/notification/ServiceListing;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment$2;->val$cn:Landroid/content/ComponentName;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/ServiceListing;->setEnabled(Landroid/content/ComponentName;Z)V

    .line 192
    return-void
.end method
