.class Lcom/android/settings/ApnSettings$9;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnSettings;)V
    .locals 0

    .prologue
    .line 747
    iput-object p1, p0, Lcom/android/settings/ApnSettings$9;->this$0:Lcom/android/settings/ApnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 749
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "5"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 750
    .local v1, "url":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.settings.cpa.CpaAdvancedSettings"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 751
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "new"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 752
    iget-object v2, p0, Lcom/android/settings/ApnSettings$9;->this$0:Lcom/android/settings/ApnSettings;

    # getter for: Lcom/android/settings/ApnSettings;->mCpaAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/settings/ApnSettings;->access$800(Lcom/android/settings/ApnSettings;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 753
    iget-object v2, p0, Lcom/android/settings/ApnSettings$9;->this$0:Lcom/android/settings/ApnSettings;

    # getter for: Lcom/android/settings/ApnSettings;->mCpaAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/settings/ApnSettings;->access$800(Lcom/android/settings/ApnSettings;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 755
    :cond_0
    iget-object v2, p0, Lcom/android/settings/ApnSettings$9;->this$0:Lcom/android/settings/ApnSettings;

    const/16 v3, 0x7e

    invoke-virtual {v2, v0, v3}, Lcom/android/settings/ApnSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 756
    return-void
.end method
