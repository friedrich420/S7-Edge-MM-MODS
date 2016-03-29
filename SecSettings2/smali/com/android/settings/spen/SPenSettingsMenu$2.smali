.class Lcom/android/settings/spen/SPenSettingsMenu$2;
.super Ljava/lang/Object;
.source "SPenSettingsMenu.java"

# interfaces
.implements Lcom/android/settings/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/spen/SPenSettingsMenu;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/spen/SPenSettingsMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/spen/SPenSettingsMenu;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/settings/spen/SPenSettingsMenu$2;->this$0:Lcom/android/settings/spen/SPenSettingsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 3
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 197
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 198
    .local v0, "val":I
    iget-object v1, p0, Lcom/android/settings/spen/SPenSettingsMenu$2;->this$0:Lcom/android/settings/spen/SPenSettingsMenu;

    # invokes: Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/spen/SPenSettingsMenu;->access$300(Lcom/android/settings/spen/SPenSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_detachment_option"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 200
    const/4 v1, 0x1

    return v1
.end method
