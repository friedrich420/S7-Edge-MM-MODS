.class Lcom/android/settings/motion/MotionSettings2015$2;
.super Landroid/database/ContentObserver;
.source "MotionSettings2015.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/motion/MotionSettings2015;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/MotionSettings2015;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/MotionSettings2015;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings/motion/MotionSettings2015$2;->this$0:Lcom/android/settings/motion/MotionSettings2015;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015$2;->this$0:Lcom/android/settings/motion/MotionSettings2015;

    # getter for: Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings/motion/MotionSettings2015;->access$000(Lcom/android/settings/motion/MotionSettings2015;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015$2;->this$0:Lcom/android/settings/motion/MotionSettings2015;

    # invokes: Lcom/android/settings/motion/MotionSettings2015;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/motion/MotionSettings2015;->access$200(Lcom/android/settings/motion/MotionSettings2015;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "access_control_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 85
    .local v0, "onInteractionConrol":I
    if-ne v0, v4, :cond_1

    .line 86
    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015$2;->this$0:Lcom/android/settings/motion/MotionSettings2015;

    # getter for: Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings/motion/MotionSettings2015;->access$000(Lcom/android/settings/motion/MotionSettings2015;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 87
    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015$2;->this$0:Lcom/android/settings/motion/MotionSettings2015;

    # getter for: Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings/motion/MotionSettings2015;->access$000(Lcom/android/settings/motion/MotionSettings2015;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 92
    .end local v0    # "onInteractionConrol":I
    :cond_0
    :goto_0
    return-void

    .line 89
    .restart local v0    # "onInteractionConrol":I
    :cond_1
    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015$2;->this$0:Lcom/android/settings/motion/MotionSettings2015;

    # getter for: Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings/motion/MotionSettings2015;->access$000(Lcom/android/settings/motion/MotionSettings2015;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0
.end method
