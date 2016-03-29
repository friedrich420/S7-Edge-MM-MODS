.class Lcom/sec/android/cover/sviewcover/SViewCoverView$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "SViewCoverView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverView;->updateViewVisibleState()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$500(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V

    .line 280
    return-void
.end method
