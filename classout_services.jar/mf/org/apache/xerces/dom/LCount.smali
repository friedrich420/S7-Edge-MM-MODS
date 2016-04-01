.class Lmf/org/apache/xerces/dom/LCount;
.super Ljava/lang/Object;
.source "LCount.java"


# static fields
.field static lCounts:Ljava/util/Hashtable;


# instance fields
.field public bubbles:I

.field public captures:I

.field public defaults:I

.field public total:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, lCounts:Ljava/util/Hashtable;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput v0, p0, captures:I

    iput v0, p0, bubbles:I

    iput v0, p0, total:I

    .line 43
    return-void
.end method

.method static lookup(Ljava/lang/String;)Lmf/org/apache/xerces/dom/LCount;
    .registers 3
    .param p0, "evtName"    # Ljava/lang/String;

    .prologue
    .line 50
    sget-object v1, lCounts:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/LCount;

    .line 51
    .local v0, "lc":Lmf/org/apache/xerces/dom/LCount;
    if-nez v0, :cond_14

    .line 52
    sget-object v1, lCounts:Ljava/util/Hashtable;

    new-instance v0, Lmf/org/apache/xerces/dom/LCount;

    .end local v0    # "lc":Lmf/org/apache/xerces/dom/LCount;
    invoke-direct {v0}, <init>()V

    .restart local v0    # "lc":Lmf/org/apache/xerces/dom/LCount;
    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_14
    return-object v0
.end method
