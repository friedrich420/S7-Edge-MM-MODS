.class Lcom/android/settings/usefulfeature/Usefulfeature$1;
.super Landroid/database/ContentObserver;
.source "Usefulfeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/usefulfeature/Usefulfeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/usefulfeature/Usefulfeature;


# direct methods
.method constructor <init>(Lcom/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/settings/usefulfeature/Usefulfeature$1;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/settings/usefulfeature/Usefulfeature$1;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    # getter for: Lcom/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$000(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/settings/usefulfeature/Usefulfeature$1;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    # getter for: Lcom/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$000(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/usefulfeature/Usefulfeature$1;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    # invokes: Lcom/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$100(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "surface_palm_swipe"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0e0e92

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 140
    :cond_0
    return-void

    .line 139
    :cond_1
    const v0, 0x7f0e0e93

    goto :goto_0
.end method
