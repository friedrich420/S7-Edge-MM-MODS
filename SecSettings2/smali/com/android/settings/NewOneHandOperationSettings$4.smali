.class Lcom/android/settings/NewOneHandOperationSettings$4;
.super Ljava/lang/Object;
.source "NewOneHandOperationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NewOneHandOperationSettings;->reduceSizeDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NewOneHandOperationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/NewOneHandOperationSettings;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/settings/NewOneHandOperationSettings$4;->this$0:Lcom/android/settings/NewOneHandOperationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 360
    iget-object v0, p0, Lcom/android/settings/NewOneHandOperationSettings$4;->this$0:Lcom/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "any_screen_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 361
    iget-object v0, p0, Lcom/android/settings/NewOneHandOperationSettings$4;->this$0:Lcom/android/settings/NewOneHandOperationSettings;

    # getter for: Lcom/android/settings/NewOneHandOperationSettings;->mReduceScreenSize:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/NewOneHandOperationSettings;->access$100(Lcom/android/settings/NewOneHandOperationSettings;)Landroid/preference/SwitchPreference;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings/NewOneHandOperationSettings$4;->this$0:Lcom/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "any_screen_enabled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 362
    iget-object v0, p0, Lcom/android/settings/NewOneHandOperationSettings$4;->this$0:Lcom/android/settings/NewOneHandOperationSettings;

    # invokes: Lcom/android/settings/NewOneHandOperationSettings;->reduceSizeBroadcast(I)V
    invoke-static {v0, v1}, Lcom/android/settings/NewOneHandOperationSettings;->access$200(Lcom/android/settings/NewOneHandOperationSettings;I)V

    .line 363
    return-void

    :cond_0
    move v0, v1

    .line 361
    goto :goto_0
.end method
