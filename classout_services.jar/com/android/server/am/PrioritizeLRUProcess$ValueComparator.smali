.class Lcom/android/server/am/PrioritizeLRUProcess$ValueComparator;
.super Ljava/lang/Object;
.source "PrioritizeLRUProcess.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PrioritizeLRUProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ValueComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field base:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "base":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, base:Ljava/util/Map;

    .line 130
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 124
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/String;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v0, p0, base:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;

    iget v1, v0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->launchCount:I

    iget-object v0, p0, base:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;

    iget v0, v0, Lcom/android/server/am/PrioritizeLRUProcess$LRUStats;->launchCount:I

    if-lt v1, v0, :cond_18

    .line 135
    const/4 v0, 0x1

    .line 137
    :goto_17
    return v0

    :cond_18
    const/4 v0, -0x1

    goto :goto_17
.end method
