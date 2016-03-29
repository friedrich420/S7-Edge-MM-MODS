.class public abstract Lcom/sec/android/cover/CoverMainFrameView;
.super Landroid/widget/FrameLayout;
.source "CoverMainFrameView.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field protected static mDelayedShowingSequence:I


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/sec/android/cover/CoverMainFrameView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/CoverMainFrameView;->TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/cover/CoverMainFrameView;->mDelayedShowingSequence:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mAlarmManager:Landroid/app/AlarmManager;

    .line 32
    iget-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mAlarmManager:Landroid/app/AlarmManager;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mAlarmManager:Landroid/app/AlarmManager;

    .line 37
    iget-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mAlarmManager:Landroid/app/AlarmManager;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mAlarmManager:Landroid/app/AlarmManager;

    .line 42
    iget-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/sec/android/cover/CoverMainFrameView;->mAlarmManager:Landroid/app/AlarmManager;

    .line 43
    return-void
.end method


# virtual methods
.method protected cancelScreenOffTimer()V
    .locals 1

    .prologue
    .line 75
    sget v0, Lcom/sec/android/cover/CoverMainFrameView;->mDelayedShowingSequence:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/sec/android/cover/CoverMainFrameView;->mDelayedShowingSequence:I

    .line 76
    return-void
.end method

.method public onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 0
    .param p1, "state"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    .line 46
    return-void
.end method

.method public onStatusBarStateChanged(I)V
    .locals 0
    .param p1, "statusBarState"    # I

    .prologue
    .line 49
    return-void
.end method

.method public setCoverUiAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 54
    return-void
.end method

.method protected startScreenOffTimer()V
    .locals 9

    .prologue
    .line 58
    const-wide/16 v0, 0x7530

    .line 59
    .local v0, "delayTimeout":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    add-long v4, v6, v0

    .line 61
    .local v4, "when":J
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.samsung.cover.DELAYED_TIMEOUT"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v2, "intent":Landroid/content/Intent;
    const-string v6, "seq"

    sget v7, Lcom/sec/android/cover/CoverMainFrameView;->mDelayedShowingSequence:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    iget-object v6, p0, Lcom/sec/android/cover/CoverMainFrameView;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/high16 v8, 0x10000000

    invoke-static {v6, v7, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 65
    .local v3, "sender":Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/sec/android/cover/CoverMainFrameView;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v6, :cond_0

    .line 66
    iget-object v6, p0, Lcom/sec/android/cover/CoverMainFrameView;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v7, 0x2

    invoke-virtual {v6, v7, v4, v5, v3}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 69
    :cond_0
    sget-object v6, Lcom/sec/android/cover/CoverMainFrameView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setting alarm to turn off cover, seq = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/android/cover/CoverMainFrameView;->mDelayedShowingSequence:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", delay = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method
