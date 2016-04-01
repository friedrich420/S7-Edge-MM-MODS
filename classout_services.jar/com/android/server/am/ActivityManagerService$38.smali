.class Lcom/android/server/am/ActivityManagerService$38;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
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
        "Lcom/android/server/am/BroadcastFilter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .prologue
    .line 28736
    iput-object p1, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/BroadcastFilter;Lcom/android/server/am/BroadcastFilter;)I
    .registers 6
    .param p1, "app1"    # Lcom/android/server/am/BroadcastFilter;
    .param p2, "app2"    # Lcom/android/server/am/BroadcastFilter;

    .prologue
    .line 28740
    invoke-virtual {p2}, Lcom/android/server/am/BroadcastFilter;->getPackageWeight()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/am/BroadcastFilter;->getPackageWeight()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    .line 28741
    .local v0, "returnValue":I
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 28736
    check-cast p1, Lcom/android/server/am/BroadcastFilter;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/am/BroadcastFilter;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, compare(Lcom/android/server/am/BroadcastFilter;Lcom/android/server/am/BroadcastFilter;)I

    move-result v0

    return v0
.end method
