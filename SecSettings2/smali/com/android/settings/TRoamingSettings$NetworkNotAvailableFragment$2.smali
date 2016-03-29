.class Lcom/android/settings/TRoamingSettings$NetworkNotAvailableFragment$2;
.super Ljava/lang/Object;
.source "TRoamingSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TRoamingSettings$NetworkNotAvailableFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TRoamingSettings$NetworkNotAvailableFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/TRoamingSettings$NetworkNotAvailableFragment;)V
    .locals 0

    .prologue
    .line 790
    iput-object p1, p0, Lcom/android/settings/TRoamingSettings$NetworkNotAvailableFragment$2;->this$0:Lcom/android/settings/TRoamingSettings$NetworkNotAvailableFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 793
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 794
    .local v0, "callIntent":Landroid/content/Intent;
    const-string v2, "tel:+82263439000"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 796
    :try_start_0
    # getter for: Lcom/android/settings/TRoamingSettings;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/settings/TRoamingSettings;->access$1100()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 800
    :goto_0
    iget-object v2, p0, Lcom/android/settings/TRoamingSettings$NetworkNotAvailableFragment$2;->this$0:Lcom/android/settings/TRoamingSettings$NetworkNotAvailableFragment;

    invoke-virtual {v2}, Lcom/android/settings/TRoamingSettings$NetworkNotAvailableFragment;->dismiss()V

    .line 801
    return-void

    .line 797
    :catch_0
    move-exception v1

    .line 798
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
