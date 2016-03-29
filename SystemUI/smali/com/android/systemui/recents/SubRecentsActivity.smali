.class public Lcom/android/systemui/recents/SubRecentsActivity;
.super Lcom/android/systemui/recents/RecentsActivity;
.source "SubRecentsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/systemui/recents/RecentsActivity;-><init>()V

    .line 25
    const-string v0, "Recents_SubRecentsActivity"

    iput-object v0, p0, Lcom/android/systemui/recents/SubRecentsActivity;->TAG:Ljava/lang/String;

    .line 26
    return-void
.end method
