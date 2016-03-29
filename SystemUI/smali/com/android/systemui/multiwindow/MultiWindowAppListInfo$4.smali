.class Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$4;
.super Ljava/lang/Object;
.source "MultiWindowAppListInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;->updateAppListOrder()V
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
        "Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$4;->this$0:Lcom/android/systemui/multiwindow/MultiWindowAppListInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;)I
    .locals 5
    .param p1, "o1"    # Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;
    .param p2, "o2"    # Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    .prologue
    .line 324
    invoke-virtual {p1}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 325
    .local v0, "t1":Ljava/lang/CharSequence;
    invoke-virtual {p2}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    .line 326
    .local v1, "t2":Ljava/lang/CharSequence;
    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 322
    check-cast p1, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$4;->compare(Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;Lcom/android/systemui/multiwindow/MultiWindowAppListInfo$LaunchItem;)I

    move-result v0

    return v0
.end method
