.class Lcom/android/settings/motion/MotionSettings2015$1;
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
    .line 72
    iput-object p1, p0, Lcom/android/settings/motion/MotionSettings2015$1;->this$0:Lcom/android/settings/motion/MotionSettings2015;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 75
    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015$1;->this$0:Lcom/android/settings/motion/MotionSettings2015;

    # getter for: Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings/motion/MotionSettings2015;->access$000(Lcom/android/settings/motion/MotionSettings2015;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 76
    iget-object v1, p0, Lcom/android/settings/motion/MotionSettings2015$1;->this$0:Lcom/android/settings/motion/MotionSettings2015;

    # getter for: Lcom/android/settings/motion/MotionSettings2015;->mPalmSwipeSwitch:Landroid/preference/SwitchPreference;
    invoke-static {v1}, Lcom/android/settings/motion/MotionSettings2015;->access$000(Lcom/android/settings/motion/MotionSettings2015;)Landroid/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings2015$1;->this$0:Lcom/android/settings/motion/MotionSettings2015;

    # invokes: Lcom/android/settings/motion/MotionSettings2015;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/motion/MotionSettings2015;->access$100(Lcom/android/settings/motion/MotionSettings2015;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "surface_palm_swipe"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 77
    :cond_1
    return-void
.end method
