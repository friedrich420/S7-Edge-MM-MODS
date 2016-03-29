.class Lcom/android/settings/motion/MotionSettings2015$6;
.super Ljava/lang/Object;
.source "MotionSettings2015.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/motion/MotionSettings2015;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/motion/MotionSettings2015;


# direct methods
.method constructor <init>(Lcom/android/settings/motion/MotionSettings2015;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/settings/motion/MotionSettings2015$6;->this$0:Lcom/android/settings/motion/MotionSettings2015;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings2015$6;->this$0:Lcom/android/settings/motion/MotionSettings2015;

    invoke-virtual {v0}, Lcom/android/settings/motion/MotionSettings2015;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 383
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings2015$6;->this$0:Lcom/android/settings/motion/MotionSettings2015;

    # invokes: Lcom/android/settings/motion/MotionSettings2015;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/motion/MotionSettings2015;->access$400(Lcom/android/settings/motion/MotionSettings2015;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "surface_palm_swipe"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 384
    return-void
.end method
