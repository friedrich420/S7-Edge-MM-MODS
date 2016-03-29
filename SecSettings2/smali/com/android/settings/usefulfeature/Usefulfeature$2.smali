.class Lcom/android/settings/usefulfeature/Usefulfeature$2;
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
    .line 144
    iput-object p1, p0, Lcom/android/settings/usefulfeature/Usefulfeature$2;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 147
    iget-object v1, p0, Lcom/android/settings/usefulfeature/Usefulfeature$2;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    # invokes: Lcom/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$200(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_enabled"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 148
    .local v0, "onInteractionConrol":I
    iget-object v1, p0, Lcom/android/settings/usefulfeature/Usefulfeature$2;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    # getter for: Lcom/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$000(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 149
    if-ne v0, v3, :cond_4

    .line 150
    iget-object v1, p0, Lcom/android/settings/usefulfeature/Usefulfeature$2;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    # getter for: Lcom/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$000(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 155
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/usefulfeature/Usefulfeature$2;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    # getter for: Lcom/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$300(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 156
    if-ne v0, v3, :cond_5

    .line 157
    iget-object v1, p0, Lcom/android/settings/usefulfeature/Usefulfeature$2;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    # getter for: Lcom/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$300(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 162
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/settings/usefulfeature/Usefulfeature$2;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    # getter for: Lcom/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$400(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 163
    if-ne v0, v3, :cond_6

    .line 164
    iget-object v1, p0, Lcom/android/settings/usefulfeature/Usefulfeature$2;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    # getter for: Lcom/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$400(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 169
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/settings/usefulfeature/Usefulfeature$2;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    # getter for: Lcom/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$500(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 170
    if-ne v0, v3, :cond_7

    .line 171
    iget-object v1, p0, Lcom/android/settings/usefulfeature/Usefulfeature$2;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    # getter for: Lcom/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$500(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 176
    :cond_3
    :goto_3
    return-void

    .line 152
    :cond_4
    iget-object v1, p0, Lcom/android/settings/usefulfeature/Usefulfeature$2;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    # getter for: Lcom/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$000(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 159
    :cond_5
    iget-object v1, p0, Lcom/android/settings/usefulfeature/Usefulfeature$2;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    # getter for: Lcom/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$300(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 166
    :cond_6
    iget-object v1, p0, Lcom/android/settings/usefulfeature/Usefulfeature$2;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    # getter for: Lcom/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$400(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 173
    :cond_7
    iget-object v1, p0, Lcom/android/settings/usefulfeature/Usefulfeature$2;->this$0:Lcom/android/settings/usefulfeature/Usefulfeature;

    # getter for: Lcom/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/settings/usefulfeature/Usefulfeature;->access$500(Lcom/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3
.end method
