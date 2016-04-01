.class Lcom/android/server/am/ActivityManagerService$40;
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


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .prologue
    .line 28756
    iput-object p1, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 28760
    instance-of v2, p1, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_14

    .line 28761
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .end local p1    # "o1":Ljava/lang/Object;
    iget v0, p1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 28765
    .local v0, "q1":I
    :goto_8
    instance-of v2, p2, Landroid/content/pm/ResolveInfo;

    if-eqz v2, :cond_1b

    .line 28766
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2    # "o2":Ljava/lang/Object;
    iget v1, p2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 28770
    .local v1, "q2":I
    :goto_10
    if-le v0, v1, :cond_22

    const/4 v2, -0x1

    :goto_13
    return v2

    .line 28763
    .end local v0    # "q1":I
    .end local v1    # "q2":I
    .restart local p1    # "o1":Ljava/lang/Object;
    .restart local p2    # "o2":Ljava/lang/Object;
    :cond_14
    check-cast p1, Landroid/content/IntentFilter;

    .end local p1    # "o1":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/content/IntentFilter;->getPriority()I

    move-result v0

    .restart local v0    # "q1":I
    goto :goto_8

    .line 28768
    :cond_1b
    check-cast p2, Landroid/content/IntentFilter;

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-virtual {p2}, Landroid/content/IntentFilter;->getPriority()I

    move-result v1

    .restart local v1    # "q2":I
    goto :goto_10

    .line 28770
    :cond_22
    if-ge v0, v1, :cond_26

    const/4 v2, 0x1

    goto :goto_13

    :cond_26
    const/4 v2, 0x0

    goto :goto_13
.end method
