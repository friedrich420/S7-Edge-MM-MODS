.class Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter$1;
.super Ljava/lang/Object;
.source "CoverMissedEventManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter$1;->this$1:Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)I
    .locals 4
    .param p1, "first"    # Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;
    .param p2, "second"    # Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;

    .prologue
    .line 172
    iget-wide v0, p1, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;->mWhen:J

    iget-wide v2, p2, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;->mWhen:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 173
    const/4 v0, 0x0

    .line 174
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p1, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;->mWhen:J

    iget-wide v2, p2, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;->mWhen:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 169
    check-cast p1, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/cover/manager/CoverMissedEventManager$NotiMissedEventsAdapter$1;->compare(Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;Lcom/sec/android/cover/manager/CoverMissedEventManager$MissedEventItem;)I

    move-result v0

    return v0
.end method
