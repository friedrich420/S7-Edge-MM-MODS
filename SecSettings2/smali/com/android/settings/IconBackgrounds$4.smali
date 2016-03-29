.class Lcom/android/settings/IconBackgrounds$4;
.super Ljava/lang/Object;
.source "IconBackgrounds.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/IconBackgrounds;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/IconBackgrounds;


# direct methods
.method constructor <init>(Lcom/android/settings/IconBackgrounds;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/settings/IconBackgrounds$4;->this$0:Lcom/android/settings/IconBackgrounds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 160
    iget-object v4, p0, Lcom/android/settings/IconBackgrounds$4;->this$0:Lcom/android/settings/IconBackgrounds;

    # getter for: Lcom/android/settings/IconBackgrounds;->mIconBackgroundsRadio:Landroid/widget/RadioButton;
    invoke-static {v4}, Lcom/android/settings/IconBackgrounds;->access$000(Lcom/android/settings/IconBackgrounds;)Landroid/widget/RadioButton;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 161
    .local v1, "isChanged":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 162
    iget-object v4, p0, Lcom/android/settings/IconBackgrounds$4;->this$0:Lcom/android/settings/IconBackgrounds;

    invoke-virtual {v4}, Lcom/android/settings/IconBackgrounds;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tap_to_icon"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    :goto_1
    iget-object v2, p0, Lcom/android/settings/IconBackgrounds$4;->this$0:Lcom/android/settings/IconBackgrounds;

    # getter for: Lcom/android/settings/IconBackgrounds;->isIconBackgrounds:Z
    invoke-static {v2}, Lcom/android/settings/IconBackgrounds;->access$300(Lcom/android/settings/IconBackgrounds;)Z

    move-result v2

    if-eq v1, v2, :cond_2

    .line 166
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.settings.ICON_BACKGROUNDS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v0, "i":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/IconBackgrounds$4;->this$0:Lcom/android/settings/IconBackgrounds;

    invoke-virtual {v2, v0}, Lcom/android/settings/IconBackgrounds;->sendBroadcast(Landroid/content/Intent;)V

    .line 168
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 173
    .end local v0    # "i":Landroid/content/Intent;
    :goto_2
    return-void

    .end local v1    # "isChanged":Z
    :cond_0
    move v1, v3

    .line 160
    goto :goto_0

    .line 164
    .restart local v1    # "isChanged":Z
    :cond_1
    iget-object v2, p0, Lcom/android/settings/IconBackgrounds$4;->this$0:Lcom/android/settings/IconBackgrounds;

    invoke-virtual {v2}, Lcom/android/settings/IconBackgrounds;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "tap_to_icon"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 170
    :cond_2
    iget-object v2, p0, Lcom/android/settings/IconBackgrounds$4;->this$0:Lcom/android/settings/IconBackgrounds;

    invoke-virtual {v2}, Lcom/android/settings/IconBackgrounds;->finish()V

    goto :goto_2
.end method
