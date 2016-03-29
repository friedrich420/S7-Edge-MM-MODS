.class Lcom/android/systemui/recents/Recents$AnimationStartedListener;
.super Ljava/lang/Object;
.source "Recents.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/Recents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimationStartedListener"
.end annotation


# instance fields
.field mDisplayId:I

.field private mNumOfStartedAnimation:I

.field mStartAnimationTriggered:Z

.field final synthetic this$0:Lcom/android/systemui/recents/Recents;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/Recents;I)V
    .locals 1
    .param p2, "displayId"    # I

    .prologue
    .line 1658
    iput-object p1, p0, Lcom/android/systemui/recents/Recents$AnimationStartedListener;->this$0:Lcom/android/systemui/recents/Recents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1656
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recents/Recents$AnimationStartedListener;->mNumOfStartedAnimation:I

    .line 1659
    iput p2, p0, Lcom/android/systemui/recents/Recents$AnimationStartedListener;->mDisplayId:I

    .line 1660
    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/recents/Recents$AnimationStartedListener;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recents/Recents$AnimationStartedListener;
    .param p1, "x1"    # I

    .prologue
    .line 1652
    iput p1, p0, Lcom/android/systemui/recents/Recents$AnimationStartedListener;->mNumOfStartedAnimation:I

    return p1
.end method


# virtual methods
.method public onAnimationStarted()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 1665
    iget-boolean v0, p0, Lcom/android/systemui/recents/Recents$AnimationStartedListener;->mStartAnimationTriggered:Z

    if-nez v0, :cond_0

    .line 1670
    iget v0, p0, Lcom/android/systemui/recents/Recents$AnimationStartedListener;->mNumOfStartedAnimation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/recents/Recents$AnimationStartedListener;->mNumOfStartedAnimation:I

    .line 1671
    new-instance v4, Lcom/android/systemui/recents/Recents$AnimationStartedListener$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/recents/Recents$AnimationStartedListener$1;-><init>(Lcom/android/systemui/recents/Recents$AnimationStartedListener;)V

    .line 1693
    .local v4, "fallbackReceiver":Landroid/content/BroadcastReceiver;
    iget v0, p0, Lcom/android/systemui/recents/Recents$AnimationStartedListener;->mNumOfStartedAnimation:I

    const/16 v2, 0x78

    if-le v0, v2, :cond_1

    .line 1694
    iput v6, p0, Lcom/android/systemui/recents/Recents$AnimationStartedListener;->mNumOfStartedAnimation:I

    .line 1707
    .end local v4    # "fallbackReceiver":Landroid/content/BroadcastReceiver;
    :cond_0
    :goto_0
    return-void

    .line 1699
    .restart local v4    # "fallbackReceiver":Landroid/content/BroadcastReceiver;
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recents/Recents$AnimationStartedListener;->this$0:Lcom/android/systemui/recents/Recents;

    iget-object v2, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/android/systemui/recents/Recents$AnimationStartedListener;->mDisplayId:I

    if-nez v0, :cond_2

    const-string v0, "action_start_enter_animation"

    :goto_1
    invoke-static {v2, v0}, Lcom/android/systemui/recents/Recents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1703
    .local v1, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/systemui/recents/Recents$AnimationStartedListener;->this$0:Lcom/android/systemui/recents/Recents;

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1699
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    const-string v0, "action_start_enter_animation_sub_recents"

    goto :goto_1
.end method
